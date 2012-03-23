// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceWizardCommand.java

package org.eclipse.epp.internal.mpc.ui.commands;

import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import org.eclipse.core.commands.*;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.internal.mpc.core.ServiceLocator;
import org.eclipse.epp.internal.mpc.core.service.*;
import org.eclipse.epp.internal.mpc.ui.CatalogRegistry;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCatalog;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCategory;
import org.eclipse.epp.internal.mpc.ui.wizards.*;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.discovery.DiscoveryCore;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogCategory;
import org.eclipse.equinox.internal.p2.discovery.model.Tag;
import org.eclipse.equinox.internal.p2.ui.discovery.util.WorkbenchUtil;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.CatalogFilter;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.progress.IProgressService;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.commands:
//            Messages

public class MarketplaceWizardCommand extends AbstractHandler
    implements IHandler
{

    public MarketplaceWizardCommand()
    {
    }

    public Object execute(ExecutionEvent event)
        throws ExecutionException
    {
        final MarketplaceCatalog catalog = new MarketplaceCatalog();
        catalog.setEnvironment(DiscoveryCore.createEnvironment());
        catalog.setVerifyUpdateSiteAvailability(false);
        MarketplaceCatalogConfiguration configuration = new MarketplaceCatalogConfiguration();
        configuration.setVerifyUpdateSiteAvailability(false);
        if(catalogDescriptors == null || catalogDescriptors.isEmpty())
        {
            installRemoteCatalogs();
            configuration.getCatalogDescriptors().addAll(CatalogRegistry.getInstance().getCatalogDescriptors());
        } else
        {
            configuration.getCatalogDescriptors().addAll(catalogDescriptors);
        }
        if(selectedCatalogDescriptor != null)
            if(selectedCatalogDescriptor.getLabel().equals("org.eclipse.epp.mpc.descriptorHint"))
            {
                CatalogDescriptor resolvedDescriptor = CatalogRegistry.getInstance().findCatalogDescriptor(selectedCatalogDescriptor.getUrl().toExternalForm());
                if(resolvedDescriptor == null)
                {
                    org.eclipse.core.runtime.IStatus status = new Status(4, "org.eclipse.epp.mpc.ui", Messages.MarketplaceWizardCommand_CouldNotFindMarketplaceForSolution, new ExecutionException(selectedCatalogDescriptor.getUrl().toExternalForm()));
                    StatusManager.getManager().handle(status, 7);
                    return null;
                }
                configuration.setCatalogDescriptor(resolvedDescriptor);
            } else
            {
                configuration.setCatalogDescriptor(selectedCatalogDescriptor);
            }
        configuration.getFilters().clear();
        ComboTagFilter marketFilter = new ComboTagFilter() {

            public void catalogUpdated(boolean wasCancelled)
            {
                List choices = new ArrayList();
                for(Iterator iterator1 = catalog.getCategories().iterator(); iterator1.hasNext();)
                {
                    CatalogCategory category = (CatalogCategory)iterator1.next();
                    if(category instanceof MarketplaceCategory)
                    {
                        MarketplaceCategory marketplaceCategory = (MarketplaceCategory)category;
                        Tag marketTag;
                        for(Iterator iterator2 = marketplaceCategory.getMarkets().iterator(); iterator2.hasNext(); choices.add(marketTag))
                        {
                            Market market = (Market)iterator2.next();
                            marketTag = new Tag(org/eclipse/epp/internal/mpc/core/service/Market, market.getId(), market.getName());
                            marketTag.setData(market);
                        }

                    }
                }

                setChoices(choices);
            }

            final MarketplaceWizardCommand this$0;
            private final MarketplaceCatalog val$catalog;

            
            {
                this$0 = MarketplaceWizardCommand.this;
                catalog = marketplacecatalog;
                super();
            }
        }
;
        marketFilter.setSelectAllOnNoSelection(true);
        marketFilter.setNoSelectionLabel(Messages.MarketplaceWizardCommand_allMarkets);
        marketFilter.setTagClassification(org/eclipse/epp/internal/mpc/core/service/Category);
        marketFilter.setChoices(new ArrayList());
        ComboTagFilter marketCategoryTagFilter = new ComboTagFilter() {

            public void catalogUpdated(boolean wasCancelled)
            {
                Set newChoices = new HashSet();
                List choices = new ArrayList();
                for(Iterator iterator1 = catalog.getCategories().iterator(); iterator1.hasNext();)
                {
                    CatalogCategory category = (CatalogCategory)iterator1.next();
                    if(category instanceof MarketplaceCategory)
                    {
                        MarketplaceCategory marketplaceCategory = (MarketplaceCategory)category;
                        for(Iterator iterator2 = marketplaceCategory.getMarkets().iterator(); iterator2.hasNext();)
                        {
                            Market market = (Market)iterator2.next();
                            for(Iterator iterator3 = market.getCategory().iterator(); iterator3.hasNext();)
                            {
                                Category marketCategory = (Category)iterator3.next();
                                Tag categoryTag = new Tag(org/eclipse/epp/internal/mpc/core/service/Category, marketCategory.getId(), marketCategory.getName());
                                categoryTag.setData(marketCategory);
                                if(newChoices.add(categoryTag))
                                    choices.add(categoryTag);
                            }

                        }

                    }
                }

                setChoices(choices);
            }

            final MarketplaceWizardCommand this$0;
            private final MarketplaceCatalog val$catalog;

            
            {
                this$0 = MarketplaceWizardCommand.this;
                catalog = marketplacecatalog;
                super();
            }
        }
;
        marketCategoryTagFilter.setSelectAllOnNoSelection(true);
        marketCategoryTagFilter.setNoSelectionLabel(Messages.MarketplaceWizardCommand_allCategories);
        marketCategoryTagFilter.setTagClassification(org/eclipse/epp/internal/mpc/core/service/Category);
        marketCategoryTagFilter.setChoices(new ArrayList());
        configuration.getFilters().add(marketFilter);
        configuration.getFilters().add(marketCategoryTagFilter);
        configuration.setInitialState(wizardState);
        if(operationByNodeId != null && !operationByNodeId.isEmpty())
            configuration.setInitialOperationByNodeId(operationByNodeId);
        CatalogFilter filter;
        for(Iterator iterator = configuration.getFilters().iterator(); iterator.hasNext(); ((MarketplaceFilter)filter).setCatalog(catalog))
            filter = (CatalogFilter)iterator.next();

        MarketplaceWizard wizard = new MarketplaceWizard(catalog, configuration);
        wizard.setWindowTitle(Messages.MarketplaceWizardCommand_eclipseMarketplace);
        WizardDialog dialog = new WizardDialog(WorkbenchUtil.getShell(), wizard);
        dialog.open();
        return null;
    }

    public void setCatalogDescriptors(List catalogDescriptors)
    {
        this.catalogDescriptors = catalogDescriptors;
    }

    public void setSelectedCatalogDescriptor(CatalogDescriptor selectedCatalogDescriptor)
    {
        this.selectedCatalogDescriptor = selectedCatalogDescriptor;
    }

    public void setWizardState(String wizardState)
    {
        this.wizardState = wizardState;
    }

    public void setOperationByNodeId(Map operationByNodeId)
    {
        this.operationByNodeId = operationByNodeId;
    }

    private void installRemoteCatalogs()
    {
        try
        {
            final AtomicReference result = new AtomicReference();
            PlatformUI.getWorkbench().getProgressService().busyCursorWhile(new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InvocationTargetException, InterruptedException
                {
                    try
                    {
                        CatalogService catalogService = ServiceLocator.getInstance().getCatalogService();
                        List catalogs = catalogService.listCatalogs(monitor);
                        result.set(catalogs);
                    }
                    catch(CoreException e)
                    {
                        throw new InvocationTargetException(e);
                    }
                }

                final MarketplaceWizardCommand this$0;
                private final AtomicReference val$result;

            
            {
                this$0 = MarketplaceWizardCommand.this;
                result = atomicreference;
                super();
            }
            }
);
            List catalogs = (List)result.get();
            Catalog catalog;
            CatalogDescriptor descriptor;
            for(Iterator iterator = catalogs.iterator(); iterator.hasNext(); CatalogRegistry.getInstance().addCatalogBranding(descriptor, catalog.getBranding()))
            {
                catalog = (Catalog)iterator.next();
                descriptor = new CatalogDescriptor();
                descriptor.setLabel(catalog.getName());
                descriptor.setUrl(new URL(catalog.getUrl()));
                descriptor.setIcon(ImageDescriptor.createFromURL(new URL(catalog.getImageUrl())));
                descriptor.setDescription(catalog.getDescription());
                descriptor.setInstallFromAllRepositories(!catalog.isSelfContained());
                if(catalog.getDependencyRepository() != null)
                    descriptor.setDependenciesRepository(new URL(catalog.getDependencyRepository()));
                registerOrOverrideCatalog(descriptor);
            }

        }
        catch(InterruptedException _ex)
        {
            return;
        }
        catch(Exception e)
        {
            org.eclipse.core.runtime.IStatus status = MarketplaceClientUi.computeStatus(new InvocationTargetException(e), Messages.MarketplaceWizardCommand_CannotInstallRemoteLocations);
            StatusManager.getManager().handle(status, 1);
        }
    }

    private void registerOrOverrideCatalog(CatalogDescriptor descriptor)
    {
        CatalogRegistry catalogRegistry = CatalogRegistry.getInstance();
        List descriptors = catalogRegistry.getCatalogDescriptors();
        for(Iterator iterator = descriptors.iterator(); iterator.hasNext();)
        {
            CatalogDescriptor catalogDescriptor = (CatalogDescriptor)iterator.next();
            if(catalogDescriptor.getUrl().toExternalForm().equals(descriptor.getUrl().toExternalForm()))
                catalogRegistry.unregister(catalogDescriptor);
        }

        catalogRegistry.register(descriptor);
    }

    private List catalogDescriptors;
    private CatalogDescriptor selectedCatalogDescriptor;
    private String wizardState;
    private Map operationByNodeId;
}

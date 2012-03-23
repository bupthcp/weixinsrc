// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceWizard.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.*;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUiPlugin;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCatalog;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceDiscoveryStrategy;
import org.eclipse.epp.internal.mpc.ui.operations.*;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.discovery.AbstractDiscoveryStrategy;
import org.eclipse.equinox.internal.p2.discovery.Catalog;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.ui.discovery.util.WorkbenchUtil;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.*;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.operations.*;
import org.eclipse.equinox.p2.ui.AcceptLicensesWizardPage;
import org.eclipse.equinox.p2.ui.ProvisioningUI;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.internal.browser.WorkbenchBrowserSupport;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            FeatureSelectionWizardPage, IMarketplaceWebBrowser, InstallProfile, MarketplaceBrowserIntegration, 
//            MarketplaceCatalogConfiguration, MarketplacePage, Messages, Operation, 
//            ProvisioningJobListener, SelectionModel, SelectionModelStateSerializer

public class MarketplaceWizard extends DiscoveryWizard
    implements InstallProfile, IMarketplaceWebBrowser
{

    public MarketplaceWizard(MarketplaceCatalog catalog, MarketplaceCatalogConfiguration configuration)
    {
        super(catalog, configuration);
        setWindowTitle(Messages.MarketplaceWizard_eclipseSolutionCatalogs);
        createSelectionModel();
    }

    private void createSelectionModel()
    {
        selectionModel = new SelectionModel(this) {

            public void selectionChanged()
            {
                super.selectionChanged();
                profileChangeOperation = null;
            }

            final MarketplaceWizard this$0;

            
            {
                this$0 = MarketplaceWizard.this;
                super($anonymous0);
            }
        }
;
    }

    public MarketplaceCatalogConfiguration getConfiguration()
    {
        return (MarketplaceCatalogConfiguration)super.getConfiguration();
    }

    public MarketplaceCatalog getCatalog()
    {
        return (MarketplaceCatalog)super.getCatalog();
    }

    protected MarketplacePage doCreateCatalogPage()
    {
        return new MarketplacePage(getCatalog(), getConfiguration());
    }

    public ProfileChangeOperation getProfileChangeOperation()
    {
        return profileChangeOperation;
    }

    public void setProfileChangeOperation(ProfileChangeOperation profileChangeOperation)
    {
        this.profileChangeOperation = profileChangeOperation;
    }

    void initializeInitialSelection()
        throws CoreException
    {
        if(!wantInitializeInitialSelection())
            throw new IllegalStateException();
        initialSelectionInitialized = true;
        initializeCatalog();
        try
        {
            getContainer().run(true, true, new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InvocationTargetException, InterruptedException
                {
                    (new SelectionModelStateSerializer(getCatalog(), getSelectionModel())).deserialize(monitor, getConfiguration().getInitialState(), getConfiguration().getInitialOperationByNodeId());
                }

                final MarketplaceWizard this$0;

            
            {
                this$0 = MarketplaceWizard.this;
                super();
            }
            }
);
        }
        catch(InvocationTargetException e)
        {
            throw new CoreException(MarketplaceClientUi.computeStatus(e, Messages.MarketplaceViewer_unexpectedException));
        }
        catch(InterruptedException _ex)
        {
            throw new CoreException(Status.CANCEL_STATUS);
        }
        for(Iterator iterator = getSelectionModel().getItemToOperation().entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(entry.getValue() != Operation.NONE)
                ((CatalogItem)entry.getKey()).setSelected(true);
        }

    }

    boolean wantInitializeInitialSelection()
    {
        return !initialSelectionInitialized && (getConfiguration().getInitialState() != null || getConfiguration().getInitialOperationByNodeId() != null);
    }

    public boolean canFinish()
    {
        if(computeMustCheckLicenseAcceptance())
        {
            if(acceptLicensesPage == null && getContainer().getCurrentPage() == getFeatureSelectionWizardPage())
                getNextPage(getFeatureSelectionWizardPage(), false);
            if(acceptLicensesPage == null || !acceptLicensesPage.isPageComplete())
                return false;
        }
        if(profileChangeOperation != null)
        {
            IStatus resolutionResult = profileChangeOperation.getResolutionResult();
            switch(resolutionResult.getSeverity())
            {
            case 0: // '\0'
            case 1: // '\001'
            case 2: // '\002'
                return true;
            }
        }
        return false;
    }

    public IWizardPage getNextPage(IWizardPage page)
    {
        return getNextPage(page, true);
    }

    IWizardPage getNextPage(IWizardPage page, boolean computeChanges)
    {
        if(page == featureSelectionWizardPage)
        {
            if(profileChangeOperation == null)
            {
                if(computeChanges)
                {
                    updateProfileChangeOperation();
                    if(profileChangeOperation != null)
                        getContainer().updateButtons();
                }
                if(profileChangeOperation == null || !profileChangeOperation.getResolutionResult().isOK())
                    return featureSelectionWizardPage;
                if(profileChangeOperation instanceof UninstallOperation)
                    return featureSelectionWizardPage;
            }
            if(computeMustCheckLicenseAcceptance())
            {
                if(acceptLicensesPage == null)
                {
                    acceptLicensesPage = new AcceptLicensesWizardPage(ProvisioningUI.getDefaultUI().getLicenseManager(), operationIUs, profileChangeOperation);
                    addPage(acceptLicensesPage);
                } else
                {
                    acceptLicensesPage.update(operationIUs, profileChangeOperation);
                }
                if(acceptLicensesPage.hasLicensesToAccept())
                    return acceptLicensesPage;
            }
            return null;
        } else
        {
            return super.getNextPage(page);
        }
    }

    public boolean computeMustCheckLicenseAcceptance()
    {
        return profileChangeOperation != null && !(profileChangeOperation instanceof UninstallOperation);
    }

    public void addPages()
    {
        doDefaultCatalogSelection();
        super.addPages();
        featureSelectionWizardPage = new FeatureSelectionWizardPage();
        addPage(featureSelectionWizardPage);
    }

    FeatureSelectionWizardPage getFeatureSelectionWizardPage()
    {
        return featureSelectionWizardPage;
    }

    public IWizardPage getStartingPage()
    {
        if(getConfiguration().getCatalogDescriptor() != null)
        {
            if(wantInitializeInitialSelection())
                return getFeatureSelectionWizardPage();
            else
                return getCatalogPage();
        } else
        {
            return super.getStartingPage();
        }
    }

    private void doDefaultCatalogSelection()
    {
        if(getConfiguration().getCatalogDescriptor() == null)
        {
            String defaultCatalogUrl = MarketplaceClientUiPlugin.getInstance().getPreferenceStore().getString(PREF_DEFAULT_CATALOG);
            if(defaultCatalogUrl != null && defaultCatalogUrl.length() > 0)
            {
                Iterator iterator = getConfiguration().getCatalogDescriptors().iterator();
                while(iterator.hasNext()) 
                {
                    CatalogDescriptor descriptor = (CatalogDescriptor)iterator.next();
                    URL url = descriptor.getUrl();
                    try
                    {
                        if(!url.toURI().toString().equals(defaultCatalogUrl))
                            continue;
                        getConfiguration().setCatalogDescriptor(descriptor);
                        break;
                    }
                    catch(URISyntaxException _ex) { }
                }
            }
            if(getConfiguration().getCatalogDescriptor() == null && getConfiguration().getCatalogDescriptors().size() > 0)
                getConfiguration().setCatalogDescriptor((CatalogDescriptor)getConfiguration().getCatalogDescriptors().get(0));
        }
    }

    public void dispose()
    {
        removeAddedRepositoryLocations();
        if(getConfiguration().getCatalogDescriptor() != null)
            try
            {
                MarketplaceClientUiPlugin.getInstance().getPreferenceStore().setValue(PREF_DEFAULT_CATALOG, getConfiguration().getCatalogDescriptor().getUrl().toURI().toString());
            }
            catch(URISyntaxException _ex) { }
        if(getCatalog() != null)
            getCatalog().dispose();
        super.dispose();
    }

    public boolean performFinish()
    {
        if(profileChangeOperation != null && profileChangeOperation.getResolutionResult().getSeverity() != 4)
        {
            if(computeMustCheckLicenseAcceptance() && acceptLicensesPage != null && acceptLicensesPage.isPageComplete())
                acceptLicensesPage.performFinish();
            ProvisioningJob provisioningJob = profileChangeOperation.getProvisioningJob(null);
            if(!operationNewInstallItems.isEmpty())
                provisioningJob.addJobChangeListener(new ProvisioningJobListener(operationNewInstallItems));
            ProvisioningUI.getDefaultUI().schedule(provisioningJob, 3);
            addedRepositoryLocations = null;
            return true;
        } else
        {
            return false;
        }
    }

    public MarketplacePage getCatalogPage()
    {
        return (MarketplacePage)super.getCatalogPage();
    }

    public synchronized Set getInstalledFeatures()
    {
        if(installedFeatures == null)
            try
            {
                if(Display.getCurrent() != null)
                    getContainer().run(true, false, new IRunnableWithProgress() {

                        public void run(IProgressMonitor monitor)
                            throws InvocationTargetException, InterruptedException
                        {
                            installedFeatures = MarketplaceClientUi.computeInstalledFeatures(monitor);
                        }

                        final MarketplaceWizard this$0;

            
            {
                this$0 = MarketplaceWizard.this;
                super();
            }
                    }
);
                else
                    installedFeatures = MarketplaceClientUi.computeInstalledFeatures(new NullProgressMonitor());
            }
            catch(InvocationTargetException e)
            {
                MarketplaceClientUi.error(e.getCause());
                installedFeatures = Collections.emptySet();
            }
            catch(InterruptedException e)
            {
                throw new IllegalStateException(e);
            }
        return installedFeatures;
    }

    public SelectionModel getSelectionModel()
    {
        return selectionModel;
    }

    public void openUrl(String url)
    {
        CatalogDescriptor catalogDescriptor = getConfiguration().getCatalogDescriptor();
        URL catalogUrl = catalogDescriptor.getUrl();
        URI catalogUri;
        try
        {
            catalogUri = catalogUrl.toURI();
        }
        catch(URISyntaxException e)
        {
            throw new IllegalStateException(e);
        }
        if(WorkbenchBrowserSupport.getInstance().isInternalWebBrowserAvailable() && url.toLowerCase().startsWith(catalogUri.toString().toLowerCase()))
        {
            int style = 38;
            String browserId = (new StringBuilder("MPC-")).append(catalogUri.toString().replaceAll("[^a-zA-Z0-9_-]", "_")).toString();
            try
            {
                IWebBrowser browser = WorkbenchBrowserSupport.getInstance().createBrowser(style, browserId, catalogDescriptor.getLabel(), catalogDescriptor.getDescription());
                String originalUrl = url;
                if(url.indexOf('?') == -1)
                    url = (new StringBuilder(String.valueOf(url))).append('?').toString();
                else
                    url = (new StringBuilder(String.valueOf(url))).append('&').toString();
                String state = (new SelectionModelStateSerializer(getCatalog(), getSelectionModel())).serialize();
                url = (new StringBuilder(String.valueOf(url))).append("mpc=true&mpc_state=").append(URLEncoder.encode(state, "UTF-8")).toString();
                browser.openURL(new URL(url));
                getContainer().getShell().close();
                if(!hookLocationListener(browser))
                    browser.openURL(new URL(originalUrl));
            }
            catch(PartInitException e)
            {
                StatusManager.getManager().handle(e.getStatus(), 7);
            }
            catch(MalformedURLException e)
            {
                IStatus status = new Status(4, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.MarketplaceWizard_cannotOpenUrl, new Object[] {
                    url, e.getMessage()
                }), e);
                StatusManager.getManager().handle(status, 7);
            }
            catch(UnsupportedEncodingException e)
            {
                throw new IllegalStateException(e);
            }
        } else
        {
            WorkbenchUtil.openUrl(url, 128);
        }
    }

    private boolean hookLocationListener(IWebBrowser webBrowser)
    {
        Field partField = findField(webBrowser.getClass(), "part", org/eclipse/ui/IWorkbenchPart);
        if(partField == null)
            break MISSING_BLOCK_LABEL_188;
        partField.setAccessible(true);
        IWorkbenchPart part = (IWorkbenchPart)partField.get(webBrowser);
        if(part == null)
            break MISSING_BLOCK_LABEL_188;
        Field browserViewerField = findField(part.getClass(), "webBrowser", null);
        if(browserViewerField == null)
            break MISSING_BLOCK_LABEL_188;
        browserViewerField.setAccessible(true);
        Object browserViewer = browserViewerField.get(part);
        if(browserViewer == null)
            break MISSING_BLOCK_LABEL_188;
        Field browserField = findField(browserViewer.getClass(), "browser", org/eclipse/swt/browser/Browser);
        if(browserField == null)
            break MISSING_BLOCK_LABEL_188;
        browserField.setAccessible(true);
        Browser browser = (Browser)browserField.get(browserViewer);
        if(browser == null)
            break MISSING_BLOCK_LABEL_188;
        if(browser.getData(org/eclipse/epp/internal/mpc/ui/wizards/MarketplaceBrowserIntegration.getName()) == null)
        {
            if(browserListener == null)
                browserListener = new MarketplaceBrowserIntegration();
            browser.setData(org/eclipse/epp/internal/mpc/ui/wizards/MarketplaceBrowserIntegration.getName(), browserListener);
            browser.addLocationListener(browserListener);
            browser.addOpenWindowListener(browserListener);
        }
        return true;
        JVM INSTR pop ;
        return false;
    }

    private Field findField(Class clazz, String fieldName, Class fieldClass)
    {
        for(; clazz != java/lang/Object; clazz = clazz.getSuperclass())
        {
            Field afield[];
            int j = (afield = clazz.getDeclaredFields()).length;
            for(int i = 0; i < j; i++)
            {
                Field field = afield[i];
                if(field.getName().equals(fieldName) && (fieldClass == null || fieldClass.isAssignableFrom(field.getType())))
                    return field;
            }

        }

        return null;
    }

    public void updateProfileChangeOperation()
    {
        ProfileChangeOperationComputer provisioningOperation;
        removeAddedRepositoryLocations();
        addedRepositoryLocations = null;
        profileChangeOperation = null;
        operationIUs = null;
        if(!getSelectionModel().computeProvisioningOperationViable())
            break MISSING_BLOCK_LABEL_558;
        provisioningOperation = null;
        try
        {
            Map itemToOperation = getSelectionModel().getItemToOperation();
            Set selectedItems = getSelectionModel().getSelectedCatalogItems();
            org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType operationType = null;
            for(Iterator iterator = itemToOperation.entrySet().iterator(); iterator.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if(selectedItems.contains(entry.getKey()))
                {
                    org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType entryOperationType = ((Operation)entry.getValue()).getOperationType();
                    if(entryOperationType != null && (operationType == null || operationType == org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.UPDATE))
                    {
                        operationType = entryOperationType;
                        if(operationType == org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.UPDATE)
                        {
                            for(Iterator iterator1 = getSelectionModel().getSelectedFeatureDescriptors().iterator(); iterator1.hasNext();)
                            {
                                FeatureDescriptor descriptor = (FeatureDescriptor)iterator1.next();
                                if(!getInstalledFeatures().contains(descriptor.getId()))
                                    operationType = org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.INSTALL;
                            }

                        }
                    }
                }
            }

            URI dependenciesRepository = null;
            if(getConfiguration().getCatalogDescriptor().getDependenciesRepository() != null)
                try
                {
                    dependenciesRepository = getConfiguration().getCatalogDescriptor().getDependenciesRepository().toURI();
                }
                catch(URISyntaxException e)
                {
                    throw new InvocationTargetException(e);
                }
            provisioningOperation = new ProfileChangeOperationComputer(operationType, selectedItems, getSelectionModel().getSelectedFeatureDescriptors(), dependenciesRepository, getConfiguration().getCatalogDescriptor().isInstallFromAllRepositories() ? org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.ResolutionStrategy.FALLBACK_STRATEGY : org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.ResolutionStrategy.SELECTED_REPOSITORIES);
            getContainer().run(true, true, provisioningOperation);
            profileChangeOperation = provisioningOperation.getOperation();
            operationIUs = provisioningOperation.getIus();
            addedRepositoryLocations = provisioningOperation.getAddedRepositoryLocations();
            operationNewInstallItems = computeNewInstallCatalogItems();
            IStatus result = profileChangeOperation.getResolutionResult();
            if(result != null && operationIUs != null && operationIUs.length > 0 && operationType == org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.INSTALL)
                switch(result.getSeverity())
                {
                case 4: // '\004'
                    Job job = new Job(Messages.MarketplaceWizard_errorNotificationJob, result, itemToOperation) {

                        protected IStatus run(IProgressMonitor monitor)
                        {
                            getCatalog().installErrorReport(monitor, r, items, ius, details);
                            return monitor.isCanceled() ? Status.CANCEL_STATUS : Status.OK_STATUS;
                        }

                        IStatus r;
                        Set items;
                        IInstallableUnit ius[];
                        String details;
                        final MarketplaceWizard this$0;

            
            {
                this$0 = MarketplaceWizard.this;
                super($anonymous0);
                r = istatus;
                items = new HashSet(map.keySet());
                ius = operationIUs;
                details = profileChangeOperation.getResolutionDetails();
                setSystem(false);
                setUser(false);
                setPriority(30);
            }
                    }
;
                    job.schedule();
                    break;
                }
            break MISSING_BLOCK_LABEL_546;
        }
        catch(InvocationTargetException e)
        {
            Throwable cause = e.getCause();
            IStatus status;
            if(cause instanceof CoreException)
                status = ((CoreException)cause).getStatus();
            else
                status = new Status(4, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.MarketplaceWizard_problemsPerformingProvisioningOperation, new Object[] {
                    cause.getMessage()
                }), cause);
            StatusManager.getManager().handle(status, 7);
        }
        catch(InterruptedException _ex)
        {
            if(provisioningOperation != null)
                addedRepositoryLocations = provisioningOperation.getAddedRepositoryLocations();
            break MISSING_BLOCK_LABEL_558;
        }
        if(provisioningOperation != null)
            addedRepositoryLocations = provisioningOperation.getAddedRepositoryLocations();
        break MISSING_BLOCK_LABEL_558;
        Exception exception;
        exception;
        if(provisioningOperation != null)
            addedRepositoryLocations = provisioningOperation.getAddedRepositoryLocations();
        throw exception;
        if(provisioningOperation != null)
            addedRepositoryLocations = provisioningOperation.getAddedRepositoryLocations();
        if(getContainer().getCurrentPage() == featureSelectionWizardPage)
            featureSelectionWizardPage.updateMessage();
        return;
    }

    private void removeAddedRepositoryLocations()
    {
        AbstractProvisioningOperation.removeRepositoryLocations(addedRepositoryLocations);
        addedRepositoryLocations = null;
    }

    private Set computeNewInstallCatalogItems()
    {
        Set items = new HashSet();
        Map iusByCatalogItem = new HashMap();
        for(Iterator iterator = getSelectionModel().getCatalogItemEntries().iterator(); iterator.hasNext();)
        {
            SelectionModel.CatalogItemEntry entry = (SelectionModel.CatalogItemEntry)iterator.next();
            if(entry.getOperation() == Operation.INSTALL)
            {
                List features = entry.getChildren();
                Collection featureIds = new ArrayList(features.size());
                SelectionModel.FeatureEntry feature;
                for(Iterator iterator1 = features.iterator(); iterator1.hasNext(); featureIds.add(feature.getFeatureDescriptor().getId()))
                    feature = (SelectionModel.FeatureEntry)iterator1.next();

                iusByCatalogItem.put(entry.getItem(), featureIds);
            }
        }

        IInstallableUnit aiinstallableunit[];
        int j = (aiinstallableunit = operationIUs).length;
        for(int i = 0; i < j; i++)
        {
            IInstallableUnit unit = aiinstallableunit[i];
            for(Iterator iterator2 = iusByCatalogItem.entrySet().iterator(); iterator2.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator2.next();
                if(((Collection)entry.getValue()).contains(unit.getId()))
                    items.add((CatalogItem)entry.getKey());
            }

        }

        return items;
    }

    void initializeCatalog()
    {
        AbstractDiscoveryStrategy strategy;
        for(Iterator iterator = getCatalog().getDiscoveryStrategies().iterator(); iterator.hasNext(); strategy.dispose())
            strategy = (AbstractDiscoveryStrategy)iterator.next();

        getCatalog().getDiscoveryStrategies().clear();
        if(getConfiguration().getCatalogDescriptor() != null)
            getCatalog().getDiscoveryStrategies().add(new MarketplaceDiscoveryStrategy(getConfiguration().getCatalogDescriptor()));
    }

    public volatile CatalogPage getCatalogPage()
    {
        return getCatalogPage();
    }

    public volatile CatalogConfiguration getConfiguration()
    {
        return getConfiguration();
    }

    protected volatile CatalogPage doCreateCatalogPage()
    {
        return doCreateCatalogPage();
    }

    public volatile Catalog getCatalog()
    {
        return getCatalog();
    }

    private static final String PREF_DEFAULT_CATALOG = org/eclipse/epp/mpc/ui/CatalogDescriptor.getSimpleName();
    private Set installedFeatures;
    private SelectionModel selectionModel;
    private MarketplaceBrowserIntegration browserListener;
    private ProfileChangeOperation profileChangeOperation;
    private FeatureSelectionWizardPage featureSelectionWizardPage;
    private AcceptLicensesWizardPage acceptLicensesPage;
    private IInstallableUnit operationIUs[];
    private Set operationNewInstallItems;
    private boolean initialSelectionInitialized;
    private Set addedRepositoryLocations;





}

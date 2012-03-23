// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplacePage.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.epp.internal.mpc.core.service.CatalogBranding;
import org.eclipse.epp.internal.mpc.ui.CatalogRegistry;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCatalog;
import org.eclipse.epp.internal.mpc.ui.util.Util;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.ui.discovery.DiscoveryImages;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.*;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            CatalogSwitcher, MarketplaceCatalogConfiguration, MarketplaceViewer, MarketplaceWizard, 
//            Messages, SelectionModel

public class MarketplacePage extends CatalogPage
{

    public MarketplacePage(MarketplaceCatalog catalog, MarketplaceCatalogConfiguration configuration)
    {
        super(catalog);
        this.configuration = configuration;
        setDescription(Messages.MarketplacePage_selectSolutionsToInstall);
        setTitle(Messages.MarketplacePage_eclipseMarketplaceSolutions);
        updateTitle();
    }

    private void updateTitle()
    {
        if(configuration.getCatalogDescriptor() != null)
            setTitle(configuration.getCatalogDescriptor().getLabel());
    }

    public void createControl(Composite originalParent)
    {
        Composite parent = originalParent;
        boolean needSwitchMarketplaceControl = configuration.getCatalogDescriptors().size() > 1;
        parent = new Composite(parent, 0);
        GridLayoutFactory.fillDefaults().numColumns(1).spacing(0, 5).applyTo(parent);
        tabFolder = new TabFolder(parent, 128);
        if(originalParent != parent)
            GridDataFactory.fillDefaults().align(4, 4).grab(true, true).applyTo(tabFolder);
        super.createControl(tabFolder);
        tabContent = getControl();
        createSearchTab();
        createRecentTab();
        createPopularTab();
        createInstalltedTab();
        tabFolder.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                if(disableTabSelection)
                    return;
                MarketplaceViewer.ContentType contentType;
                if(e.item == searchTabItem)
                    contentType = MarketplaceViewer.ContentType.SEARCH;
                else
                if(e.item == recentTabItem)
                    contentType = MarketplaceViewer.ContentType.RECENT;
                else
                if(e.item == popularTabItem)
                    contentType = MarketplaceViewer.ContentType.POPULAR;
                else
                if(e.item == installedTabItem)
                    contentType = MarketplaceViewer.ContentType.INSTALLED;
                else
                    throw new IllegalStateException();
                getViewer().setContentType(contentType);
            }

            public void widgetDefaultSelected(SelectionEvent e)
            {
                widgetSelected(e);
            }

            final MarketplacePage this$0;

            
            {
                this$0 = MarketplacePage.this;
                super();
            }
        }
);
        selectionLink = new Link(parent, 0);
        selectionLink.setToolTipText(Messages.MarketplacePage_showSelection);
        selectionLink.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                selectionLinkActivated();
            }

            public void widgetDefaultSelected(SelectionEvent e)
            {
                widgetSelected(e);
            }

            final MarketplacePage this$0;

            
            {
                this$0 = MarketplacePage.this;
                super();
            }
        }
);
        GridDataFactory.swtDefaults().align(0x1000000, 0x1000000).applyTo(selectionLink);
        computeSelectionLinkText();
        if(needSwitchMarketplaceControl)
            createMarketplaceSwitcher(parent);
        updateBranding();
        getViewer().addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                if(!isCurrentPage())
                    return;
                SelectionModel selectionModel = getWizard().getSelectionModel();
                int newSelectionSize = selectionModel.getItemToOperation().size();
                if(!event.getSelection().isEmpty() && previousSelectionSize == 0 && newSelectionSize == 1 && selectionModel.computeProvisioningOperationViable())
                {
                    IWizardPage currentPage = getContainer().getCurrentPage();
                    if(currentPage.isPageComplete())
                    {
                        IWizardPage nextPage = getWizard().getNextPage(MarketplacePage.this);
                        if(nextPage != null)
                            getContainer().showPage(nextPage);
                    }
                }
                previousSelectionSize = newSelectionSize;
            }

            private int previousSelectionSize;
            final MarketplacePage this$0;

            
            {
                this$0 = MarketplacePage.this;
                super();
                previousSelectionSize = 0;
            }
        }
);
        getViewer().addPropertyChangeListener(new IPropertyChangeListener() {

            public void propertyChange(PropertyChangeEvent event)
            {
                if(event.getProperty().equals(MarketplaceViewer.CONTENT_TYPE_PROPERTY) && event.getNewValue() == MarketplaceViewer.ContentType.SEARCH)
                    tabFolder.setSelection(searchTabItem);
            }

            final MarketplacePage this$0;

            
            {
                this$0 = MarketplacePage.this;
                super();
            }
        }
);
        setControl(((Control) (parent != originalParent ? ((Control) (parent)) : ((Control) (tabFolder)))));
        MarketplaceClientUi.setDefaultHelp(tabContent);
    }

    private void createInstalltedTab()
    {
        installedTabItem = new TabItem(tabFolder, 0);
        installedTabItem.setText(Messages.MarketplacePage_installed);
        installedTabItem.setControl(tabContent);
    }

    private void createPopularTab()
    {
        popularTabItem = new TabItem(tabFolder, 0);
        popularTabItem.setText(Messages.MarketplacePage_popular);
        popularTabItem.setControl(tabContent);
    }

    private void createRecentTab()
    {
        recentTabItem = new TabItem(tabFolder, 0);
        recentTabItem.setText(Messages.MarketplacePage_recent);
        recentTabItem.setControl(tabContent);
    }

    private void createSearchTab()
    {
        searchTabItem = new TabItem(tabFolder, 0);
        searchTabItem.setText(Messages.MarketplacePage_search);
        searchTabItem.setControl(tabContent);
    }

    private void createMarketplaceSwitcher(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new FillLayout());
        final CatalogSwitcher switcher = new CatalogSwitcher(composite, 2048, configuration);
        switcher.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                CatalogDescriptor descriptor = (CatalogDescriptor)((IStructuredSelection)event.getSelection()).getFirstElement();
                if(getWizard().getSelectionModel().getSelectedCatalogItems().size() > 0)
                {
                    boolean discardSelection = MessageDialog.openConfirm(getShell(), Messages.MarketplacePage_selectionSolutions, Messages.MarketplacePage_discardPendingSolutions);
                    if(discardSelection)
                    {
                        getWizard().getSelectionModel().clear();
                        computeSelectionLinkText();
                    } else
                    {
                        switcher.setSelection(new StructuredSelection(lastSelection));
                        return;
                    }
                }
                lastSelection = descriptor;
                configuration.setCatalogDescriptor(descriptor);
                getWizard().initializeCatalog();
                getViewer().updateCatalog();
                updateBranding();
            }

            final MarketplacePage this$0;
            private final CatalogSwitcher val$switcher;

            
            {
                this$0 = MarketplacePage.this;
                switcher = catalogswitcher;
                super();
            }
        }
);
        CatalogDescriptor selectedDescriptor = configuration.getCatalogDescriptor();
        if(selectedDescriptor != null)
            switcher.setSelection(new StructuredSelection(selectedDescriptor));
        GridDataFactory.fillDefaults().align(4, 4).grab(true, true).minSize(1, switcher.getPreferredHeight()).hint(500, switcher.getPreferredHeight()).applyTo(composite);
    }

    private void computeSelectionLinkText()
    {
        if(selectionLink != null)
        {
            String originalText = selectionLink.getText();
            String text = " ";
            int count = getWizard().getSelectionModel().getItemToOperation().size();
            if(count == 1)
                text = Messages.MarketplacePage_linkShowSelection_One;
            else
            if(count > 0)
                text = NLS.bind(Messages.MarketplacePage_linkShowSelection_Multiple, Integer.valueOf(count));
            if(text != originalText && (text == null || !text.equals(originalText)))
            {
                boolean exclude = text == null || text.trim().length() == 0;
                boolean originalExclude = ((GridData)selectionLink.getLayoutData()).exclude;
                selectionLink.setText(text);
                if(originalExclude != exclude)
                {
                    selectionLink.setVisible(!exclude);
                    ((GridData)selectionLink.getLayoutData()).exclude = exclude;
                    ((Composite)getControl()).layout(true, true);
                }
            }
        }
    }

    protected void selectionLinkActivated()
    {
        tabFolder.setSelection(searchTabItem);
        getViewer().showSelected();
    }

    public IWizardPage getPreviousPage()
    {
        return super.getPreviousPage();
    }

    public MarketplaceWizard getWizard()
    {
        return (MarketplaceWizard)super.getWizard();
    }

    protected MarketplaceViewer getViewer()
    {
        return (MarketplaceViewer)super.getViewer();
    }

    protected CatalogViewer doCreateViewer(Composite parent)
    {
        MarketplaceViewer viewer = new MarketplaceViewer(getCatalog(), this, getWizard());
        viewer.setMinimumHeight(480);
        viewer.createControl(parent);
        return viewer;
    }

    protected void doUpdateCatalog()
    {
        if(!updated)
        {
            updated = true;
            Display.getCurrent().asyncExec(new Runnable() {

                public void run()
                {
                    if(!getControl().isDisposed() && isCurrentPage())
                        getViewer().updateCatalog();
                }

                final MarketplacePage this$0;

            
            {
                this$0 = MarketplacePage.this;
                super();
            }
            }
);
        }
    }

    public void setVisible(boolean visible)
    {
        if(visible)
        {
            CatalogDescriptor catalogDescriptor = configuration.getCatalogDescriptor();
            if(catalogDescriptor != null)
                setTitle(catalogDescriptor.getLabel());
            if(previousCatalogDescriptor == null || !previousCatalogDescriptor.equals(catalogDescriptor))
            {
                previousCatalogDescriptor = catalogDescriptor;
                tabFolder.setSelection(searchTabItem);
                getViewer().setContentType(MarketplaceViewer.ContentType.SEARCH);
                getWizard().initializeCatalog();
                updated = false;
            }
        }
        super.setVisible(visible);
    }

    public void setPageComplete(boolean complete)
    {
        if(complete)
            complete = getWizard().getSelectionModel().computeProvisioningOperationViable();
        computeMessages();
        super.setPageComplete(complete);
    }

    private void computeMessages()
    {
        computeStatusMessage();
        computeSelectionLinkText();
    }

    private void computeStatusMessage()
    {
        String message = null;
        int messageType = 0;
        if(getWizard() != null)
        {
            IStatus viability = getWizard().getSelectionModel().computeProvisioningOperationViability();
            if(viability != null)
            {
                message = viability.getMessage();
                messageType = Util.computeMessageType(viability);
            }
        }
        setMessage(message, messageType);
    }

    public void performHelp()
    {
        getControl().notifyListeners(28, new Event());
    }

    private void updateBranding()
    {
        disableTabSelection = true;
        updateTitle();
        CatalogDescriptor descriptor = configuration.getCatalogDescriptor();
        CatalogBranding branding = CatalogRegistry.getInstance().getCatalogBranding(descriptor);
        if(branding == null)
            branding = getDefaultBranding();
        searchTabItem.dispose();
        recentTabItem.dispose();
        popularTabItem.dispose();
        installedTabItem.dispose();
        boolean hasSearchTab = branding.hasSearchTab();
        if(hasSearchTab)
        {
            createSearchTab();
            searchTabItem.setText(branding.getSearchTabName());
        }
        boolean hasRecentTab = branding.hasRecentTab();
        if(hasRecentTab)
        {
            createRecentTab();
            recentTabItem.setText(branding.getRecentTabName());
        }
        boolean hasPopularTab = branding.hasPopularTab();
        if(hasPopularTab)
        {
            createPopularTab();
            popularTabItem.setText(branding.getPopularTabName());
        }
        createInstalltedTab();
        tabFolder.setSelection(0);
        try
        {
            ImageDescriptor wizardIconDescriptor;
            if(branding.getWizardIcon() == null)
                wizardIconDescriptor = DiscoveryImages.BANNER_DISOVERY;
            else
                wizardIconDescriptor = ImageDescriptor.createFromURL(new URL(branding.getWizardIcon()));
            setImageDescriptor(wizardIconDescriptor);
        }
        catch(MalformedURLException e)
        {
            MarketplaceClientUi.error(e);
        }
        disableTabSelection = false;
    }

    private CatalogBranding getDefaultBranding()
    {
        CatalogBranding branding = new CatalogBranding();
        branding.setHasSearchTab(true);
        branding.setHasPopularTab(true);
        branding.setHasRecentTab(true);
        branding.setSearchTabName(Messages.MarketplacePage_search);
        branding.setPopularTabName(Messages.MarketplacePage_popular);
        branding.setRecentTabName(Messages.MarketplacePage_recent);
        branding.setWizardTitle(Messages.MarketplacePage_eclipseMarketplaceSolutions);
        return branding;
    }

    public volatile IWizard getWizard()
    {
        return getWizard();
    }

    public volatile DiscoveryWizard getWizard()
    {
        return getWizard();
    }

    protected volatile CatalogViewer getViewer()
    {
        return getViewer();
    }

    private final MarketplaceCatalogConfiguration configuration;
    private CatalogDescriptor previousCatalogDescriptor;
    private boolean updated;
    private Link selectionLink;
    private TabFolder tabFolder;
    private TabItem searchTabItem;
    private TabItem recentTabItem;
    private TabItem popularTabItem;
    private Control tabContent;
    private TabItem installedTabItem;
    protected boolean disableTabSelection;
    protected CatalogDescriptor lastSelection;










}

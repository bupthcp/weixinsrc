// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceViewer.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.internal.mpc.core.service.*;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCatalog;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCategory;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.discovery.Catalog;
import org.eclipse.equinox.internal.p2.discovery.model.*;
import org.eclipse.equinox.internal.p2.ui.discovery.util.*;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.*;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            AbstractTagFilter, BrowseCatalogItem, DiscoveryItem, MarketplaceCatalogConfiguration, 
//            MarketplaceFilter, MarketplacePatternFilter, MarketplaceViewerSorter, MarketplaceWizard, 
//            Messages, Operation, SelectionModel, IMarketplaceWebBrowser

public class MarketplaceViewer extends CatalogViewer
{
    static final class ContentType extends Enum
    {

        public static ContentType[] values()
        {
            ContentType acontenttype[];
            int i;
            ContentType acontenttype1[];
            System.arraycopy(acontenttype = ENUM$VALUES, 0, acontenttype1 = new ContentType[i = acontenttype.length], 0, i);
            return acontenttype1;
        }

        public static ContentType valueOf(String s)
        {
            return (ContentType)Enum.valueOf(org/eclipse/epp/internal/mpc/ui/wizards/MarketplaceViewer$ContentType, s);
        }

        public static final ContentType SEARCH;
        public static final ContentType RECENT;
        public static final ContentType POPULAR;
        public static final ContentType INSTALLED;
        public static final ContentType SELECTION;
        private static final ContentType ENUM$VALUES[];

        static 
        {
            SEARCH = new ContentType("SEARCH", 0);
            RECENT = new ContentType("RECENT", 1);
            POPULAR = new ContentType("POPULAR", 2);
            INSTALLED = new ContentType("INSTALLED", 3);
            SELECTION = new ContentType("SELECTION", 4);
            ENUM$VALUES = (new ContentType[] {
                SEARCH, RECENT, POPULAR, INSTALLED, SELECTION
            });
        }

        private ContentType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class MarketplaceCatalogContentProvider extends org.eclipse.equinox.internal.p2.ui.discovery.wizards.CatalogViewer.CatalogContentProvider
    {

        public Catalog getCatalog()
        {
            return super.getCatalog();
        }

        public Object[] getElements(Object inputElement)
        {
            if(getCatalog() != null)
            {
                List items = new ArrayList(getCatalog().getItems());
                for(Iterator iterator = getCatalog().getCategories().iterator(); iterator.hasNext();)
                {
                    CatalogCategory category = (CatalogCategory)iterator.next();
                    if(category instanceof MarketplaceCategory)
                    {
                        MarketplaceCategory marketplaceCategory = (MarketplaceCategory)category;
                        if(marketplaceCategory.getContents() == org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCategory.Contents.FEATURED)
                            items.add(0, category);
                    }
                }

                return items.toArray();
            } else
            {
                return NO_ELEMENTS;
            }
        }

        private static final Object NO_ELEMENTS[] = new Object[0];


        public MarketplaceCatalogContentProvider()
        {
        }
    }


    public MarketplaceViewer(Catalog catalog, IShellProvider shellProvider, MarketplaceWizard wizard)
    {
        super(catalog, shellProvider, wizard.getContainer(), wizard.getConfiguration());
        contentType = ContentType.SEARCH;
        browser = wizard;
        selectionModel = wizard.getSelectionModel();
        this.wizard = wizard;
        setAutomaticFind(false);
    }

    protected void doCreateHeaderControls(Composite parent)
    {
        int originalChildCount = parent.getChildren().length;
        for(Iterator iterator = getConfiguration().getFilters().iterator(); iterator.hasNext();)
        {
            CatalogFilter filter = (CatalogFilter)iterator.next();
            if(filter instanceof MarketplaceFilter)
            {
                MarketplaceFilter marketplaceFilter = (MarketplaceFilter)filter;
                marketplaceFilter.createControl(parent);
                marketplaceFilter.addPropertyChangeListener(new IPropertyChangeListener() {

                    public void propertyChange(PropertyChangeEvent event)
                    {
                        if("selected".equals(event.getProperty()))
                            doQuery();
                    }

                    final MarketplaceViewer this$0;

            
            {
                this$0 = MarketplaceViewer.this;
                super();
            }
                }
);
            }
        }

        Control children[] = parent.getChildren();
        for(int x = originalChildCount; x < children.length; x++)
        {
            Control child = children[x];
            GridDataFactory.swtDefaults().hint(135, -1).applyTo(child);
        }

        Button goButton = new Button(parent, 8);
        goButton.setText(Messages.MarketplaceViewer_go);
        goButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                doQuery();
            }

            final MarketplaceViewer this$0;

            
            {
                this$0 = MarketplaceViewer.this;
                super();
            }
        }
);
    }

    protected org.eclipse.equinox.internal.p2.ui.discovery.wizards.CatalogViewer.CatalogContentProvider doCreateContentProvider()
    {
        return new MarketplaceCatalogContentProvider();
    }

    protected void catalogUpdated(boolean wasCancelled, boolean wasError)
    {
        super.catalogUpdated(wasCancelled, wasError);
        for(Iterator iterator = getConfiguration().getFilters().iterator(); iterator.hasNext();)
        {
            CatalogFilter filter = (CatalogFilter)iterator.next();
            if(filter instanceof MarketplaceFilter)
                ((MarketplaceFilter)filter).catalogUpdated(wasCancelled);
        }

    }

    protected void filterTextChanged()
    {
        doFind(getFilterText());
    }

    protected void doFind(String text)
    {
        findText = text;
        doQuery();
    }

    protected ControlListItem doCreateViewerItem(Composite parent, Object element)
    {
        if(element instanceof CatalogItem)
        {
            CatalogItem catalogItem = (CatalogItem)element;
            if(catalogItem.getData() instanceof CatalogDescriptor)
            {
                CatalogDescriptor catalogDescriptor = (CatalogDescriptor)catalogItem.getData();
                return new BrowseCatalogItem(parent, getResources(), shellProvider, browser, (MarketplaceCategory)catalogItem.getCategory(), catalogDescriptor, this);
            } else
            {
                DiscoveryItem discoveryItem = new DiscoveryItem(parent, 0, getResources(), shellProvider, browser, catalogItem, this);
                discoveryItem.setSelected(getCheckedItems().contains(catalogItem));
                return discoveryItem;
            }
        }
        if(element instanceof MarketplaceCategory)
        {
            MarketplaceCategory category = (MarketplaceCategory)element;
            if(category.getContents() == org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCategory.Contents.FEATURED)
                category.setName(Messages.MarketplaceViewer_featured);
            else
                throw new IllegalStateException();
        }
        return super.doCreateViewerItem(parent, element);
    }

    private void doQuery()
    {
        queryMarket = null;
        queryCategory = null;
        queryText = null;
        findText = getFilterText();
        for(Iterator iterator = getConfiguration().getFilters().iterator(); iterator.hasNext();)
        {
            CatalogFilter filter = (CatalogFilter)iterator.next();
            if(filter instanceof AbstractTagFilter)
            {
                AbstractTagFilter tagFilter = (AbstractTagFilter)filter;
                if(tagFilter.getTagClassification() == org/eclipse/epp/internal/mpc/core/service/Category)
                {
                    Tag tag = tagFilter.getSelected().isEmpty() ? null : (Tag)tagFilter.getSelected().iterator().next();
                    if(tag != null)
                        if(tag.getTagClassifier() == org/eclipse/epp/internal/mpc/core/service/Market)
                            queryMarket = (Market)tag.getData();
                        else
                        if(tag.getTagClassifier() == org/eclipse/epp/internal/mpc/core/service/Category)
                            queryCategory = (Category)tag.getData();
                }
            }
        }

        queryText = findText;
        doQuery(queryMarket, queryCategory, queryText);
    }

    public void doQueryForTag(String tag)
    {
        ContentType newContentType = ContentType.SEARCH;
        ContentType oldContentType = contentType;
        contentType = newContentType;
        fireContentTypeChange(oldContentType, newContentType);
        setFindText(tag);
        doQuery(null, null, tag);
    }

    private void setFindText(String tag)
    {
        try
        {
            Field filterTextField = org/eclipse/equinox/internal/p2/ui/discovery/util/FilteredViewer.getDeclaredField("filterText");
            filterTextField.setAccessible(true);
            TextSearchControl textSearchControl = (TextSearchControl)filterTextField.get(this);
            textSearchControl.getTextControl().setText(tag);
        }
        catch(Exception e)
        {
            StatusManager.getManager().handle(new Status(2, "org.eclipse.epp.mpc.ui", Messages.MarketplaceViewer_Could_not_change_find_text, e));
        }
    }

    private void fireContentTypeChange(ContentType oldValue, ContentType newValue)
    {
        Object source = this;
        String property = CONTENT_TYPE_PROPERTY;
        firePropertyChangeEvent(new PropertyChangeEvent(source, property, oldValue, newValue));
    }

    private void doQuery(final Market market, final Category category, final String queryText)
    {
        try
        {
            final ContentType queryType = contentType;
            queryContentType = queryType;
            final IStatus result[] = new IStatus[1];
            context.run(true, true, new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InvocationTargetException, InterruptedException
                {
                    switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$MarketplaceViewer$ContentType()[queryType.ordinal()])
                    {
                    case 3: // '\003'
                        result[0] = getCatalog().popular(monitor);
                        break;

                    case 2: // '\002'
                        result[0] = getCatalog().recent(monitor);
                        break;

                    case 4: // '\004'
                        result[0] = getCatalog().installed(monitor);
                        break;

                    case 5: // '\005'
                        Set nodeIds = new HashSet();
                        CatalogItem item;
                        for(Iterator iterator = getSelectionModel().getItemToOperation().keySet().iterator(); iterator.hasNext(); nodeIds.add(((Node)item.getData()).getId()))
                            item = (CatalogItem)iterator.next();

                        result[0] = getCatalog().performQuery(monitor, nodeIds);
                        break;

                    case 1: // '\001'
                    default:
                        if(queryText == null || queryText.length() == 0)
                            result[0] = getCatalog().featured(monitor, market, category);
                        else
                            result[0] = getCatalog().performQuery(market, category, queryText, monitor);
                        break;
                    }
                    if(!monitor.isCanceled() && result[0] != null && result[0].getSeverity() != 8)
                        getCatalog().checkForUpdates(monitor);
                }

                static int[] $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$MarketplaceViewer$ContentType()
                {
                    $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$MarketplaceViewer$ContentType;
                    if($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$MarketplaceViewer$ContentType == null) goto _L2; else goto _L1
_L1:
                    return;
_L2:
                    JVM INSTR pop ;
                    int ai[] = new int[ContentType.values().length];
                    try
                    {
                        ai[ContentType.INSTALLED.ordinal()] = 4;
                    }
                    catch(NoSuchFieldError _ex) { }
                    try
                    {
                        ai[ContentType.POPULAR.ordinal()] = 3;
                    }
                    catch(NoSuchFieldError _ex) { }
                    try
                    {
                        ai[ContentType.RECENT.ordinal()] = 2;
                    }
                    catch(NoSuchFieldError _ex) { }
                    try
                    {
                        ai[ContentType.SEARCH.ordinal()] = 1;
                    }
                    catch(NoSuchFieldError _ex) { }
                    try
                    {
                        ai[ContentType.SELECTION.ordinal()] = 5;
                    }
                    catch(NoSuchFieldError _ex) { }
                    return $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$MarketplaceViewer$ContentType = ai;
                }

                final MarketplaceViewer this$0;
                private final ContentType val$queryType;
                private final IStatus val$result[];
                private final String val$queryText;
                private final Market val$market;
                private final Category val$category;
                private static int $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$MarketplaceViewer$ContentType[];

            
            {
                this$0 = MarketplaceViewer.this;
                queryType = contenttype;
                result = aistatus;
                queryText = s;
                market = market1;
                category = category1;
                super();
            }
            }
);
            if(result[0] != null && !result[0].isOK() && result[0].getSeverity() != 8)
                StatusManager.getManager().handle(result[0], 7);
            else
                verifyUpdateSiteAvailability();
        }
        catch(InvocationTargetException e)
        {
            IStatus status = computeStatus(e, Messages.MarketplaceViewer_unexpectedException);
            StatusManager.getManager().handle(status, 7);
        }
        catch(InterruptedException _ex) { }
        if(contentType == ContentType.INSTALLED)
            getViewer().setSorter(new MarketplaceViewerSorter());
        else
            getViewer().setSorter(null);
        super.doFind(queryText);
        getViewer().getControl().getParent().layout(true, true);
    }

    public void showSelected()
    {
        contentType = ContentType.SELECTION;
        queryMarket = null;
        queryCategory = null;
        queryText = null;
        findText = null;
        setHeaderVisible(true);
        doQuery(null, null, findText);
        contentType = ContentType.SEARCH;
    }

    public MarketplaceCatalogConfiguration getConfiguration()
    {
        return (MarketplaceCatalogConfiguration)super.getConfiguration();
    }

    public MarketplaceCatalog getCatalog()
    {
        return (MarketplaceCatalog)super.getCatalog();
    }

    public ContentType getContentType()
    {
        return contentType;
    }

    protected PatternFilter doCreateFilter()
    {
        return new MarketplacePatternFilter();
    }

    public void setContentType(ContentType contentType)
    {
        if(this.contentType != contentType)
        {
            ContentType oldContentType = this.contentType;
            this.contentType = contentType;
            fireContentTypeChange(oldContentType, contentType);
            setHeaderVisible(contentType == ContentType.SEARCH || contentType == ContentType.SELECTION);
            doQuery();
        }
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener)
    {
        listeners.add(listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener)
    {
        listeners.remove(listener);
    }

    private void firePropertyChangeEvent(PropertyChangeEvent event)
    {
        IPropertyChangeListener listener;
        for(Iterator iterator = listeners.iterator(); iterator.hasNext(); listener.propertyChange(event))
            listener = (IPropertyChangeListener)iterator.next();

    }

    public void setHeaderVisible(boolean visible)
    {
        if(visible != isHeaderVisible())
        {
            if(!visible)
            {
                filters = getViewer().getFilters();
                getViewer().resetFilters();
            } else
            if(filters != null)
            {
                getViewer().setFilters(filters);
                filters = null;
            }
            super.setHeaderVisible(visible);
        }
    }

    protected boolean doFilter(CatalogItem item)
    {
        return true;
    }

    protected StructuredViewer doCreateViewer(Composite container)
    {
        StructuredViewer viewer = super.doCreateViewer(container);
        viewer.setSorter(null);
        return viewer;
    }

    protected void modifySelection(CatalogItem connector, boolean selected)
    {
        throw new UnsupportedOperationException();
    }

    protected void modifySelection(CatalogItem connector, Operation operation)
    {
        if(operation == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            selectionModel.select(connector, operation);
            super.modifySelection(connector, operation != Operation.NONE);
            return;
        }
    }

    protected void postDiscovery()
    {
    }

    public void updateCatalog()
    {
        if(getWizard().wantInitializeInitialSelection())
            try
            {
                getWizard().initializeInitialSelection();
                catalogUpdated(false, false);
            }
            catch(CoreException e)
            {
                boolean wasCancelled = e.getStatus().getSeverity() == 8;
                if(!wasCancelled)
                    StatusManager.getManager().handle(e.getStatus(), 7);
                catalogUpdated(wasCancelled, !wasCancelled);
            }
        else
            super.updateCatalog();
        refresh();
    }

    private MarketplaceWizard getWizard()
    {
        return wizard;
    }

    public List getCheckedItems()
    {
        List items = new ArrayList();
        for(Iterator iterator = getSelectionModel().getItemToOperation().entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(entry.getValue() != Operation.NONE)
                items.add((CatalogItem)entry.getKey());
        }

        return items;
    }

    public IStructuredSelection getSelection()
    {
        return new StructuredSelection(getCheckedItems());
    }

    public SelectionModel getSelectionModel()
    {
        return selectionModel;
    }

    String getQueryText()
    {
        return queryText;
    }

    Category getQueryCategory()
    {
        return queryCategory;
    }

    Market getQueryMarket()
    {
        return queryMarket;
    }

    ContentType getQueryContentType()
    {
        return queryContentType;
    }

    protected Set getInstalledFeatures(IProgressMonitor monitor)
    {
        return MarketplaceClientUi.computeInstalledFeatures(monitor);
    }

    public volatile Catalog getCatalog()
    {
        return getCatalog();
    }

    public volatile CatalogConfiguration getConfiguration()
    {
        return getConfiguration();
    }

    private ViewerFilter filters[];
    private ContentType contentType;
    public static String CONTENT_TYPE_PROPERTY = "contentType";
    private final SelectionModel selectionModel;
    private String queryText;
    private Market queryMarket;
    private Category queryCategory;
    private ContentType queryContentType;
    private final IMarketplaceWebBrowser browser;
    private String findText;
    private final MarketplaceWizard wizard;
    private final List listeners = new LinkedList();


}

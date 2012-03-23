// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceDiscoveryStrategy.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.epp.internal.mpc.core.service.CachingMarketplaceService;
import org.eclipse.epp.internal.mpc.core.service.Categories;
import org.eclipse.epp.internal.mpc.core.service.Category;
import org.eclipse.epp.internal.mpc.core.service.DefaultMarketplaceService;
import org.eclipse.epp.internal.mpc.core.service.Ius;
import org.eclipse.epp.internal.mpc.core.service.Market;
import org.eclipse.epp.internal.mpc.core.service.MarketplaceService;
import org.eclipse.epp.internal.mpc.core.service.Node;
import org.eclipse.epp.internal.mpc.core.service.SearchResult;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.util.ConcurrentTaskManager;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.discovery.AbstractDiscoveryStrategy;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogCategory;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.discovery.model.Icon;
import org.eclipse.equinox.internal.p2.discovery.model.Overview;
import org.eclipse.equinox.internal.p2.discovery.model.Tag;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.operations.RepositoryTracker;
import org.eclipse.equinox.p2.ui.ProvisioningUI;
import org.osgi.framework.Bundle;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.catalog:
//            MarketplaceCatalogSource, MarketplaceCategory, MarketplaceInfo, MarketplaceNodeCatalogItem, 
//            Messages, ResourceProvider, AbstractResourceRunnable

public class MarketplaceDiscoveryStrategy extends AbstractDiscoveryStrategy
{

    public MarketplaceDiscoveryStrategy(CatalogDescriptor catalogDescriptor)
    {
        if(catalogDescriptor == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            this.catalogDescriptor = catalogDescriptor;
            marketplaceService = createMarketplaceService();
            source = new MarketplaceCatalogSource(marketplaceService);
            marketplaceInfo = MarketplaceInfo.getInstance();
            return;
        }
    }

    public MarketplaceService createMarketplaceService()
    {
        DefaultMarketplaceService service = new DefaultMarketplaceService(catalogDescriptor.getUrl());
        Map requestMetaParameters = new HashMap();
        requestMetaParameters.put("client", "org.eclipse.epp.mpc.core");
        requestMetaParameters.put("os", Platform.getOS());
        requestMetaParameters.put("ws", Platform.getWS());
        requestMetaParameters.put("nl", Platform.getNL());
        requestMetaParameters.put("java.version", System.getProperty("java.version"));
        IProduct product = Platform.getProduct();
        if(product != null)
        {
            requestMetaParameters.put("product", product.getId());
            Bundle productBundle = product.getDefiningBundle();
            if(productBundle != null)
                requestMetaParameters.put("product.version", productBundle.getVersion().toString());
        }
        Bundle runtimeBundle = Platform.getBundle("org.eclipse.core.runtime");
        if(runtimeBundle != null)
            requestMetaParameters.put("runtime.version", runtimeBundle.getVersion().toString());
        service.setRequestMetaParameters(requestMetaParameters);
        return new CachingMarketplaceService(service);
    }

    public void dispose()
    {
        if(source != null)
        {
            source.dispose();
            source = null;
        }
        if(marketplaceInfo != null)
        {
            marketplaceInfo.save();
            marketplaceInfo = null;
        }
        super.dispose();
    }

    public void performDiscovery(IProgressMonitor monitor)
        throws CoreException
    {
        if(monitor == null)
            monitor = new NullProgressMonitor();
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_loadingMarketplace, 0x989680);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 0x32dcd5));
        catalogCategory.setContents(MarketplaceCategory.Contents.FEATURED);
        SearchResult featured = marketplaceService.featured(new SubProgressMonitor(monitor, 0x32dcd5));
        handleSearchResult(catalogCategory, featured, new SubProgressMonitor(monitor, 0x32dcd5));
        maybeAddCatalogItem(catalogCategory);
        break MISSING_BLOCK_LABEL_100;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    protected void handleSearchResult(MarketplaceCategory catalogCategory, SearchResult result, final IProgressMonitor monitor)
    {
        int totalWork;
        ConcurrentTaskManager executor;
        if(result.getNodes().isEmpty())
            break MISSING_BLOCK_LABEL_868;
        totalWork = 0x989680;
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_loadingResources, totalWork);
        executor = new ConcurrentTaskManager(result.getNodes().size(), Messages.MarketplaceDiscoveryStrategy_loadingResources);
        org.eclipse.equinox.p2.operations.ProvisioningSession session = ProvisioningUI.getDefaultUI().getSession();
        RepositoryTracker repositoryTracker = ProvisioningUI.getDefaultUI().getRepositoryTracker();
        Set knownRepositories = new HashSet(Arrays.asList(repositoryTracker.getKnownRepositories(session)));
        Node node;
        MarketplaceNodeCatalogItem catalogItem;
        for(Iterator iterator = result.getNodes().iterator(); iterator.hasNext(); catalogItem.setInstalled(marketplaceInfo.computeInstalled(computeInstalledFeatures(monitor), knownRepositories, node)))
        {
            node = (Node)iterator.next();
            catalogItem = new MarketplaceNodeCatalogItem();
            catalogItem.setMarketplaceUrl(catalogDescriptor.getUrl());
            catalogItem.setId(node.getId());
            catalogItem.setName(node.getName());
            catalogItem.setCategoryId(catalogCategory.getId());
            Categories categories = node.getCategories();
            if(categories != null)
            {
                Category category;
                for(Iterator iterator1 = categories.getCategory().iterator(); iterator1.hasNext(); catalogItem.addTag(new Tag(org/eclipse/epp/internal/mpc/core/service/Category, category.getId(), category.getName())))
                    category = (Category)iterator1.next();

            }
            catalogItem.setData(node);
            catalogItem.setSource(source);
            catalogItem.setLicense(node.getLicense());
            Ius ius = node.getIus();
            if(ius != null)
            {
                List discoveryIus = new ArrayList(ius.getIu());
                for(int x = 0; x < discoveryIus.size(); x++)
                {
                    String iu = (String)discoveryIus.get(x);
                    if(!iu.endsWith(".feature.group"))
                        discoveryIus.set(x, (new StringBuilder(String.valueOf(iu))).append(".feature.group").toString());
                }

                catalogItem.setInstallableUnits(discoveryIus);
            }
            if(node.getShortdescription() == null && node.getBody() != null)
            {
                String descriptionText = node.getBody();
                Matcher matcher = BREAK_PATTERN.matcher(node.getBody());
                if(matcher.find())
                {
                    int start = matcher.start();
                    if(start > 0)
                    {
                        String shortDescriptionText = descriptionText.substring(0, start).trim();
                        if(shortDescriptionText.length() > 0)
                            descriptionText = shortDescriptionText;
                    }
                }
                catalogItem.setDescription(descriptionText);
            } else
            {
                catalogItem.setDescription(node.getShortdescription());
            }
            catalogItem.setProvider(node.getCompanyname());
            String updateurl = node.getUpdateurl();
            if(updateurl != null)
                try
                {
                    updateurl = updateurl.trim();
                    new URL(updateurl);
                    catalogItem.setSiteUrl(updateurl);
                }
                catch(MalformedURLException _ex) { }
            if(node.getBody() != null || node.getScreenshot() != null)
            {
                Overview overview = new Overview();
                overview.setItem(catalogItem);
                overview.setSummary(node.getBody());
                overview.setUrl(node.getUrl());
                catalogItem.setOverview(overview);
                if(node.getScreenshot() != null)
                    if(!source.getResourceProvider().containsResource(node.getScreenshot()))
                        executor.submit(new AbstractResourceRunnable(node.getScreenshot(), overview, node) {

                            protected void resourceRetrieved()
                            {
                                overview.setScreenshot(node.getScreenshot());
                            }

                            final MarketplaceDiscoveryStrategy this$0;
                            private final Overview val$overview;
                            private final Node val$node;

            
            {
                this$0 = MarketplaceDiscoveryStrategy.this;
                overview = overview1;
                node = node1;
                super($anonymous0, $anonymous1, $anonymous2);
            }
                        }
);
                    else
                        overview.setScreenshot(node.getScreenshot());
            }
            if(node.getImage() != null)
                if(!source.getResourceProvider().containsResource(node.getImage()))
                    executor.submit(new AbstractResourceRunnable(node.getImage(), catalogItem, node) {

                        protected void resourceRetrieved()
                        {
                            createIcon(catalogItem, node);
                        }

                        final MarketplaceDiscoveryStrategy this$0;
                        private final MarketplaceNodeCatalogItem val$catalogItem;
                        private final Node val$node;

            
            {
                this$0 = MarketplaceDiscoveryStrategy.this;
                catalogItem = marketplacenodecatalogitem;
                node = node1;
                super($anonymous0, $anonymous1, $anonymous2);
            }
                    }
);
                else
                    createIcon(catalogItem, node);
            items.add(catalogItem);
            marketplaceInfo.map(catalogItem.getMarketplaceUrl(), node);
        }

        try
        {
            executor.waitUntilFinished(new SubProgressMonitor(monitor, totalWork - 10));
        }
        catch(CoreException e)
        {
            MarketplaceClientUi.error(e);
        }
        break MISSING_BLOCK_LABEL_815;
        Exception exception;
        exception;
        executor.shutdownNow();
        monitor.done();
        throw exception;
        executor.shutdownNow();
        monitor.done();
        if(result.getMatchCount() != null)
        {
            catalogCategory.setMatchCount(result.getMatchCount().intValue());
            if(result.getMatchCount().intValue() > result.getNodes().size())
                addCatalogItem(catalogCategory);
        }
    }

    public void maybeAddCatalogItem(MarketplaceCategory catalogCategory)
    {
        if(!items.isEmpty())
        {
            CatalogItem catalogItem = (CatalogItem)items.get(items.size() - 1);
            if(catalogItem.getData() != catalogDescriptor)
                addCatalogItem(catalogCategory);
        }
    }

    public void addCatalogItem(MarketplaceCategory catalogCategory)
    {
        CatalogItem catalogItem = new CatalogItem();
        catalogItem.setSource(source);
        catalogItem.setData(catalogDescriptor);
        catalogItem.setId(catalogDescriptor.getUrl().toString());
        catalogItem.setCategoryId(catalogCategory.getId());
        items.add(catalogItem);
    }

    private void createIcon(CatalogItem catalogItem, Node node)
    {
        Icon icon = new Icon();
        icon.setImage32(node.getImage());
        icon.setImage48(node.getImage());
        icon.setImage64(node.getImage());
        catalogItem.setIcon(icon);
    }

    public void performQuery(Market market, Category category, String queryText, IProgressMonitor monitor)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_searchingMarketplace, 0xf4240);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 1));
        catalogCategory.setContents(MarketplaceCategory.Contents.QUERY);
        SearchResult result = marketplaceService.search(market, category, queryText, new SubProgressMonitor(monitor, 0x7a120));
        handleSearchResult(catalogCategory, result, new SubProgressMonitor(monitor, 0x7a120));
        if(result.getNodes().isEmpty())
        {
            catalogCategory.setMatchCount(0);
            addCatalogItem(catalogCategory);
        }
        break MISSING_BLOCK_LABEL_123;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    public void recent(IProgressMonitor monitor)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_searchingMarketplace, 0xf4240);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 1));
        catalogCategory.setContents(MarketplaceCategory.Contents.RECENT);
        SearchResult result = marketplaceService.recent(new SubProgressMonitor(monitor, 0x7a120));
        handleSearchResult(catalogCategory, result, new SubProgressMonitor(monitor, 0x7a120));
        maybeAddCatalogItem(catalogCategory);
        break MISSING_BLOCK_LABEL_90;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    public void featured(IProgressMonitor monitor, Market market, Category category)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_searchingMarketplace, 0xf4240);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 1));
        catalogCategory.setContents(MarketplaceCategory.Contents.FEATURED);
        SearchResult result = marketplaceService.featured(new SubProgressMonitor(monitor, 0x7a120), market, category);
        handleSearchResult(catalogCategory, result, new SubProgressMonitor(monitor, 0x7a120));
        maybeAddCatalogItem(catalogCategory);
        break MISSING_BLOCK_LABEL_98;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    public void popular(IProgressMonitor monitor)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_searchingMarketplace, 0xf4240);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 1));
        catalogCategory.setContents(MarketplaceCategory.Contents.POPULAR);
        SearchResult result = marketplaceService.favorites(new SubProgressMonitor(monitor, 0x7a120));
        handleSearchResult(catalogCategory, result, new SubProgressMonitor(monitor, 0x7a120));
        maybeAddCatalogItem(catalogCategory);
        break MISSING_BLOCK_LABEL_90;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    public void installed(IProgressMonitor monitor)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_findingInstalled, 0xf4240);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 1));
        catalogCategory.setContents(MarketplaceCategory.Contents.INSTALLED);
        SearchResult result = new SearchResult();
        result.setNodes(new ArrayList());
        Set installedFeatures = computeInstalledFeatures(monitor);
        if(!monitor.isCanceled())
        {
            Set catalogNodes = marketplaceInfo.computeInstalledNodes(catalogDescriptor.getUrl(), installedFeatures);
            if(!catalogNodes.isEmpty())
            {
                int unitWork = 0xf4240 / (2 * catalogNodes.size());
                for(Iterator iterator = catalogNodes.iterator(); iterator.hasNext(); monitor.worked(unitWork))
                {
                    Node node = (Node)iterator.next();
                    node = marketplaceService.getNode(node, monitor);
                    result.getNodes().add(node);
                }

            } else
            {
                monitor.worked(0x7a120);
            }
            handleSearchResult(catalogCategory, result, new SubProgressMonitor(monitor, 0x7a120));
        }
        break MISSING_BLOCK_LABEL_222;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    public void performQuery(IProgressMonitor monitor, Set nodeIds)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_searchingMarketplace, 0xf4240);
        MarketplaceCategory catalogCategory = findMarketplaceCategory(new SubProgressMonitor(monitor, 1));
        catalogCategory.setContents(MarketplaceCategory.Contents.QUERY);
        SearchResult result = new SearchResult();
        result.setNodes(new ArrayList());
        if(!monitor.isCanceled())
        {
            if(!nodeIds.isEmpty())
            {
                int unitWork = 0xf4240 / (2 * nodeIds.size());
                for(Iterator iterator = nodeIds.iterator(); iterator.hasNext(); monitor.worked(unitWork))
                {
                    String nodeId = (String)iterator.next();
                    Node node = new Node();
                    node.setId(nodeId);
                    node = marketplaceService.getNode(node, monitor);
                    result.getNodes().add(node);
                }

            } else
            {
                monitor.worked(0x7a120);
            }
            result.setMatchCount(Integer.valueOf(result.getNodes().size()));
            handleSearchResult(catalogCategory, result, new SubProgressMonitor(monitor, 0x7a120));
            maybeAddCatalogItem(catalogCategory);
        }
        break MISSING_BLOCK_LABEL_237;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    protected Set computeInstalledFeatures(IProgressMonitor monitor)
    {
        return computeInstalledIUs(monitor).keySet();
    }

    protected synchronized Map computeInstalledIUs(IProgressMonitor monitor)
    {
        if(featureIUById == null)
            featureIUById = MarketplaceClientUi.computeInstalledIUsById(monitor);
        return featureIUById;
    }

    protected MarketplaceCategory findMarketplaceCategory(IProgressMonitor monitor)
        throws CoreException
    {
        MarketplaceCategory catalogCategory;
        catalogCategory = null;
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_catalogCategory, 10000);
        for(Iterator iterator = getCategories().iterator(); iterator.hasNext();)
        {
            CatalogCategory candidate = (CatalogCategory)iterator.next();
            if(candidate.getSource() == source)
                catalogCategory = (MarketplaceCategory)candidate;
        }

        if(catalogCategory == null)
        {
            List markets = marketplaceService.listMarkets(new SubProgressMonitor(monitor, 10000));
            catalogCategory = new MarketplaceCategory();
            catalogCategory.setId("<root>");
            catalogCategory.setName("<root>");
            catalogCategory.setSource(source);
            catalogCategory.setMarkets(markets);
            categories.add(catalogCategory);
        }
        break MISSING_BLOCK_LABEL_150;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return catalogCategory;
    }

    public void installErrorReport(IProgressMonitor monitor, IStatus result, Set items, IInstallableUnit operationIUs[], String resolutionDetails)
        throws CoreException
    {
        monitor.beginTask(Messages.MarketplaceDiscoveryStrategy_sendingErrorNotification, 100);
        Set nodes = new HashSet();
        for(Iterator iterator = items.iterator(); iterator.hasNext();)
        {
            CatalogItem item = (CatalogItem)iterator.next();
            Object data = item.getData();
            if(data instanceof Node)
                nodes.add((Node)data);
        }

        Set iuIdsAndVersions = new HashSet();
        IInstallableUnit aiinstallableunit[];
        int j = (aiinstallableunit = operationIUs).length;
        for(int i = 0; i < j; i++)
        {
            IInstallableUnit iu = aiinstallableunit[i];
            String id = iu.getId();
            String version = iu.getVersion() != null ? iu.getVersion().toString() : null;
            iuIdsAndVersions.add((new StringBuilder(String.valueOf(id))).append(",").append(version).toString());
        }

        marketplaceService.reportInstallError(monitor, result, nodes, iuIdsAndVersions, resolutionDetails);
        break MISSING_BLOCK_LABEL_221;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return;
    }

    private static final String DOT_FEATURE_DOT_GROUP = ".feature.group";
    private static final Pattern BREAK_PATTERN = Pattern.compile("<!--\\s*break\\s*-->");
    protected final CatalogDescriptor catalogDescriptor;
    private final MarketplaceService marketplaceService;
    private MarketplaceCatalogSource source;
    private MarketplaceInfo marketplaceInfo;
    private Map featureIUById;


}

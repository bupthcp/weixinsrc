// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceCatalog.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.net.*;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.internal.mpc.core.service.*;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.util.ConcurrentTaskManager;
import org.eclipse.equinox.internal.p2.discovery.AbstractDiscoveryStrategy;
import org.eclipse.equinox.internal.p2.discovery.Catalog;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogCategory;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.operations.ProvisioningSession;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.p2.ui.ProvisioningUI;
import org.eclipse.osgi.util.NLS;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.catalog:
//            MarketplaceDiscoveryStrategy, MarketplaceNodeCatalogItem, Messages

public class MarketplaceCatalog extends Catalog
{
    private static interface DiscoveryOperation
    {

        public abstract void run(MarketplaceDiscoveryStrategy marketplacediscoverystrategy, IProgressMonitor iprogressmonitor)
            throws CoreException;
    }


    public MarketplaceCatalog()
    {
    }

    public IStatus performQuery(final Market market, final Category category, final String queryText, IProgressMonitor monitor)
    {
        return performDiscovery(new DiscoveryOperation() {

            public void run(MarketplaceDiscoveryStrategy strategy, IProgressMonitor monitor)
                throws CoreException
            {
                strategy.performQuery(market, category, queryText, monitor);
            }

            final MarketplaceCatalog this$0;
            private final Market val$market;
            private final Category val$category;
            private final String val$queryText;

            
            {
                this$0 = MarketplaceCatalog.this;
                market = market1;
                category = category1;
                queryText = s;
                super();
            }
        }
, monitor);
    }

    public IStatus recent(IProgressMonitor monitor)
    {
        return performDiscovery(new DiscoveryOperation() {

            public void run(MarketplaceDiscoveryStrategy strategy, IProgressMonitor monitor)
                throws CoreException
            {
                strategy.recent(monitor);
            }

            final MarketplaceCatalog this$0;

            
            {
                this$0 = MarketplaceCatalog.this;
                super();
            }
        }
, monitor);
    }

    public IStatus popular(IProgressMonitor monitor)
    {
        return performDiscovery(new DiscoveryOperation() {

            public void run(MarketplaceDiscoveryStrategy strategy, IProgressMonitor monitor)
                throws CoreException
            {
                strategy.popular(monitor);
            }

            final MarketplaceCatalog this$0;

            
            {
                this$0 = MarketplaceCatalog.this;
                super();
            }
        }
, monitor);
    }

    public IStatus featured(IProgressMonitor monitor, final Market market, final Category category)
    {
        return performDiscovery(new DiscoveryOperation() {

            public void run(MarketplaceDiscoveryStrategy strategy, IProgressMonitor monitor)
                throws CoreException
            {
                strategy.featured(monitor, market, category);
            }

            final MarketplaceCatalog this$0;
            private final Market val$market;
            private final Category val$category;

            
            {
                this$0 = MarketplaceCatalog.this;
                market = market1;
                category = category1;
                super();
            }
        }
, monitor);
    }

    public IStatus installed(IProgressMonitor monitor)
    {
        return performDiscovery(new DiscoveryOperation() {

            public void run(MarketplaceDiscoveryStrategy strategy, IProgressMonitor monitor)
                throws CoreException
            {
                strategy.installed(monitor);
            }

            final MarketplaceCatalog this$0;

            
            {
                this$0 = MarketplaceCatalog.this;
                super();
            }
        }
, monitor);
    }

    public IStatus performQuery(IProgressMonitor monitor, final Set nodeIds)
    {
        return performDiscovery(new DiscoveryOperation() {

            public void run(MarketplaceDiscoveryStrategy strategy, IProgressMonitor monitor)
                throws CoreException
            {
                strategy.performQuery(monitor, nodeIds);
            }

            final MarketplaceCatalog this$0;
            private final Set val$nodeIds;

            
            {
                this$0 = MarketplaceCatalog.this;
                nodeIds = set;
                super();
            }
        }
, monitor);
    }

    public IStatus checkForUpdates(final IProgressMonitor monitor)
    {
        int remainingWork;
        remainingWork = 0x989680;
        monitor.beginTask(Messages.MarketplaceCatalog_checkingForUpdates, remainingWork);
        Map installedCatalogItemsByUpdateUri;
        final Map installedIUs;
        ConcurrentTaskManager executor;
        installedCatalogItemsByUpdateUri = new HashMap();
        for(Iterator iterator = getItems().iterator(); iterator.hasNext();)
        {
            CatalogItem item = (CatalogItem)iterator.next();
            if(item instanceof MarketplaceNodeCatalogItem)
            {
                MarketplaceNodeCatalogItem catalogItem = (MarketplaceNodeCatalogItem)item;
                if(catalogItem.isInstalled())
                {
                    Node node = catalogItem.getData();
                    Boolean updateAvailable = (Boolean)updateAvailableByNodeId.get(node.getId());
                    if(updateAvailable != null)
                        catalogItem.setUpdateAvailable(updateAvailable);
                    else
                        try
                        {
                            URI uri = new URI(node.getUpdateurl());
                            List catalogItemsThisSite = (List)installedCatalogItemsByUpdateUri.get(uri);
                            if(catalogItemsThisSite == null)
                            {
                                catalogItemsThisSite = new ArrayList();
                                installedCatalogItemsByUpdateUri.put(uri, catalogItemsThisSite);
                            }
                            catalogItemsThisSite.add(catalogItem);
                        }
                        catch(URISyntaxException e)
                        {
                            MarketplaceClientUi.error(e);
                            catalogItem.setAvailable(Boolean.valueOf(false));
                        }
                }
            }
        }

        if(installedCatalogItemsByUpdateUri.isEmpty())
            break MISSING_BLOCK_LABEL_410;
        installedIUs = MarketplaceClientUi.computeInstalledIUsById(new SubProgressMonitor(monitor, remainingWork / 20));
        remainingWork -= remainingWork / 20;
        executor = new ConcurrentTaskManager(installedCatalogItemsByUpdateUri.size(), Messages.MarketplaceCatalog_checkingForUpdates);
        final IProgressMonitor pm = new NullProgressMonitor() {

            public boolean isCanceled()
            {
                return super.isCanceled() || monitor.isCanceled();
            }

            final MarketplaceCatalog this$0;
            private final IProgressMonitor val$monitor;

            
            {
                this$0 = MarketplaceCatalog.this;
                monitor = iprogressmonitor;
                super();
            }
        }
;
        final URI uri;
        final List catalogItemsThisSite;
        for(Iterator iterator3 = installedCatalogItemsByUpdateUri.entrySet().iterator(); iterator3.hasNext(); executor.submit(new Runnable() {

        public void run()
        {
            ProvisioningSession session = ProvisioningUI.getDefaultUI().getSession();
            IMetadataRepositoryManager manager = (IMetadataRepositoryManager)session.getProvisioningAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
            try
            {
                IMetadataRepository repository = manager.loadRepository(uri, pm);
                org.eclipse.equinox.p2.query.IQuery query = QueryUtil.createMatchQuery("id ~= /*.feature.group/ && properties['org.eclipse.equinox.p2.type.group'] == true ", new Object[0]);
                IQueryResult result = repository.query(query, pm);
                Map repositoryIuVersionById = new HashMap();
                for(Iterator iter = result.iterator(); iter.hasNext();)
                {
                    IInstallableUnit iu = (IInstallableUnit)iter.next();
                    String id = iu.getId();
                    Version version = iu.getVersion();
                    Version priorVersion = (Version)repositoryIuVersionById.put(id, version);
                    if(priorVersion != null && priorVersion.compareTo(version) > 0)
                        repositoryIuVersionById.put(id, priorVersion);
                }

                for(Iterator iterator5 = catalogItemsThisSite.iterator(); iterator5.hasNext();)
                {
                    MarketplaceNodeCatalogItem item = (MarketplaceNodeCatalogItem)iterator5.next();
                    item.setUpdateAvailable(Boolean.valueOf(false));
                    List installableUnits = item.getInstallableUnits();
                    if(!repositoryIuVersionById.keySet().containsAll(installableUnits))
                    {
                        item.setAvailable(Boolean.valueOf(false));
                    } else
                    {
                        Iterator iterator6 = installableUnits.iterator();
                        while(iterator6.hasNext()) 
                        {
                            String iu = (String)iterator6.next();
                            Version availableVersion = (Version)repositoryIuVersionById.get(iu);
                            if(availableVersion == null)
                                continue;
                            IInstallableUnit installedIu = (IInstallableUnit)installedIUs.get(iu);
                            if(installedIu == null || installedIu.getVersion().compareTo(availableVersion) >= 0)
                                continue;
                            item.setUpdateAvailable(Boolean.valueOf(true));
                            break;
                        }
                    }
                }

            }
            catch(ProvisionException e)
            {
                MarketplaceClientUi.error(e);
                MarketplaceNodeCatalogItem item;
                for(Iterator iterator4 = catalogItemsThisSite.iterator(); iterator4.hasNext(); item.setAvailable(Boolean.valueOf(false)))
                    item = (MarketplaceNodeCatalogItem)iterator4.next();

            }
            catch(OperationCanceledException _ex) { }
        }

        final MarketplaceCatalog this$0;
        private final URI val$uri;
        private final IProgressMonitor val$pm;
        private final List val$catalogItemsThisSite;
        private final Map val$installedIUs;

            
            {
                this$0 = MarketplaceCatalog.this;
                uri = uri1;
                pm = iprogressmonitor;
                catalogItemsThisSite = list;
                installedIUs = map;
                super();
            }
    }
))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator3.next();
            uri = (URI)entry.getKey();
            catalogItemsThisSite = (List)entry.getValue();
        }

        executor.waitUntilFinished(new SubProgressMonitor(monitor, remainingWork));
        break MISSING_BLOCK_LABEL_405;
        CoreException e;
        e;
        IStatus istatus;
        MarketplaceClientUi.error(e);
        istatus = e.getStatus();
        executor.shutdownNow();
        monitor.done();
        return istatus;
        Exception exception;
        exception;
        executor.shutdownNow();
        throw exception;
        executor.shutdownNow();
        IStatus istatus1;
        if(!monitor.isCanceled() && !installedCatalogItemsByUpdateUri.isEmpty())
        {
            for(Iterator iterator1 = installedCatalogItemsByUpdateUri.values().iterator(); iterator1.hasNext();)
            {
                List items = (List)iterator1.next();
                for(Iterator iterator2 = items.iterator(); iterator2.hasNext();)
                {
                    MarketplaceNodeCatalogItem item = (MarketplaceNodeCatalogItem)iterator2.next();
                    if(item.getUpdateAvailable() != null)
                        updateAvailableByNodeId.put(item.getData().getId(), item.getUpdateAvailable());
                }

            }

        }
        istatus1 = monitor.isCanceled() ? Status.CANCEL_STATUS : Status.OK_STATUS;
        monitor.done();
        return istatus1;
        Exception exception1;
        exception1;
        monitor.done();
        throw exception1;
    }

    public IStatus performDiscovery(IProgressMonitor monitor)
    {
        IStatus status = super.performDiscovery(monitor);
        if(status.getSeverity() == 4)
        {
            if(status.isMultiStatus())
            {
                MultiStatus multiStatus = (MultiStatus)status;
                if(multiStatus.getChildren().length == 1)
                    status = multiStatus.getChildren()[0];
            }
            if(!status.isMultiStatus())
            {
                Throwable cause;
                for(Throwable exception = status.getException(); exception != null; exception = cause)
                {
                    if(exception instanceof UnknownHostException)
                    {
                        status = new Status(4, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.MarketplaceCatalog_unknownHost, exception.getMessage()), exception);
                        break;
                    }
                    if(exception instanceof ConnectException)
                    {
                        status = new Status(4, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.MarketplaceCatalog_unknownHost, exception.getMessage()), exception);
                        break;
                    }
                    cause = exception.getCause();
                    if(cause == exception)
                        break;
                }

            }
        }
        return status;
    }

    protected IStatus performDiscovery(DiscoveryOperation operation, IProgressMonitor monitor)
    {
        MultiStatus status;
        List items;
        List categories;
        List certifications;
        List tags;
        status = new MultiStatus("org.eclipse.epp.mpc.ui", 0, Messages.MarketplaceCatalog_queryFailed, null);
        if(getDiscoveryStrategies().isEmpty())
            throw new IllegalStateException();
        items = new ArrayList();
        categories = new ArrayList(getCategories());
        certifications = new ArrayList(getCertifications());
        tags = new ArrayList(getTags());
        CatalogCategory catalogCategory;
        for(Iterator iterator = categories.iterator(); iterator.hasNext(); catalogCategory.getItems().clear())
            catalogCategory = (CatalogCategory)iterator.next();

        monitor.beginTask(Messages.MarketplaceCatalog_queryingMarketplace, 0x186a0);
        int strategyTicks = 0x15f90 / getDiscoveryStrategies().size();
        for(Iterator iterator1 = getDiscoveryStrategies().iterator(); iterator1.hasNext();)
        {
            AbstractDiscoveryStrategy discoveryStrategy = (AbstractDiscoveryStrategy)iterator1.next();
            if(monitor.isCanceled())
            {
                status.add(Status.CANCEL_STATUS);
                break;
            }
            if(discoveryStrategy instanceof MarketplaceDiscoveryStrategy)
            {
                discoveryStrategy.setCategories(categories);
                discoveryStrategy.setItems(items);
                discoveryStrategy.setCertifications(certifications);
                discoveryStrategy.setTags(tags);
                try
                {
                    MarketplaceDiscoveryStrategy marketplaceStrategy = (MarketplaceDiscoveryStrategy)discoveryStrategy;
                    operation.run(marketplaceStrategy, new SubProgressMonitor(monitor, strategyTicks));
                }
                catch(CoreException e)
                {
                    status.add(new Status(e.getStatus().getSeverity(), "org.eclipse.equinox.p2.discovery", NLS.bind(Messages.MarketplaceCatalog_failedWithError, discoveryStrategy.getClass().getSimpleName()), e));
                }
            }
        }

        update(categories, items, certifications, tags);
        break MISSING_BLOCK_LABEL_342;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        return status;
    }

    public void installErrorReport(IProgressMonitor monitor, IStatus result, Set items, IInstallableUnit operationIUs[], String resolutionDetails)
    {
        for(Iterator iterator = getDiscoveryStrategies().iterator(); iterator.hasNext();)
        {
            AbstractDiscoveryStrategy discoveryStrategy = (AbstractDiscoveryStrategy)iterator.next();
            if(discoveryStrategy instanceof MarketplaceDiscoveryStrategy)
                try
                {
                    ((MarketplaceDiscoveryStrategy)discoveryStrategy).installErrorReport(monitor, result, items, operationIUs, resolutionDetails);
                }
                catch(CoreException e)
                {
                    MarketplaceClientUi.error(e);
                }
        }

    }

    private final Map updateAvailableByNodeId = new HashMap();
}

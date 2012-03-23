// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractProvisioningOperation.java

package org.eclipse.epp.internal.mpc.ui.operations;

import java.net.*;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.operations.ProvisioningSession;
import org.eclipse.equinox.p2.operations.RepositoryTracker;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.p2.ui.ProvisioningUI;
import org.eclipse.jface.operation.IRunnableWithProgress;

public abstract class AbstractProvisioningOperation
    implements IRunnableWithProgress
{

    protected AbstractProvisioningOperation(Collection installableConnectors)
    {
        if(installableConnectors == null || installableConnectors.isEmpty())
        {
            throw new IllegalArgumentException();
        } else
        {
            items = new ArrayList(installableConnectors);
            provisioningUI = ProvisioningUI.getDefaultUI();
            return;
        }
    }

    protected List addRepositories(SubMonitor monitor)
        throws MalformedURLException, URISyntaxException, ProvisionException
    {
        ProvisioningSession session = ProvisioningUI.getDefaultUI().getSession();
        RepositoryTracker repositoryTracker = ProvisioningUI.getDefaultUI().getRepositoryTracker();
        repositoryLocations = new HashSet();
        if(addedRepositoryLocations == null)
            addedRepositoryLocations = new HashSet();
        Set knownRepositories = new HashSet(Arrays.asList(repositoryTracker.getKnownRepositories(session)));
        monitor.setWorkRemaining(items.size() * 5);
        for(Iterator iterator = items.iterator(); iterator.hasNext(); monitor.worked(1))
        {
            CatalogItem descriptor = (CatalogItem)iterator.next();
            URI uri = (new URL(descriptor.getSiteUrl())).toURI();
            if(repositoryLocations.add(uri) && !knownRepositories.contains(uri))
            {
                checkCancelled(monitor);
                repositoryTracker.addRepository(uri, null, session);
                addedRepositoryLocations.add(uri);
            }
        }

        ArrayList repositories = new ArrayList();
        monitor.setWorkRemaining(repositories.size());
        IMetadataRepositoryManager manager = (IMetadataRepositoryManager)session.getProvisioningAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
        IMetadataRepository repository;
        for(Iterator iterator1 = repositoryLocations.iterator(); iterator1.hasNext(); repositories.add(repository))
        {
            URI uri = (URI)iterator1.next();
            checkCancelled(monitor);
            repository = manager.loadRepository(uri, monitor.newChild(1));
        }

        return repositories;
    }

    protected List queryInstallableUnits(SubMonitor monitor, List repositories)
        throws URISyntaxException
    {
        List installableUnits = new ArrayList();
        monitor.setWorkRemaining(repositories.size());
        for(Iterator iterator = repositories.iterator(); iterator.hasNext();)
        {
            IMetadataRepository repository = (IMetadataRepository)iterator.next();
            checkCancelled(monitor);
            Set installableUnitIdsThisRepository = getDescriptorIds(repository);
            org.eclipse.equinox.p2.query.IQuery query = QueryUtil.createLatestQuery(QueryUtil.createIUGroupQuery());
            IQueryResult result = repository.query(query, monitor.newChild(1));
            for(Iterator iter = result.iterator(); iter.hasNext();)
            {
                IInstallableUnit iu = (IInstallableUnit)iter.next();
                String id = iu.getId();
                if(installableUnitIdsThisRepository.contains(id))
                    installableUnits.add(iu);
            }

        }

        return installableUnits;
    }

    private Set getDescriptorIds(IMetadataRepository repository)
        throws URISyntaxException
    {
        Set installableUnitIdsThisRepository = new HashSet();
        for(Iterator iterator = items.iterator(); iterator.hasNext();)
        {
            CatalogItem descriptor = (CatalogItem)iterator.next();
            try
            {
                if(repository.getLocation().equals((new URL(descriptor.getSiteUrl())).toURI()))
                    installableUnitIdsThisRepository.addAll(getFeatureIds(descriptor));
            }
            catch(MalformedURLException _ex) { }
        }

        return installableUnitIdsThisRepository;
    }

    protected Set getFeatureIds(CatalogItem descriptor)
    {
        Set featureIds = new HashSet();
        String id;
        for(Iterator iterator = descriptor.getInstallableUnits().iterator(); iterator.hasNext(); featureIds.add(id))
        {
            id = (String)iterator.next();
            if(!id.endsWith(".feature.group"))
                id = (new StringBuilder(String.valueOf(id))).append(".feature.group").toString();
        }

        return featureIds;
    }

    protected void checkCancelled(IProgressMonitor monitor)
    {
        if(monitor.isCanceled())
            throw new OperationCanceledException();
        else
            return;
    }

    public Set getAddedRepositoryLocations()
    {
        return addedRepositoryLocations;
    }

    protected void removeAddedRepositoryLocations()
    {
        if(addedRepositoryLocations != null)
        {
            removeRepositoryLocations(addedRepositoryLocations);
            addedRepositoryLocations = null;
        }
    }

    public static void removeRepositoryLocations(Set repositoryLocations)
    {
        if(repositoryLocations == null || repositoryLocations.isEmpty())
        {
            return;
        } else
        {
            ProvisioningSession session = ProvisioningUI.getDefaultUI().getSession();
            RepositoryTracker repositoryTracker = ProvisioningUI.getDefaultUI().getRepositoryTracker();
            repositoryTracker.removeRepositories((URI[])repositoryLocations.toArray(new URI[repositoryLocations.size()]), session);
            return;
        }
    }

    protected static final String P2_FEATURE_GROUP_SUFFIX = ".feature.group";
    protected final List items;
    protected final ProvisioningUI provisioningUI;
    protected Set repositoryLocations;
    protected Set addedRepositoryLocations;
}

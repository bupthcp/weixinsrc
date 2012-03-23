// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProfileChangeOperationComputer.java

package org.eclipse.epp.internal.mpc.ui.operations;

import java.lang.reflect.InvocationTargetException;
import java.net.*;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.ui.discovery.util.WorkbenchUtil;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.operations.ProfileChangeOperation;
import org.eclipse.equinox.p2.operations.RepositoryTracker;
import org.eclipse.equinox.p2.ui.ProvisioningUI;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.operations:
//            AbstractProvisioningOperation, FeatureDescriptor, Messages

public class ProfileChangeOperationComputer extends AbstractProvisioningOperation
{
    public static final class OperationType extends Enum
    {

        public static OperationType[] values()
        {
            OperationType aoperationtype[];
            int i;
            OperationType aoperationtype1[];
            System.arraycopy(aoperationtype = ENUM$VALUES, 0, aoperationtype1 = new OperationType[i = aoperationtype.length], 0, i);
            return aoperationtype1;
        }

        public static OperationType valueOf(String s)
        {
            return (OperationType)Enum.valueOf(org/eclipse/epp/internal/mpc/ui/operations/ProfileChangeOperationComputer$OperationType, s);
        }

        public static final OperationType INSTALL;
        public static final OperationType UPDATE;
        public static final OperationType UNINSTALL;
        private static final OperationType ENUM$VALUES[];

        static 
        {
            INSTALL = new OperationType("INSTALL", 0);
            UPDATE = new OperationType("UPDATE", 1);
            UNINSTALL = new OperationType("UNINSTALL", 2);
            ENUM$VALUES = (new OperationType[] {
                INSTALL, UPDATE, UNINSTALL
            });
        }

        private OperationType(String s, int i)
        {
            super(s, i);
        }
    }

    private static interface ProfileChangeOperationFactory
    {

        public abstract ProfileChangeOperation create(List list)
            throws CoreException;
    }

    public static final class ResolutionStrategy extends Enum
    {

        public static ResolutionStrategy[] values()
        {
            ResolutionStrategy aresolutionstrategy[];
            int i;
            ResolutionStrategy aresolutionstrategy1[];
            System.arraycopy(aresolutionstrategy = ENUM$VALUES, 0, aresolutionstrategy1 = new ResolutionStrategy[i = aresolutionstrategy.length], 0, i);
            return aresolutionstrategy1;
        }

        public static ResolutionStrategy valueOf(String s)
        {
            return (ResolutionStrategy)Enum.valueOf(org/eclipse/epp/internal/mpc/ui/operations/ProfileChangeOperationComputer$ResolutionStrategy, s);
        }

        public static final ResolutionStrategy ALL_REPOSITORIES;
        public static final ResolutionStrategy SELECTED_REPOSITORIES;
        public static final ResolutionStrategy FALLBACK_STRATEGY;
        private static final ResolutionStrategy ENUM$VALUES[];

        static 
        {
            ALL_REPOSITORIES = new ResolutionStrategy("ALL_REPOSITORIES", 0);
            SELECTED_REPOSITORIES = new ResolutionStrategy("SELECTED_REPOSITORIES", 1);
            FALLBACK_STRATEGY = new ResolutionStrategy("FALLBACK_STRATEGY", 2);
            ENUM$VALUES = (new ResolutionStrategy[] {
                ALL_REPOSITORIES, SELECTED_REPOSITORIES, FALLBACK_STRATEGY
            });
        }

        private ResolutionStrategy(String s, int i)
        {
            super(s, i);
        }
    }


    public ProfileChangeOperationComputer(OperationType operationType, Collection items, Set featureDescriptors, URI dependenciesRepository, ResolutionStrategy resolutionStrategy)
    {
        super(items);
        if(featureDescriptors == null || featureDescriptors.isEmpty())
            throw new IllegalArgumentException();
        if(operationType == null)
            throw new IllegalArgumentException();
        if(resolutionStrategy == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            this.featureDescriptors = new ArrayList(featureDescriptors);
            this.operationType = operationType;
            this.resolutionStrategy = resolutionStrategy;
            this.dependenciesRepository = dependenciesRepository;
            return;
        }
    }

    public void run(IProgressMonitor progressMonitor)
        throws InvocationTargetException, InterruptedException
    {
        SubMonitor monitor = SubMonitor.convert(progressMonitor, Messages.ProvisioningOperation_configuringProvisioningOperation, 1000);
        ius = computeInstallableUnits(monitor.newChild(500));
        checkCancelled(monitor);
        switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$OperationType()[operationType.ordinal()])
        {
        case 1: // '\001'
            operation = resolveInstall(monitor.newChild(500), ius, (URI[])repositoryLocations.toArray(new URI[0]));
            break;

        case 3: // '\003'
            operation = resolveUninstall(monitor.newChild(500), ius, (URI[])repositoryLocations.toArray(new URI[0]));
            break;

        case 2: // '\002'
            operation = resolveUpdate(monitor.newChild(500), computeInstalledIus(ius), (URI[])repositoryLocations.toArray(new URI[0]));
            break;

        default:
            throw new UnsupportedOperationException(operationType.name());
        }
        checkCancelled(monitor);
        break MISSING_BLOCK_LABEL_216;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
        monitor.done();
        break MISSING_BLOCK_LABEL_242;
        JVM INSTR pop ;
        throw new InterruptedException();
        Exception e;
        e;
        throw new InvocationTargetException(e);
    }

    private IInstallableUnit[] computeInstalledIus(IInstallableUnit ius[])
    {
        List installedIus = new ArrayList(ius.length);
        Map iUsById = MarketplaceClientUi.computeInstalledIUsById(new NullProgressMonitor());
        IInstallableUnit aiinstallableunit[];
        int j = (aiinstallableunit = ius).length;
        for(int i = 0; i < j; i++)
        {
            IInstallableUnit iu = aiinstallableunit[i];
            IInstallableUnit installedIu = (IInstallableUnit)iUsById.get(iu.getId());
            installedIus.add(installedIu);
        }

        return (IInstallableUnit[])installedIus.toArray(new IInstallableUnit[installedIus.size()]);
    }

    public ProfileChangeOperation getOperation()
    {
        return operation;
    }

    public IInstallableUnit[] getIus()
    {
        return ius;
    }

    private ProfileChangeOperation resolveInstall(IProgressMonitor monitor, IInstallableUnit ius[], URI repositories[])
        throws CoreException
    {
        return resolve(monitor, new ProfileChangeOperationFactory() {

            public ProfileChangeOperation create(List ius)
                throws CoreException
            {
                return provisioningUI.getInstallOperation(ius, null);
            }

            final ProfileChangeOperationComputer this$0;

            
            {
                this$0 = ProfileChangeOperationComputer.this;
                super();
            }
        }
, ius, repositories);
    }

    private ProfileChangeOperation resolveUninstall(IProgressMonitor monitor, IInstallableUnit ius[], URI repositories[])
        throws CoreException
    {
        return resolve(monitor, new ProfileChangeOperationFactory() {

            public ProfileChangeOperation create(List ius)
                throws CoreException
            {
                return provisioningUI.getUninstallOperation(ius, null);
            }

            final ProfileChangeOperationComputer this$0;

            
            {
                this$0 = ProfileChangeOperationComputer.this;
                super();
            }
        }
, ius, repositories);
    }

    private ProfileChangeOperation resolveUpdate(IProgressMonitor monitor, IInstallableUnit ius[], URI repositories[])
        throws CoreException
    {
        return resolve(monitor, new ProfileChangeOperationFactory() {

            public ProfileChangeOperation create(List ius)
                throws CoreException
            {
                return provisioningUI.getUpdateOperation(ius, null);
            }

            final ProfileChangeOperationComputer this$0;

            
            {
                this$0 = ProfileChangeOperationComputer.this;
                super();
            }
        }
, ius, repositories);
    }

    private ProfileChangeOperation resolve(IProgressMonitor monitor, ProfileChangeOperationFactory operationFactory, IInstallableUnit ius[], URI repositories[])
        throws CoreException
    {
        List installableUnits = Arrays.asList(ius);
        List strategies = new ArrayList(2);
        switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$ResolutionStrategy()[resolutionStrategy.ordinal()])
        {
        case 3: // '\003'
            strategies.add(ResolutionStrategy.SELECTED_REPOSITORIES);
            strategies.add(ResolutionStrategy.ALL_REPOSITORIES);
            break;

        default:
            strategies.add(resolutionStrategy);
            break;
        }
        org.eclipse.equinox.p2.operations.ProvisioningSession session = ProvisioningUI.getDefaultUI().getSession();
        RepositoryTracker repositoryTracker = ProvisioningUI.getDefaultUI().getRepositoryTracker();
        URI knownRepositories[] = repositoryTracker.getKnownRepositories(session);
        ProfileChangeOperation operation = null;
        SubMonitor subMonitor = SubMonitor.convert(monitor, strategies.size() * 1000);
        Set previousRepositoryLocations = null;
        Iterator iterator = strategies.iterator();
        while(iterator.hasNext()) 
        {
            ResolutionStrategy strategy = (ResolutionStrategy)iterator.next();
            Set repositoryLocations = new HashSet(Arrays.asList(repositories));
            if(strategy == ResolutionStrategy.SELECTED_REPOSITORIES)
                repositoryLocations.addAll(Arrays.asList(repositories));
            if(dependenciesRepository != null)
                repositoryLocations.add(dependenciesRepository);
            if(strategy == ResolutionStrategy.ALL_REPOSITORIES && !repositoryLocations.isEmpty())
                repositoryLocations.addAll(Arrays.asList(knownRepositories));
            if(repositoryLocations.equals(previousRepositoryLocations))
                continue;
            operation = operationFactory.create(installableUnits);
            if(!repositoryLocations.isEmpty())
            {
                URI locations[] = (URI[])repositoryLocations.toArray(new URI[repositoryLocations.size()]);
                operation.getProvisioningContext().setMetadataRepositories(locations);
                operation.getProvisioningContext().setArtifactRepositories(locations);
            }
            resolveModal(subMonitor.newChild(1000), operation);
            if(operation.getResolutionResult() != null && operation.getResolutionResult().getSeverity() != 4)
                break;
            previousRepositoryLocations = repositoryLocations;
        }
        return operation;
    }

    public void resolveModal(IProgressMonitor monitor, ProfileChangeOperation operation)
        throws CoreException
    {
        operation.resolveModal(new SubProgressMonitor(monitor, items.size()));
    }

    public IInstallableUnit[] computeInstallableUnits(SubMonitor monitor)
        throws CoreException
    {
        IInstallableUnit aiinstallableunit[];
        try
        {
            monitor.setWorkRemaining(100);
            List repositories = addRepositories(monitor.newChild(50));
            List installableUnits = queryInstallableUnits(monitor.newChild(50), repositories);
            checkForUnavailable(installableUnits);
            pruneUnselected(installableUnits);
            if(operationType != OperationType.UNINSTALL)
                pruneOlderVersions(installableUnits);
            aiinstallableunit = (IInstallableUnit[])installableUnits.toArray(new IInstallableUnit[installableUnits.size()]);
        }
        catch(URISyntaxException e)
        {
            throw new CoreException(new Status(4, "org.eclipse.epp.mpc.ui", Messages.ProvisioningOperation_unexpectedErrorUrl, e));
        }
        catch(MalformedURLException e)
        {
            throw new CoreException(new Status(4, "org.eclipse.epp.mpc.ui", Messages.ProvisioningOperation_unexpectedErrorUrl, e));
        }
        monitor.done();
        return aiinstallableunit;
        Exception exception;
        exception;
        monitor.done();
        throw exception;
    }

    private void pruneOlderVersions(List installableUnits)
        throws CoreException
    {
        if(!installableUnits.isEmpty())
        {
            Map iUsById = MarketplaceClientUi.computeInstalledIUsById(new NullProgressMonitor());
            for(Iterator it = installableUnits.iterator(); it.hasNext();)
            {
                IInstallableUnit iu = (IInstallableUnit)it.next();
                IInstallableUnit installedIu = (IInstallableUnit)iUsById.get(iu.getId());
                if(installedIu != null)
                {
                    Version installedVersion = installedIu.getVersion();
                    Version installableVersion = iu.getVersion();
                    if(installedVersion.compareTo(installableVersion) >= 0)
                        it.remove();
                }
            }

            if(installableUnits.isEmpty())
                throw new CoreException(new Status(1, "org.eclipse.epp.mpc.ui", Messages.ProvisioningOperation_nothingToUpdate));
        }
    }

    private void pruneUnselected(List installableUnits)
    {
        Set installableFeatureIds = new HashSet();
        FeatureDescriptor descriptor;
        for(Iterator iterator = featureDescriptors.iterator(); iterator.hasNext(); installableFeatureIds.add(descriptor.getId()))
            descriptor = (FeatureDescriptor)iterator.next();

        for(Iterator it = installableUnits.iterator(); it.hasNext();)
        {
            IInstallableUnit iu = (IInstallableUnit)it.next();
            if(!installableFeatureIds.contains(iu.getId()))
                it.remove();
        }

    }

    private void checkForUnavailable(List installableUnits)
        throws CoreException
    {
        Set foundIds = new HashSet();
        IInstallableUnit unit;
        for(Iterator iterator = installableUnits.iterator(); iterator.hasNext(); foundIds.add(unit.getId()))
            unit = (IInstallableUnit)iterator.next();

        Set installFeatureIds = new HashSet();
        FeatureDescriptor descriptor;
        for(Iterator iterator1 = featureDescriptors.iterator(); iterator1.hasNext(); installFeatureIds.add(descriptor.getId()))
            descriptor = (FeatureDescriptor)iterator1.next();

        String message = "";
        String detailedMessage = "";
        for(Iterator iterator2 = items.iterator(); iterator2.hasNext();)
        {
            CatalogItem descriptor = (CatalogItem)iterator2.next();
            StringBuilder unavailableIds = null;
            for(Iterator iterator3 = getFeatureIds(descriptor).iterator(); iterator3.hasNext();)
            {
                String id = (String)iterator3.next();
                if(!foundIds.contains(id) && installFeatureIds.contains(id))
                {
                    if(unavailableIds == null)
                        unavailableIds = new StringBuilder();
                    else
                        unavailableIds.append(Messages.ProvisioningOperation_commaSeparator);
                    unavailableIds.append(id);
                }
            }

            if(unavailableIds != null)
            {
                if(message.length() > 0)
                    message = (new StringBuilder(String.valueOf(message))).append(Messages.ProvisioningOperation_commaSeparator).toString();
                message = (new StringBuilder(String.valueOf(message))).append(descriptor.getName()).toString();
                if(detailedMessage.length() > 0)
                    detailedMessage = (new StringBuilder(String.valueOf(detailedMessage))).append(Messages.ProvisioningOperation_commaSeparator).toString();
                detailedMessage = (new StringBuilder(String.valueOf(detailedMessage))).append(NLS.bind(Messages.ProvisioningOperation_unavailableFeatures, new Object[] {
                    descriptor.getName(), unavailableIds.toString(), descriptor.getSiteUrl()
                })).toString();
            }
        }

        if(message.length() > 0)
        {
            final boolean okayToProceed[] = new boolean[1];
            final String finalMessage = message;
            Display.getDefault().syncExec(new Runnable() {

                public void run()
                {
                    okayToProceed[0] = MessageDialog.openQuestion(WorkbenchUtil.getShell(), Messages.ProvisioningOperation_proceedQuestion, NLS.bind(Messages.ProvisioningOperation_unavailableSolutions_proceedQuestion, new Object[] {
                        finalMessage
                    }));
                }

                final ProfileChangeOperationComputer this$0;
                private final boolean val$okayToProceed[];
                private final String val$finalMessage;

            
            {
                this$0 = ProfileChangeOperationComputer.this;
                okayToProceed = aflag;
                finalMessage = s;
                super();
            }
            }
);
            if(!okayToProceed[0])
                throw new CoreException(new Status(4, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.ProvisioningOperation_unavailableSolutions, detailedMessage), null));
        }
    }

    static int[] $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$OperationType()
    {
        $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$OperationType;
        if($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$OperationType == null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JVM INSTR pop ;
        int ai[] = new int[OperationType.values().length];
        try
        {
            ai[OperationType.INSTALL.ordinal()] = 1;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[OperationType.UNINSTALL.ordinal()] = 3;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[OperationType.UPDATE.ordinal()] = 2;
        }
        catch(NoSuchFieldError _ex) { }
        return $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$OperationType = ai;
    }

    static int[] $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$ResolutionStrategy()
    {
        $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$ResolutionStrategy;
        if($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$ResolutionStrategy == null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JVM INSTR pop ;
        int ai[] = new int[ResolutionStrategy.values().length];
        try
        {
            ai[ResolutionStrategy.ALL_REPOSITORIES.ordinal()] = 1;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[ResolutionStrategy.FALLBACK_STRATEGY.ordinal()] = 3;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[ResolutionStrategy.SELECTED_REPOSITORIES.ordinal()] = 2;
        }
        catch(NoSuchFieldError _ex) { }
        return $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$ResolutionStrategy = ai;
    }

    private final OperationType operationType;
    private final List featureDescriptors;
    private ProfileChangeOperation operation;
    private IInstallableUnit ius[];
    private final ResolutionStrategy resolutionStrategy;
    private final URI dependenciesRepository;
    private static int $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$OperationType[];
    private static int $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$operations$ProfileChangeOperationComputer$ResolutionStrategy[];
}

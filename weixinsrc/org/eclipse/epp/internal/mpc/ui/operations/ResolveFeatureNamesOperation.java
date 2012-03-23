// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ResolveFeatureNamesOperation.java

package org.eclipse.epp.internal.mpc.ui.operations;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.operations:
//            AbstractProvisioningOperation, FeatureDescriptor, Messages

public class ResolveFeatureNamesOperation extends AbstractProvisioningOperation
{

    public ResolveFeatureNamesOperation(List installableConnectors)
    {
        super(installableConnectors);
    }

    public void run(IProgressMonitor progressMonitor)
        throws InvocationTargetException, InterruptedException
    {
        SubMonitor monitor = SubMonitor.convert(progressMonitor, Messages.ResolveFeatureNamesOperation_resolvingFeatures, 100);
        List repositories = addRepositories(monitor.newChild(50));
        List installableUnits = queryInstallableUnits(monitor.newChild(50), repositories);
        Set resolvedFeatureIds = new HashSet();
        FeatureDescriptor descriptor;
        for(Iterator iterator = installableUnits.iterator(); iterator.hasNext(); featureDescriptors.add(descriptor))
        {
            IInstallableUnit iu = (IInstallableUnit)iterator.next();
            descriptor = new FeatureDescriptor(iu);
            resolvedFeatureIds.add(descriptor.getId());
            resolvedFeatureIds.add(descriptor.getSimpleId());
        }

        for(Iterator iterator1 = items.iterator(); iterator1.hasNext();)
        {
            CatalogItem catalogItem = (CatalogItem)iterator1.next();
            for(Iterator iterator2 = catalogItem.getInstallableUnits().iterator(); iterator2.hasNext();)
            {
                String iu = (String)iterator2.next();
                if(!resolvedFeatureIds.contains(iu))
                {
                    FeatureDescriptor descriptor = new FeatureDescriptor(iu);
                    unresolvedFeatureDescriptors.add(descriptor);
                }
            }

        }

        break MISSING_BLOCK_LABEL_250;
        Exception exception;
        exception;
        removeAddedRepositoryLocations();
        monitor.done();
        throw exception;
        removeAddedRepositoryLocations();
        monitor.done();
        break MISSING_BLOCK_LABEL_280;
        JVM INSTR pop ;
        throw new InterruptedException();
        Exception e;
        e;
        throw new InvocationTargetException(e);
    }

    public String getProperty(IInstallableUnit candidate, String key)
    {
        String value = TranslationSupport.getInstance().getIUProperty(candidate, key);
        return value == null ? "" : value;
    }

    public Set getFeatureDescriptors()
    {
        return featureDescriptors;
    }

    public Set getUnresolvedFeatureDescriptors()
    {
        return unresolvedFeatureDescriptors;
    }

    private final Set featureDescriptors = new HashSet();
    private final Set unresolvedFeatureDescriptors = new HashSet();
}

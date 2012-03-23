// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AggregateMappingLabelProvider.java

package org.eclipse.m2e.core.ui.internal.lifecyclemapping;

import java.util.*;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.*;
import org.eclipse.m2e.core.project.configurator.MojoExecutionKey;
import org.eclipse.osgi.util.NLS;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.lifecyclemapping:
//            ILifecycleMappingLabelProvider

public class AggregateMappingLabelProvider
    implements ILifecycleMappingLabelProvider
{

    public AggregateMappingLabelProvider(ILifecycleMappingRequirement element, List content)
    {
        this.content = content;
        this.element = element;
    }

    public String getMavenText()
    {
        if(element instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.PackagingTypeMappingConfiguration.LifecycleStrategyMappingRequirement)
            return NLS.bind("Connector {0}", ((org.eclipse.m2e.core.internal.lifecyclemapping.discovery.PackagingTypeMappingConfiguration.LifecycleStrategyMappingRequirement)element).getLifecycleMappingId());
        if(element instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)
        {
            MojoExecutionKey exec = ((org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)element).getExecution();
            return NLS.bind("{0}:{1}:{2}", new String[] {
                exec.getArtifactId(), exec.getVersion(), exec.getGoal(), String.valueOf(content.size())
            });
        }
        if(element instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.PackagingTypeMappingConfiguration.PackagingTypeMappingRequirement)
            return NLS.bind("Packaging {0}", ((org.eclipse.m2e.core.internal.lifecyclemapping.discovery.PackagingTypeMappingConfiguration.PackagingTypeMappingRequirement)element).getPackaging());
        if(element instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.ProjectConfiguratorMappingRequirement)
            return NLS.bind("Connector {0}", ((org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.ProjectConfiguratorMappingRequirement)element).getProjectConfiguratorId());
        else
            throw new IllegalStateException();
    }

    public boolean isError(LifecycleMappingConfiguration mappingConfiguration)
    {
        for(Iterator iterator = content.iterator(); iterator.hasNext();)
        {
            ILifecycleMappingLabelProvider pr = (ILifecycleMappingLabelProvider)iterator.next();
            if(pr.isError(mappingConfiguration))
                return true;
        }

        return false;
    }

    public ILifecycleMappingLabelProvider[] getChildren()
    {
        return (ILifecycleMappingLabelProvider[])content.toArray(new ILifecycleMappingLabelProvider[content.size()]);
    }

    public ILifecycleMappingRequirement getKey()
    {
        return element;
    }

    public Collection getProjects()
    {
        Set projects = new HashSet();
        ILifecycleMappingLabelProvider provider;
        for(Iterator iterator = content.iterator(); iterator.hasNext(); projects.addAll(provider.getProjects()))
            provider = (ILifecycleMappingLabelProvider)iterator.next();

        return projects;
    }

    public int hashCode()
    {
        return getMavenText().hashCode();
    }

    public boolean equals(Object other)
    {
        if(other instanceof AggregateMappingLabelProvider)
            return other.hashCode() == hashCode();
        else
            return false;
    }

    private final List content;
    private final ILifecycleMappingRequirement element;
}

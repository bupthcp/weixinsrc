// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MojoExecutionMappingLabelProvider.java

package org.eclipse.m2e.core.ui.internal.lifecyclemapping;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.m2e.core.internal.lifecyclemapping.LifecycleMappingFactory;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.*;
import org.eclipse.m2e.core.project.configurator.MojoExecutionKey;
import org.eclipse.osgi.util.NLS;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.lifecyclemapping:
//            ILifecycleMappingLabelProvider

public class MojoExecutionMappingLabelProvider
    implements ILifecycleMappingLabelProvider
{

    public MojoExecutionMappingLabelProvider(ProjectLifecycleMappingConfiguration prjconf, MojoExecutionMappingConfiguration element)
    {
        this.element = element;
        this.prjconf = prjconf;
    }

    public String getMavenText()
    {
        MojoExecutionKey execution = element.getExecution();
        if("default".equals(execution.getExecutionId()))
            return NLS.bind("{0}", prjconf.getRelpath());
        else
            return NLS.bind("Execution {0}, in {1}", execution.getExecutionId(), prjconf.getRelpath());
    }

    public boolean isError(LifecycleMappingConfiguration mappingConfiguration)
    {
        ILifecycleMappingRequirement requirement = element.getLifecycleMappingRequirement();
        return LifecycleMappingFactory.isInterestingPhase(element.getMojoExecutionKey().getLifecyclePhase()) && !mappingConfiguration.isRequirementSatisfied(requirement, true);
    }

    public ILifecycleMappingRequirement getKey()
    {
        return element.getLifecycleMappingRequirement();
    }

    public Collection getProjects()
    {
        return Collections.singleton(prjconf.getMavenProject());
    }

    private final MojoExecutionMappingConfiguration element;
    private final ProjectLifecycleMappingConfiguration prjconf;
}

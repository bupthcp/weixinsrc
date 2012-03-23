// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PackagingTypeMappingLabelProvider.java

package org.eclipse.m2e.core.ui.internal.lifecyclemapping;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.lifecyclemapping:
//            ILifecycleMappingLabelProvider

public class PackagingTypeMappingLabelProvider
    implements ILifecycleMappingLabelProvider
{

    public PackagingTypeMappingLabelProvider(ProjectLifecycleMappingConfiguration prjconf, PackagingTypeMappingConfiguration element)
    {
        this.element = element;
        this.prjconf = prjconf;
    }

    public String getMavenText()
    {
        return prjconf.getRelpath();
    }

    public boolean isError(LifecycleMappingConfiguration mappingConfiguration)
    {
        return !mappingConfiguration.isRequirementSatisfied(getKey(), true);
    }

    public ILifecycleMappingRequirement getKey()
    {
        return element.getLifecycleMappingRequirement();
    }

    public Collection getProjects()
    {
        return Collections.singleton(prjconf.getMavenProject());
    }

    private PackagingTypeMappingConfiguration element;
    private ProjectLifecycleMappingConfiguration prjconf;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProjectLifecycleMappingElement.java

package org.eclipse.m2e.core.ui.internal.lifecyclemapping;

import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.ILifecycleMappingElement;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.ProjectLifecycleMappingConfiguration;

public class ProjectLifecycleMappingElement
{

    public ProjectLifecycleMappingElement(ProjectLifecycleMappingConfiguration project, ILifecycleMappingElement element)
    {
        this.project = project;
        this.element = element;
    }

    public ProjectLifecycleMappingConfiguration getProject()
    {
        return project;
    }

    public ILifecycleMappingElement getElement()
    {
        return element;
    }

    private final ProjectLifecycleMappingConfiguration project;
    private final ILifecycleMappingElement element;
}

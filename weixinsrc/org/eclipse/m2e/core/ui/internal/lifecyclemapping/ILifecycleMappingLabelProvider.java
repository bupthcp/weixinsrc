// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ILifecycleMappingLabelProvider.java

package org.eclipse.m2e.core.ui.internal.lifecyclemapping;

import java.util.Collection;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.ILifecycleMappingRequirement;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.LifecycleMappingConfiguration;

public interface ILifecycleMappingLabelProvider
{

    public abstract String getMavenText();

    public abstract boolean isError(LifecycleMappingConfiguration lifecyclemappingconfiguration);

    public abstract ILifecycleMappingRequirement getKey();

    public abstract Collection getProjects();
}

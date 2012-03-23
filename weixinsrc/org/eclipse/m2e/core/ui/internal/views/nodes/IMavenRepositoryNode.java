// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IMavenRepositoryNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import org.eclipse.swt.graphics.Image;

public interface IMavenRepositoryNode
{

    public abstract Object[] getChildren();

    public abstract String getName();

    public abstract Image getImage();

    public abstract boolean hasChildren();

    public abstract boolean isUpdating();
}

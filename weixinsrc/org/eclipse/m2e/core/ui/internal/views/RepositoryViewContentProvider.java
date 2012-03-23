// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RepositoryViewContentProvider.java

package org.eclipse.m2e.core.ui.internal.views;

import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.ui.internal.views.nodes.CustomRepositoriesNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.GlobalRepositoriesNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.IMavenRepositoryNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.LocalRepositoryRootNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.ProjectRepositoriesNode;
import org.eclipse.ui.IViewSite;

public class RepositoryViewContentProvider
    implements IStructuredContentProvider, ITreeContentProvider
{

    public RepositoryViewContentProvider()
    {
    }

    public void inputChanged(Viewer viewer, Object obj, Object obj1)
    {
    }

    public void dispose()
    {
    }

    public Object[] getElements(Object parent)
    {
        return getChildren(parent);
    }

    public Object getParent(Object child)
    {
        return null;
    }

    public boolean hasChildren(Object parent)
    {
        if(parent instanceof IMavenRepositoryNode)
            return ((IMavenRepositoryNode)parent).hasChildren();
        else
            return false;
    }

    public Object[] getRootNodes()
    {
        if(localNode == null)
            localNode = new LocalRepositoryRootNode();
        if(globalNode == null)
            globalNode = new GlobalRepositoriesNode();
        if(projectNode == null)
            projectNode = new ProjectRepositoriesNode();
        if(customNode == null)
            customNode = new CustomRepositoriesNode();
        return (new Object[] {
            localNode, globalNode, projectNode, customNode
        });
    }

    public Object[] getChildren(Object parent)
    {
        if(parent instanceof IViewSite)
            return getRootNodes();
        if(parent instanceof IMavenRepositoryNode)
            return ((IMavenRepositoryNode)parent).getChildren();
        else
            return new Object[0];
    }

    private LocalRepositoryRootNode localNode;
    private GlobalRepositoriesNode globalNode;
    private ProjectRepositoriesNode projectNode;
    private CustomRepositoriesNode customNode;
}

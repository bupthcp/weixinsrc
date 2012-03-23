// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LocalRepositoryRootNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndexManager;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.graphics.Image;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IMavenRepositoryNode, LocalRepositoryNode, WorkspaceRepositoryNode

public class LocalRepositoryRootNode
    implements IMavenRepositoryNode
{

    public LocalRepositoryRootNode()
    {
    }

    public Object[] getChildren()
    {
        NexusIndexManager indexManager = (NexusIndexManager)MavenPlugin.getIndexManager();
        org.eclipse.m2e.core.internal.index.nexus.NexusIndex localIndex = indexManager.getLocalIndex();
        org.eclipse.m2e.core.internal.index.nexus.NexusIndex workspaceIndex = indexManager.getWorkspaceIndex();
        return (new Object[] {
            new LocalRepositoryNode(localIndex), new WorkspaceRepositoryNode(workspaceIndex)
        });
    }

    public String getName()
    {
        return Messages.LocalRepositoryRootNode_name;
    }

    public boolean hasChildren()
    {
        return true;
    }

    public Image getImage()
    {
        return MavenImages.IMG_INDEXES;
    }

    public boolean isUpdating()
    {
        return false;
    }
}

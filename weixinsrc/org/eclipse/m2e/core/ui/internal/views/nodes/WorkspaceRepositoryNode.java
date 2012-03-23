// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WorkspaceRepositoryNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import org.eclipse.m2e.core.internal.index.nexus.NexusIndex;
import org.eclipse.m2e.core.ui.internal.Messages;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            AbstractIndexedRepositoryNode

public class WorkspaceRepositoryNode extends AbstractIndexedRepositoryNode
{

    public WorkspaceRepositoryNode(NexusIndex index)
    {
        super(index);
    }

    public String getName()
    {
        return Messages.WorkspaceRepositoryNode_name;
    }
}

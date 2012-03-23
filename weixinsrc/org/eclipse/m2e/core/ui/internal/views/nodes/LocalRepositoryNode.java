// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LocalRepositoryNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.io.File;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndex;
import org.eclipse.m2e.core.repository.IRepository;
import org.eclipse.m2e.core.ui.internal.Messages;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            AbstractIndexedRepositoryNode

public class LocalRepositoryNode extends AbstractIndexedRepositoryNode
{

    public LocalRepositoryNode(NexusIndex index)
    {
        super(index);
    }

    public String getName()
    {
        IRepository repository = index.getRepository();
        StringBuilder sb = new StringBuilder();
        sb.append(Messages.LocalRepositoryNode_local);
        if(repository.getBasedir() != null)
            sb.append(" (").append(repository.getBasedir().getAbsolutePath()).append(')');
        return sb.toString();
    }
}

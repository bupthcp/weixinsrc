// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RepositoryNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import org.eclipse.m2e.core.internal.index.nexus.NexusIndex;
import org.eclipse.m2e.core.repository.IRepository;
import org.eclipse.m2e.core.ui.internal.Messages;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            AbstractIndexedRepositoryNode

public class RepositoryNode extends AbstractIndexedRepositoryNode
{

    public RepositoryNode(NexusIndex index)
    {
        super(index);
        repository = index.getRepository();
    }

    public String getName()
    {
        StringBuilder sb = new StringBuilder();
        sb.append(repository.getId());
        sb.append(" (").append(repository.getUrl()).append(")");
        if(repository.getMirrorOf() != null)
            sb.append(" [mirrorOf=").append(repository.getMirrorOf()).append("]");
        if(repository.getMirrorId() != null)
            sb.append(" [mirrored by ").append(repository.getMirrorId()).append("]");
        if(isUpdating())
            sb.append(Messages.RepositoryNode_updating);
        return sb.toString();
    }

    public String getRepositoryUrl()
    {
        return repository.getUrl();
    }

    public String getRepoName()
    {
        return repository.toString();
    }

    private final IRepository repository;
}

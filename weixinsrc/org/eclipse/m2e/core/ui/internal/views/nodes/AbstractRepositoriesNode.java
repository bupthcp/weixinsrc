// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractRepositoriesNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndexManager;
import org.eclipse.m2e.core.repository.IRepository;
import org.eclipse.m2e.core.repository.IRepositoryRegistry;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.swt.graphics.Image;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IMavenRepositoryNode, RepositoryNode

public abstract class AbstractRepositoriesNode
    implements IMavenRepositoryNode
{

    public AbstractRepositoriesNode()
    {
    }

    public Object[] getChildren()
    {
        ArrayList mirrorNodes = new ArrayList();
        ArrayList globalRepoNodes = new ArrayList();
        for(Iterator iterator = getRepositories().iterator(); iterator.hasNext();)
        {
            IRepository repo = (IRepository)iterator.next();
            org.eclipse.m2e.core.internal.index.nexus.NexusIndex index = indexManager.getIndex(repo);
            RepositoryNode node = new RepositoryNode(index);
            if(repo.getMirrorOf() != null)
                mirrorNodes.add(node);
            else
                globalRepoNodes.add(node);
        }

        ArrayList nodes = new ArrayList();
        nodes.addAll(mirrorNodes);
        nodes.addAll(globalRepoNodes);
        return nodes.toArray(new Object[nodes.size()]);
    }

    protected abstract List getRepositories();

    public String toString()
    {
        return getName();
    }

    public boolean hasChildren()
    {
        Object kids[] = getChildren();
        return kids != null && kids.length > 0;
    }

    public Image getImage()
    {
        return MavenImages.IMG_INDEXES;
    }

    public boolean isUpdating()
    {
        return false;
    }

    protected final NexusIndexManager indexManager = (NexusIndexManager)MavenPlugin.getIndexManager();
    protected final IRepositoryRegistry repositoryRegistry = MavenPlugin.getRepositoryRegistry();
}

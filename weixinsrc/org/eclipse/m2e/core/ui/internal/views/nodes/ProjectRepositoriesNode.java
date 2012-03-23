// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProjectRepositoriesNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndexManager;
import org.eclipse.m2e.core.repository.IRepository;
import org.eclipse.m2e.core.repository.IRepositoryRegistry;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.graphics.Image;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IMavenRepositoryNode, RepositoryNode

public class ProjectRepositoriesNode
    implements IMavenRepositoryNode
{

    public ProjectRepositoriesNode()
    {
        indexManager = (NexusIndexManager)MavenPlugin.getIndexManager();
        repositoryRegistry = MavenPlugin.getRepositoryRegistry();
    }

    public Object[] getChildren()
    {
        ArrayList nodes = new ArrayList();
        RepositoryNode node;
        for(Iterator iterator = repositoryRegistry.getRepositories(16).iterator(); iterator.hasNext(); nodes.add(node))
        {
            IRepository repo = (IRepository)iterator.next();
            org.eclipse.m2e.core.internal.index.nexus.NexusIndex index = indexManager.getIndex(repo);
            node = new RepositoryNode(index);
        }

        return nodes.toArray(new Object[nodes.size()]);
    }

    public Image getImage()
    {
        return MavenImages.IMG_INDEXES;
    }

    public String getName()
    {
        return Messages.ProjectRepositoriesNode_name;
    }

    public String toString()
    {
        return getName();
    }

    public boolean hasChildren()
    {
        Object kids[] = getChildren();
        return kids != null && kids.length > 0;
    }

    public boolean isUpdating()
    {
        return false;
    }

    private NexusIndexManager indexManager;
    private IRepositoryRegistry repositoryRegistry;
}

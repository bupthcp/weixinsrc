// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IndexedArtifactGroupNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.IndexedArtifact;
import org.eclipse.m2e.core.internal.index.nexus.IndexedArtifactGroup;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndexManager;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IArtifactNode, IMavenRepositoryNode, IndexedArtifactNode

public class IndexedArtifactGroupNode
    implements IMavenRepositoryNode, IArtifactNode
{

    public IndexedArtifactGroupNode(IndexedArtifactGroup group)
    {
        kids = null;
        indexedArtifactGroup = group;
    }

    public Object[] getChildren()
    {
        NexusIndexManager indexManager = (NexusIndexManager)MavenPlugin.getIndexManager();
        IndexedArtifactGroup resolvedGroup = indexManager.resolveGroup(indexedArtifactGroup);
        ArrayList results = new ArrayList();
        Collection groups = resolvedGroup.getNodes().values();
        IndexedArtifactGroupNode node;
        for(Iterator iterator = groups.iterator(); iterator.hasNext(); results.add(node))
        {
            IndexedArtifactGroup group = (IndexedArtifactGroup)iterator.next();
            node = new IndexedArtifactGroupNode(group);
        }

        Collection artifacts = resolvedGroup.getFiles().values();
        IndexedArtifactNode artifactNode;
        for(Iterator iterator1 = artifacts.iterator(); iterator1.hasNext(); results.add(artifactNode))
        {
            IndexedArtifact artifact = (IndexedArtifact)iterator1.next();
            artifactNode = new IndexedArtifactNode(artifact);
        }

        kids = results.toArray(new Object[results.size()]);
        return kids;
    }

    public String getName()
    {
        String prefix = indexedArtifactGroup.getPrefix();
        int n = prefix.lastIndexOf('.');
        return n >= 0 ? prefix.substring(n + 1) : prefix;
    }

    public boolean hasChildren()
    {
        return true;
    }

    public Image getImage()
    {
        return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJ_FOLDER");
    }

    public String getDocumentKey()
    {
        return indexedArtifactGroup.getPrefix();
    }

    public boolean isUpdating()
    {
        return false;
    }

    private IndexedArtifactGroup indexedArtifactGroup;
    private Object kids[];
}

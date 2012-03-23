// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractIndexedRepositoryNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.Arrays;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndex;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.swt.graphics.Image;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IMavenRepositoryNode, IndexedArtifactGroupNode

public abstract class AbstractIndexedRepositoryNode
    implements IMavenRepositoryNode
{

    protected AbstractIndexedRepositoryNode(NexusIndex index)
    {
        this.index = index;
    }

    public Object[] getChildren()
    {
        if(index == null)
            return NO_CHILDREN;
        org.eclipse.m2e.core.internal.index.nexus.IndexedArtifactGroup rootGroups[];
        rootGroups = index.getRootIndexedArtifactGroups();
        if(rootGroups == null)
            return NO_CHILDREN;
        try
        {
            IndexedArtifactGroupNode children[] = new IndexedArtifactGroupNode[rootGroups.length];
            Arrays.sort(rootGroups);
            for(int i = 0; i < rootGroups.length; i++)
                children[i] = new IndexedArtifactGroupNode(rootGroups[i]);

            return children;
        }
        catch(CoreException ex)
        {
            log.error(ex.getMessage(), ex);
        }
        return NO_CHILDREN;
    }

    public Image getImage()
    {
        return MavenImages.IMG_INDEX;
    }

    public boolean hasChildren()
    {
        return index != null;
    }

    public boolean isUpdating()
    {
        return index != null && index.isUpdating();
    }

    public NexusIndex getIndex()
    {
        return index;
    }

    public String getRepositoryUrl()
    {
        return index.getRepositoryUrl();
    }

    public boolean isEnabledIndex()
    {
        return index != null && index.isEnabled();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/views/nodes/AbstractIndexedRepositoryNode);
    protected static final Object NO_CHILDREN[] = new Object[0];
    protected final NexusIndex index;

}

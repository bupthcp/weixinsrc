// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IndexedArtifactFileNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import org.eclipse.core.runtime.*;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndexManager;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.swt.graphics.Image;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IArtifactNode, IMavenRepositoryNode

public class IndexedArtifactFileNode extends PlatformObject
    implements IMavenRepositoryNode, IArtifactNode, IAdaptable
{
    public static class AdapterFactory
        implements IAdapterFactory
    {

        public Object getAdapter(Object adaptableObject, Class adapterType)
        {
            if(adaptableObject instanceof IndexedArtifactFileNode)
            {
                IndexedArtifactFileNode node = (IndexedArtifactFileNode)adaptableObject;
                IndexedArtifactFile artifactFile = node.artifactFile;
                if(org/eclipse/m2e/core/embedder/ArtifactKey.equals(adapterType))
                    return new ArtifactKey(artifactFile.group, artifactFile.artifact, artifactFile.version, artifactFile.classifier);
                if(org/eclipse/m2e/core/internal/index/IndexedArtifactFile.equals(adapterType))
                    return artifactFile;
            }
            return null;
        }

        public Class[] getAdapterList()
        {
            return ADAPTERS;
        }

        private static final Class ADAPTERS[] = {
            org/eclipse/m2e/core/embedder/ArtifactKey, org/eclipse/m2e/core/internal/index/IndexedArtifactFile
        };


        public AdapterFactory()
        {
        }
    }


    public IndexedArtifactFileNode(IndexedArtifactFile artifactFile)
    {
        this.artifactFile = artifactFile;
    }

    public IndexedArtifactFile getIndexedArtifactFile()
    {
        return artifactFile;
    }

    public Object[] getChildren()
    {
        return null;
    }

    public String getName()
    {
        String label = artifactFile.artifact;
        if(artifactFile.classifier != null)
            label = (new StringBuilder(String.valueOf(label))).append(" : ").append(artifactFile.classifier).toString();
        if(artifactFile.version != null)
            label = (new StringBuilder(String.valueOf(label))).append(" : ").append(artifactFile.version).toString();
        return label;
    }

    public boolean hasChildren()
    {
        return false;
    }

    public Image getImage()
    {
        if(artifactFile.sourcesExists == 1)
            return MavenImages.IMG_VERSION_SRC;
        else
            return MavenImages.IMG_VERSION;
    }

    public String getDocumentKey()
    {
        return NexusIndexManager.getDocumentKey(artifactFile.getArtifactKey());
    }

    public boolean isUpdating()
    {
        return false;
    }

    private IndexedArtifactFile artifactFile;

}

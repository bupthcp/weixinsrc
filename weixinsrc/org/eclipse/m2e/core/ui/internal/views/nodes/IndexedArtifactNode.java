// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IndexedArtifactNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.*;
import org.eclipse.m2e.core.internal.index.IndexedArtifact;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.graphics.Image;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            IArtifactNode, IMavenRepositoryNode, IndexedArtifactFileNode

public class IndexedArtifactNode
    implements IMavenRepositoryNode, IArtifactNode
{

    public IndexedArtifactNode(IndexedArtifact artifact)
    {
        kids = null;
        this.artifact = artifact;
    }

    public Object[] getChildren()
    {
        Set files = artifact.getFiles();
        if(files == null)
            return new Object[0];
        ArrayList fileList = new ArrayList();
        IndexedArtifactFile iaf;
        for(Iterator iterator = files.iterator(); iterator.hasNext(); fileList.add(new IndexedArtifactFileNode(iaf)))
            iaf = (IndexedArtifactFile)iterator.next();

        kids = fileList.toArray(new IndexedArtifactFileNode[fileList.size()]);
        return kids;
    }

    public String getName()
    {
        String pkg = artifact.getPackaging();
        if(pkg == null)
            pkg = Messages.IndexedArtifactNode_no_pack;
        return (new StringBuilder(String.valueOf(artifact.getArtifactId()))).append(" - ").append(pkg).toString();
    }

    public boolean hasChildren()
    {
        return true;
    }

    public Image getImage()
    {
        return MavenImages.IMG_JAR;
    }

    public String getDocumentKey()
    {
        return artifact.getArtifactId();
    }

    public boolean isUpdating()
    {
        return false;
    }

    private IndexedArtifact artifact;
    private Object kids[];
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AddDependencyOperation.java

package org.eclipse.m2e.core.ui.internal.editing;

import java.util.Iterator;
import java.util.List;
import org.apache.maven.model.Dependency;
import org.apache.maven.model.Exclusion;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.editing:
//            AddExclusionOperation, PomEdits, PomHelper

public class AddDependencyOperation
    implements PomEdits.Operation
{

    public AddDependencyOperation(Dependency dependency)
    {
        this.dependency = dependency;
    }

    public void process(Document document)
    {
        org.w3c.dom.Element dependencies = PomEdits.getChild(document.getDocumentElement(), new String[] {
            "dependencies"
        });
        PomHelper.addOrUpdateDependency(dependencies, dependency.getGroupId(), dependency.getArtifactId(), dependency.getVersion() != null && dependency.getVersion().length() != 0 ? dependency.getVersion() : null, null, null, null);
        Exclusion exclusion;
        for(Iterator iterator = dependency.getExclusions().iterator(); iterator.hasNext(); (new AddExclusionOperation(dependency, new ArtifactKey(exclusion.getGroupId(), exclusion.getArtifactId(), null, null))).process(document))
            exclusion = (Exclusion)iterator.next();

    }

    private Dependency dependency;
}

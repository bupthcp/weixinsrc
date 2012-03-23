// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AddExclusionOperation.java

package org.eclipse.m2e.core.ui.internal.editing;

import org.apache.maven.model.Dependency;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.editing:
//            PomEdits, PomHelper

public class AddExclusionOperation
    implements PomEdits.Operation
{

    public AddExclusionOperation(Dependency dependency, ArtifactKey exclusion)
    {
        this.dependency = dependency;
        this.exclusion = exclusion;
    }

    public void process(Document document)
    {
        org.w3c.dom.Element depElement = PomHelper.findDependency(document, dependency);
        if(depElement != null)
        {
            org.w3c.dom.Element exclusionsElement = PomEdits.getChild(depElement, new String[] {
                "exclusions"
            });
            if(PomEdits.findChild(exclusionsElement, "exclusion", new PomEdits.Matcher[] {
    PomEdits.childEquals("groupId", exclusion.getGroupId()), PomEdits.childEquals("artifactId", exclusion.getArtifactId())
}) == null)
            {
                org.w3c.dom.Element exclusionElement = PomEdits.createElement(exclusionsElement, "exclusion");
                PomEdits.createElementWithText(exclusionElement, "artifactId", exclusion.getArtifactId());
                PomEdits.createElementWithText(exclusionElement, "groupId", exclusion.getGroupId());
                PomEdits.format(exclusionElement);
            }
        } else
        {
            log.debug((new StringBuilder("Dependency ")).append(dependency).append(" is not present for exclusion ").append(exclusion.toString()).toString());
        }
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/editing/AddExclusionOperation);
    private Dependency dependency;
    private ArtifactKey exclusion;

}

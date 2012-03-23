// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RemoveDependencyOperation.java

package org.eclipse.m2e.core.ui.internal.editing;

import org.apache.maven.model.Dependency;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.editing:
//            PomEdits, PomHelper

public class RemoveDependencyOperation
    implements PomEdits.Operation
{

    public RemoveDependencyOperation(Dependency dependency)
    {
        this.dependency = dependency;
    }

    public void process(Document document)
    {
        org.w3c.dom.Element dependencyElement = PomHelper.findDependency(document, dependency);
        if(dependencyElement != null)
        {
            org.w3c.dom.Element dependencies = PomEdits.findChild(document.getDocumentElement(), "dependencies");
            PomEdits.removeChild(dependencies, dependencyElement);
            PomEdits.removeIfNoChildElement(dependencies);
        }
    }

    private Dependency dependency;
}

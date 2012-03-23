// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PomHelper.java

package org.eclipse.m2e.core.ui.internal.editing;

import java.util.List;
import org.apache.maven.model.Dependency;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.IDocument;
import org.eclipse.ltk.core.refactoring.TextChange;
import org.eclipse.ltk.core.refactoring.TextFileChange;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.ui.*;
import org.eclipse.wst.sse.core.StructuredModelManager;
import org.eclipse.wst.sse.core.internal.provisional.IModelManager;
import org.eclipse.wst.sse.core.internal.provisional.IStructuredModel;
import org.eclipse.wst.sse.core.internal.provisional.text.IStructuredDocument;
import org.eclipse.wst.xml.core.internal.provisional.document.IDOMModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.editing:
//            ChangeCreator, PomEdits

public final class PomHelper
{

    public PomHelper()
    {
    }

    public static Element findDependency(Document document, Dependency dependency)
    {
        Element dependenciesElement = PomEdits.findChild(document.getDocumentElement(), "dependencies");
        return PomEdits.findChild(dependenciesElement, "dependency", new PomEdits.Matcher[] {
            PomEdits.childEquals("groupId", dependency.getGroupId()), PomEdits.childEquals("artifactId", dependency.getArtifactId())
        });
    }

    private static boolean isOpened(IDocument document)
    {
        IWorkbenchWindow aiworkbenchwindow[];
        int j = (aiworkbenchwindow = PlatformUI.getWorkbench().getWorkbenchWindows()).length;
        for(int i = 0; i < j; i++)
        {
            IWorkbenchWindow window = aiworkbenchwindow[i];
            IWorkbenchPage aiworkbenchpage[];
            int l = (aiworkbenchpage = window.getPages()).length;
            for(int k = 0; k < l; k++)
            {
                IWorkbenchPage page = aiworkbenchpage[k];
                IEditorReference aieditorreference[];
                int j1 = (aieditorreference = page.getEditorReferences()).length;
                for(int i1 = 0; i1 < j1; i1++)
                {
                    IEditorReference ref = aieditorreference[i1];
                    IEditorPart editor = ref.getEditor(false);
                    if(editor != null)
                    {
                        IDocument doc = (IDocument)editor.getAdapter(org/eclipse/jface/text/IDocument);
                        if(doc != null && doc.equals(document))
                            return true;
                    }
                }

            }

        }

        return false;
    }

    public static TextChange createChange(IFile file, PomEdits.Operation operation, String label, boolean forceSave)
        throws CoreException
    {
        IStructuredModel model = null;
        TextChange textchange;
        try
        {
            model = StructuredModelManager.getModelManager().getModelForRead(file);
            IDocument document = model.getStructuredDocument();
            boolean existing = isOpened(document);
            IStructuredModel tempModel = StructuredModelManager.getModelManager().createUnManagedStructuredModelFor("org.eclipse.m2e.core.pomFile");
            tempModel.getStructuredDocument().setText(StructuredModelManager.getModelManager(), document.get());
            IDocument tempDocument = tempModel.getStructuredDocument();
            PomEdits.performOnDOMDocument(new PomEdits.OperationTuple[] {
                new PomEdits.OperationTuple((IDOMModel)tempModel, operation)
            });
            TextChange change = (new ChangeCreator(forceSave || !existing ? file : null, document, tempDocument, label)).createChange();
            if(forceSave && !$assertionsDisabled && !(change instanceof TextFileChange))
                throw new AssertionError();
            if(forceSave && (change instanceof TextFileChange))
                ((TextFileChange)change).setSaveMode(2);
            textchange = change;
        }
        catch(Exception exc)
        {
            LOG.error(Messages.PomHelper_errorCreatingChange, exc);
            throw new CoreException(new Status(4, "org.eclipse.m2e.core.ui", Messages.PomHelper_errorCreatingChange, exc));
        }
        if(model != null)
            model.releaseFromRead();
        return textchange;
        Exception exception;
        exception;
        if(model != null)
            model.releaseFromRead();
        throw exception;
    }

    public static TextChange createChange(IFile file, PomEdits.Operation operation, String label)
        throws CoreException
    {
        return createChange(file, operation, label, false);
    }

    public static Element createPlugin(Element parentList, String groupId, String artifactId, String version)
    {
        Document doc = parentList.getOwnerDocument();
        Element plug = doc.createElement("plugin");
        parentList.appendChild(plug);
        if(groupId != null)
            PomEdits.createElementWithText(plug, "groupId", groupId);
        PomEdits.createElementWithText(plug, "artifactId", artifactId);
        if(version != null)
            PomEdits.createElementWithText(plug, "version", version);
        PomEdits.format(plug);
        return plug;
    }

    public static Element createDependency(Element parentList, String groupId, String artifactId, String version)
    {
        Element dep = PomEdits.createElement(parentList, "dependency");
        if(groupId != null)
            PomEdits.createElementWithText(dep, "groupId", groupId);
        PomEdits.createElementWithText(dep, "artifactId", artifactId);
        if(version != null)
            PomEdits.createElementWithText(dep, "version", version);
        PomEdits.format(dep);
        return dep;
    }

    public static List findDependencies(Element node)
    {
        return PomEdits.findChilds(PomEdits.findChild(node, "dependencies"), "dependency");
    }

    public static Element addOrUpdateDependency(Element depsEl, String groupId, String artifactId, String version, String type, String scope, String classifier)
    {
        Element dep = PomEdits.findChild(depsEl, "dependency", new PomEdits.Matcher[] {
            PomEdits.childEquals("groupId", groupId), PomEdits.childEquals("artifactId", artifactId)
        });
        if(dep == null)
            dep = createDependency(depsEl, groupId, artifactId, version);
        else
        if(version != null)
            PomEdits.setText(PomEdits.getChild(dep, new String[] {
                "version"
            }), version);
        else
            PomEdits.removeChild(dep, PomEdits.findChild(dep, "version"));
        if(type != null && !"jar".equals(type) && !"null".equals(type))
            PomEdits.setText(PomEdits.getChild(dep, new String[] {
                "type"
            }), type);
        else
            PomEdits.removeChild(dep, PomEdits.findChild(dep, "type"));
        if(classifier != null)
            PomEdits.setText(PomEdits.getChild(dep, new String[] {
                "classifier"
            }), classifier);
        else
            PomEdits.removeChild(dep, PomEdits.findChild(dep, "classifier"));
        if(scope != null && !"compile".equals(scope))
            PomEdits.setText(PomEdits.getChild(dep, new String[] {
                "scope"
            }), scope);
        else
            PomEdits.removeChild(dep, PomEdits.findChild(dep, "scope"));
        return dep;
    }

    private static final Logger LOG = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/editing/PomHelper);
    static final boolean $assertionsDisabled = !org/eclipse/m2e/core/ui/internal/editing/PomHelper.desiredAssertionStatus();

}

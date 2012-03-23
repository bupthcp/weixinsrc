// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AddPluginAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.action.IAction;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.dialogs.MavenRepositorySearchDialog;
import org.eclipse.m2e.core.ui.internal.editing.PomEdits;
import org.eclipse.m2e.core.ui.internal.editing.PomHelper;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            MavenActionSupport

public class AddPluginAction extends MavenActionSupport
    implements IWorkbenchWindowActionDelegate
{

    public AddPluginAction()
    {
    }

    public void run(IAction action)
    {
        IFile file = getPomFileFromPomEditorOrViewSelection();
        if(file == null)
            return;
        org.apache.maven.project.MavenProject mp = null;
        org.eclipse.core.resources.IProject prj = file.getProject();
        if(prj != null && "pom.xml".equals(file.getProjectRelativePath().toString()))
        {
            IMavenProjectFacade facade = MavenPlugin.getMavenProjectRegistry().getProject(prj);
            if(facade != null)
                mp = facade.getMavenProject();
        }
        MavenRepositorySearchDialog dialog = MavenRepositorySearchDialog.createSearchPluginDialog(getShell(), Messages.AddPluginAction_searchDialog_title, mp, prj, false);
        if(dialog.open() == 0)
        {
            final IndexedArtifactFile indexedArtifactFile = (IndexedArtifactFile)dialog.getFirstResult();
            if(indexedArtifactFile != null)
                try
                {
                    PomEdits.performOnDOMDocument(new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple[] {
                        new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple(file, new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Operation() {

                            public void process(Document document)
                            {
                                org.w3c.dom.Element pluginsEl = PomEdits.getChild(document.getDocumentElement(), new String[] {
                                    "build", "plugins"
                                });
                                PomHelper.createPlugin(pluginsEl, indexedArtifactFile.group, indexedArtifactFile.artifact, indexedArtifactFile.version);
                            }

                            final AddPluginAction this$0;
                            private final IndexedArtifactFile val$indexedArtifactFile;

            
            {
                this$0 = AddPluginAction.this;
                indexedArtifactFile = indexedartifactfile;
                super();
            }
                        }
)
                    });
                }
                catch(Exception ex)
                {
                    log.error((new StringBuilder("Can't add plugin to ")).append(file).toString(), ex);
                }
        }
    }

    public void dispose()
    {
    }

    public void init(IWorkbenchWindow iworkbenchwindow)
    {
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/AddPluginAction);
    public static final String ID = "org.eclipse.m2e.addPluginAction";

}

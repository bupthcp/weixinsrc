// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AddDependencyAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.apache.maven.model.Dependency;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.dialogs.MavenRepositorySearchDialog;
import org.eclipse.m2e.core.ui.internal.editing.PomEdits;
import org.eclipse.m2e.core.ui.internal.editing.PomHelper;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            MavenActionSupport

public class AddDependencyAction extends MavenActionSupport
    implements IWorkbenchWindowActionDelegate
{

    public AddDependencyAction()
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
        MavenRepositorySearchDialog dialog = MavenRepositorySearchDialog.createSearchDependencyDialog(getShell(), Messages.AddDependencyAction_searchDialog_title, mp, prj, false);
        if(dialog.open() == 0)
        {
            IndexedArtifactFile indexedArtifactFile = (IndexedArtifactFile)dialog.getFirstResult();
            if(indexedArtifactFile != null)
                try
                {
                    final Dependency dependency = indexedArtifactFile.getDependency();
                    String selectedScope = dialog.getSelectedScope();
                    dependency.setScope(selectedScope);
                    if(indexedArtifactFile.version == null)
                        dependency.setVersion(null);
                    PomEdits.performOnDOMDocument(new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple[] {
                        new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple(file, new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Operation() {

                            public void process(Document document)
                            {
                                org.w3c.dom.Element depsEl = PomEdits.getChild(document.getDocumentElement(), new String[] {
                                    "dependencies"
                                });
                                org.w3c.dom.Element dep = PomEdits.findChild(depsEl, "dependency", new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Matcher[] {
                                    PomEdits.childEquals("groupId", dependency.getGroupId()), PomEdits.childEquals("artifactId", dependency.getArtifactId())
                                });
                                if(dep == null)
                                    dep = PomHelper.createDependency(depsEl, dependency.getGroupId(), dependency.getArtifactId(), dependency.getVersion());
                                else
                                if(dependency.getVersion() != null)
                                    PomEdits.setText(PomEdits.getChild(dep, new String[] {
                                        "version"
                                    }), dependency.getVersion());
                                if(dependency.getType() != null && !"jar".equals(dependency.getType()) && !"null".equals(dependency.getType()))
                                    PomEdits.setText(PomEdits.getChild(dep, new String[] {
                                        "type"
                                    }), dependency.getType());
                                if(dependency.getClassifier() != null)
                                    PomEdits.setText(PomEdits.getChild(dep, new String[] {
                                        "classifier"
                                    }), dependency.getClassifier());
                                if(dependency.getScope() != null && !"compile".equals(dependency.getScope()))
                                    PomEdits.setText(PomEdits.getChild(dep, new String[] {
                                        "scope"
                                    }), dependency.getScope());
                            }

                            final AddDependencyAction this$0;
                            private final Dependency val$dependency;

            
            {
                this$0 = AddDependencyAction.this;
                dependency = dependency1;
                super();
            }
                        }
)
                    });
                }
                catch(Exception ex)
                {
                    String msg = NLS.bind(Messages.AddDependencyAction_error_msg, file);
                    log.error(msg, ex);
                    MessageDialog.openError(Display.getCurrent().getActiveShell(), Messages.AddDependencyAction_error_title, msg);
                }
        }
    }

    public void dispose()
    {
    }

    public void init(IWorkbenchWindow iworkbenchwindow)
    {
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/AddDependencyAction);
    public static final String ID = "org.eclipse.m2e.addDependencyAction";

}

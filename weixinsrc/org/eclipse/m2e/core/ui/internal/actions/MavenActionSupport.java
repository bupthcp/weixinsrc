// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenActionSupport.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.util.*;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactRef;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class MavenActionSupport
    implements IObjectActionDelegate
{

    public MavenActionSupport()
    {
    }

    protected Set getArtifacts(IFile file, MavenPlugin plugin)
    {
        try
        {
            IMavenProjectFacade projectFacade = MavenPlugin.getMavenProjectRegistry().create(file, true, new NullProgressMonitor());
            if(projectFacade != null)
                return ArtifactRef.toArtifactKey(projectFacade.getMavenProjectArtifacts());
        }
        catch(Exception ex)
        {
            log.error((new StringBuilder("Can't read Maven project: ")).append(ex.getMessage()).toString(), ex);
        }
        return Collections.emptySet();
    }

    public void setActivePart(IAction action, IWorkbenchPart targetPart)
    {
        this.targetPart = targetPart;
    }

    public void selectionChanged(IAction action, ISelection selection)
    {
        if(selection instanceof IStructuredSelection)
            this.selection = (IStructuredSelection)selection;
        else
            this.selection = null;
    }

    protected Shell getShell()
    {
        Shell shell = null;
        if(targetPart != null)
            shell = targetPart.getSite().getShell();
        if(shell != null)
            return shell;
        IWorkbench workbench = M2EUIPluginActivator.getDefault().getWorkbench();
        if(workbench == null)
        {
            return null;
        } else
        {
            IWorkbenchWindow window = workbench.getActiveWorkbenchWindow();
            return window != null ? window.getShell() : null;
        }
    }

    protected IFile getPomFileFromPomEditorOrViewSelection()
    {
        IFile file = null;
        Object o = selection.iterator().next();
        if(o instanceof IProject)
            file = ((IProject)o).getFile("pom.xml");
        else
        if(o instanceof IFile)
            file = (IFile)o;
        if(file != null)
            return file;
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if(window != null)
        {
            IWorkbenchPage page = window.getActivePage();
            if(page != null)
            {
                IEditorPart editor = page.getActiveEditor();
                if(editor != null)
                {
                    org.eclipse.ui.IEditorInput input = editor.getEditorInput();
                    if(input instanceof IFileEditorInput)
                    {
                        IFileEditorInput fileInput = (IFileEditorInput)input;
                        file = fileInput.getFile();
                        if(file.getName().equals("pom.xml"))
                            return file;
                    }
                }
            }
        }
        return null;
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/MavenActionSupport);
    protected IStructuredSelection selection;
    protected IWorkbenchPart targetPart;

}

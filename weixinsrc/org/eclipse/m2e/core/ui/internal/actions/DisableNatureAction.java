// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DisableNatureAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.util.Iterator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IProjectConfigurationManager;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DisableNatureAction
    implements IObjectActionDelegate
{

    public DisableNatureAction()
    {
    }

    public void run(IAction action)
    {
        if(selection instanceof IStructuredSelection)
        {
            IStructuredSelection structuredSelection = (IStructuredSelection)selection;
            for(Iterator it = structuredSelection.iterator(); it.hasNext();)
            {
                Object element = it.next();
                IProject project = null;
                if(element instanceof IProject)
                    project = (IProject)element;
                else
                if(element instanceof IAdaptable)
                    project = (IProject)((IAdaptable)element).getAdapter(org/eclipse/core/resources/IProject);
                if(project != null)
                    try
                    {
                        MavenPlugin.getProjectConfigurationManager().disableMavenNature(project, new NullProgressMonitor());
                    }
                    catch(CoreException ex)
                    {
                        log.error(ex.getMessage(), ex);
                    }
            }

        }
    }

    public void selectionChanged(IAction action, ISelection selection)
    {
        this.selection = selection;
    }

    public void setActivePart(IAction iaction, IWorkbenchPart iworkbenchpart)
    {
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/DisableNatureAction);
    public static final String ID = "org.eclipse.m2e.disableAction";
    private ISelection selection;

}

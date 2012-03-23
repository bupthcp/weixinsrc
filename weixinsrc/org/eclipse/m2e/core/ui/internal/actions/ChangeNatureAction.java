// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ChangeNatureAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.util.*;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMavenConfiguration;
import org.eclipse.m2e.core.project.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

public class ChangeNatureAction
    implements IObjectActionDelegate, IExecutableExtension
{
    static class UpdateJob extends WorkspaceJob
    {

        public IStatus runInWorkspace(IProgressMonitor monitor)
        {
            MultiStatus status = null;
            for(Iterator iterator = projects.iterator(); iterator.hasNext();)
            {
                IProject project = (IProject)iterator.next();
                if(monitor.isCanceled())
                    throw new OperationCanceledException();
                monitor.subTask(project.getName());
                try
                {
                    changeNature(project, monitor);
                }
                catch(CoreException ex)
                {
                    if(status == null)
                        status = new MultiStatus("org.eclipse.m2e.core", 4, Messages.ChangeNatureAction_status_error, null);
                    status.add(ex.getStatus());
                }
            }

            boolean offline = mavenConfiguration.isOffline();
            boolean updateSnapshots = false;
            projectManager.refresh(new MavenUpdateRequest((IProject[])projects.toArray(new IProject[projects.size()]), offline, updateSnapshots));
            return ((IStatus) (status == null ? Status.OK_STATUS : status));
        }

        private void changeNature(IProject project, IProgressMonitor monitor)
            throws CoreException
        {
            IProjectConfigurationManager configurationManager = MavenPlugin.getProjectConfigurationManager();
            ResolverConfiguration configuration = configurationManager.getResolverConfiguration(project);
            boolean updateSourceFolders = false;
            switch(option)
            {
            case 1: // '\001'
                configuration.setResolveWorkspaceProjects(true);
                break;

            case 2: // '\002'
                configuration.setResolveWorkspaceProjects(false);
                break;
            }
            configurationManager.setResolverConfiguration(project, configuration);
            if(updateSourceFolders)
                importManager.updateProjectConfiguration(project, monitor);
        }

        private final Set projects;
        private final int option;
        private final IProjectConfigurationManager importManager = MavenPlugin.getProjectConfigurationManager();
        private final IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
        private final IMavenConfiguration mavenConfiguration = MavenPlugin.getMavenConfiguration();

        public UpdateJob(Set projects, int option)
        {
            super(Messages.ChangeNatureAction_job_changing);
            this.projects = projects;
            this.option = option;
        }
    }


    public ChangeNatureAction()
    {
        this(1);
    }

    public ChangeNatureAction(int option)
    {
        this.option = option;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data)
    {
        if(data != null)
        {
            if("enableWorkspaceResolution".equals(data))
                option = 1;
            if("disableWorkspaceResolution".equals(data))
                option = 2;
        }
    }

    public void selectionChanged(IAction action, ISelection selection)
    {
        this.selection = selection;
    }

    public void setActivePart(IAction iaction, IWorkbenchPart iworkbenchpart)
    {
    }

    public void run(IAction action)
    {
        if(selection instanceof IStructuredSelection)
        {
            IStructuredSelection structuredSelection = (IStructuredSelection)selection;
            Set projects = new LinkedHashSet();
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
                    projects.add(project);
            }

            (new UpdateJob(projects, option)).schedule();
        }
    }

    public static final String ID_ENABLE_WORKSPACE = "org.eclipse.m2e.enableWorkspaceResolutionAction";
    public static final String ID_DISABLE_WORKSPACE = "org.eclipse.m2e.disableWorkspaceResolutionAction";
    public static final int ENABLE_WORKSPACE = 1;
    public static final int DISABLE_WORKSPACE = 2;
    private ISelection selection;
    private int option;
}

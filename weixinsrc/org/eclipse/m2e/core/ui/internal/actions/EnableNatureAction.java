// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EnableNatureAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.util.Iterator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IProjectConfigurationManager;
import org.eclipse.m2e.core.project.ResolverConfiguration;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.wizards.MavenPomWizard;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EnableNatureAction
    implements IObjectActionDelegate, IExecutableExtension
{

    public EnableNatureAction()
    {
        workspaceProjects = true;
    }

    public EnableNatureAction(String option)
    {
        workspaceProjects = true;
        setInitializationData(null, null, option);
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data)
    {
        if("noworkspace".equals(data))
            workspaceProjects = false;
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
                    enableNature(project, structuredSelection.size() == 1);
            }

        }
    }

    private void enableNature(IProject project, boolean isSingle)
    {
        M2EUIPluginActivator plugin = M2EUIPluginActivator.getDefault();
        IFile pom = project.getFile("pom.xml");
        if(!pom.exists())
            if(isSingle)
            {
                IWorkbench workbench = plugin.getWorkbench();
                MavenPomWizard wizard = new MavenPomWizard();
                wizard.init(workbench, (IStructuredSelection)selection);
                Shell shell = workbench.getActiveWorkbenchWindow().getShell();
                WizardDialog wizardDialog = new WizardDialog(shell, wizard);
                wizardDialog.create();
                wizardDialog.getShell().setText(Messages.EnableNatureAction_wizard_shell);
                if(wizardDialog.open() == 1)
                    return;
            } else
            {
                log.warn(NLS.bind("Skipping project {0}, no pom.xml file present, no reason to have maven nature enabled", project.getName()));
                return;
            }
        Job job = new Job(project) {

            protected IStatus run(IProgressMonitor monitor)
            {
                try
                {
                    ResolverConfiguration configuration = new ResolverConfiguration();
                    configuration.setResolveWorkspaceProjects(workspaceProjects);
                    configuration.setActiveProfiles("");
                    boolean hasMavenNature = project.hasNature("org.eclipse.m2e.core.maven2Nature");
                    IProjectConfigurationManager configurationManager = MavenPlugin.getProjectConfigurationManager();
                    configurationManager.enableMavenNature(project, configuration, monitor);
                    if(!hasMavenNature)
                        configurationManager.updateProjectConfiguration(project, monitor);
                }
                catch(CoreException ex)
                {
                    EnableNatureAction.log.error(ex.getMessage(), ex);
                }
                return Status.OK_STATUS;
            }

            final EnableNatureAction this$0;
            private final IProject val$project;

            
            {
                this$0 = EnableNatureAction.this;
                project = iproject;
                super($anonymous0);
            }
        }
;
        job.schedule();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/EnableNatureAction);
    public static final String ID = "org.eclipse.m2e.enableNatureAction";
    static final String ID_WORKSPACE = "org.eclipse.m2e.enableWorkspaceResolutionAction";
    static final String ID_MODULES = "org.eclipse.m2e.enableModulesAction";
    private boolean workspaceProjects;
    private ISelection selection;



}

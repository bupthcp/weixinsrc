// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectPreferencePage.java

package org.eclipse.m2e.core.ui.internal.preferences;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IProjectConfigurationManager;
import org.eclipse.m2e.core.project.ResolverConfiguration;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.dialogs.PropertyPage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MavenProjectPreferencePage extends PropertyPage
{

    public MavenProjectPreferencePage()
    {
        setTitle(Messages.MavenProjectPreferencePage_title);
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout(2, false));
        composite.setLayoutData(new GridData(4));
        Label profilesLabel = new Label(composite, 0);
        profilesLabel.setLayoutData(new GridData(4, 0x1000000, false, false, 2, 1));
        profilesLabel.setText(Messages.MavenProjectPreferencePage_lblProfiles);
        activeProfilesText = new Text(composite, 2048);
        activeProfilesText.setLayoutData(new GridData(4, 0x1000000, true, false, 2, 1));
        resolveWorspaceProjectsButton = new Button(composite, 32);
        GridData resolveWorspaceProjectsButtonData = new GridData(4, 0x1000000, true, false, 2, 1);
        resolveWorspaceProjectsButton.setLayoutData(resolveWorspaceProjectsButtonData);
        resolveWorspaceProjectsButton.setText(Messages.MavenProjectPreferencePage_btnResolve);
        init(getResolverConfiguration());
        return composite;
    }

    protected void performDefaults()
    {
        init(new ResolverConfiguration());
    }

    private void init(ResolverConfiguration configuration)
    {
        resolveWorspaceProjectsButton.setSelection(configuration.shouldResolveWorkspaceProjects());
        activeProfilesText.setText(configuration.getActiveProfiles());
    }

    public boolean performOk()
    {
        IProject project = getProject();
        if(!project.isAccessible() || !project.hasNature("org.eclipse.m2e.core.maven2Nature"))
            return true;
        break MISSING_BLOCK_LABEL_43;
        CoreException ex;
        ex;
        log.error(ex.getMessage(), ex);
        return false;
        ResolverConfiguration configuration = getResolverConfiguration();
        if(configuration.getActiveProfiles().equals(activeProfilesText.getText()) && configuration.shouldResolveWorkspaceProjects() == resolveWorspaceProjectsButton.getSelection())
            return true;
        configuration.setResolveWorkspaceProjects(resolveWorspaceProjectsButton.getSelection());
        configuration.setActiveProfiles(activeProfilesText.getText());
        IProjectConfigurationManager projectManager = MavenPlugin.getProjectConfigurationManager();
        boolean isSet = projectManager.setResolverConfiguration(getProject(), configuration);
        if(isSet)
        {
            boolean res = MessageDialog.openQuestion(getShell(), Messages.MavenProjectPreferencePage_dialog_title, Messages.MavenProjectPreferencePage_dialog_message);
            if(res)
            {
                WorkspaceJob job = new WorkspaceJob(project) {

                    public IStatus runInWorkspace(IProgressMonitor monitor)
                    {
                        try
                        {
                            MavenPlugin.getProjectConfigurationManager().updateProjectConfiguration(project, monitor);
                        }
                        catch(CoreException ex)
                        {
                            return ex.getStatus();
                        }
                        return Status.OK_STATUS;
                    }

                    final MavenProjectPreferencePage this$0;
                    private final IProject val$project;

            
            {
                this$0 = MavenProjectPreferencePage.this;
                project = iproject;
                super($anonymous0);
            }
                }
;
                job.setRule(MavenPlugin.getProjectConfigurationManager().getRule());
                job.schedule();
            }
        }
        return isSet;
    }

    private ResolverConfiguration getResolverConfiguration()
    {
        IProjectConfigurationManager projectManager = MavenPlugin.getProjectConfigurationManager();
        return projectManager.getResolverConfiguration(getProject());
    }

    private IProject getProject()
    {
        return (IProject)getElement().getAdapter(org/eclipse/core/resources/IProject);
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/preferences/MavenProjectPreferencePage);
    private Button resolveWorspaceProjectsButton;
    private Text activeProfilesText;

}

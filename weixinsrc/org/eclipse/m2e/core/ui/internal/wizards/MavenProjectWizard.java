// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectWizard.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.io.File;
import java.util.*;
import org.apache.maven.archetype.catalog.Archetype;
import org.apache.maven.model.Model;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IProjectConfigurationManager;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.SelectionUtil;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.INewWizard;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenProjectWizard, MavenProjectWizardArchetypePage, MavenProjectWizardArchetypeParametersPage, MavenProjectWizardArtifactPage, 
//            MavenProjectWizardLocationPage, AbstactCreateMavenProjectJob

public class MavenProjectWizard extends AbstractMavenProjectWizard
    implements INewWizard
{

    public MavenProjectWizard()
    {
        setWindowTitle(Messages.wizardProjectTitle);
        setDefaultPageImageDescriptor(MavenImages.WIZ_NEW_PROJECT);
        setNeedsProgressMonitor(true);
    }

    public void addPages()
    {
        locationPage = new MavenProjectWizardLocationPage(importConfiguration, Messages.wizardProjectPageProjectTitle, Messages.wizardProjectPageProjectDescription, workingSets) {

            protected void createAdditionalControls(Composite container)
            {
                simpleProject = new Button(container, 32);
                simpleProject.setText(Messages.wizardProjectPageProjectSimpleProject);
                simpleProject.setLayoutData(new GridData(4, 128, false, false, 3, 1));
                simpleProject.addSelectionListener(new SelectionAdapter() {

                    public void widgetSelected(SelectionEvent e)
                    {
                        validate();
                    }

                    final _cls1 this$1;

                    
                    {
                        this$1 = _cls1.this;
                        super();
                    }
                }
);
                Label label = new Label(container, 0);
                GridData labelData = new GridData(4, 128, false, false, 3, 1);
                labelData.heightHint = 10;
                label.setLayoutData(labelData);
            }

            public IWizardPage getNextPage()
            {
                return getPage(simpleProject.getSelection() ? "MavenProjectWizardArtifactPage" : "MavenProjectWizardArchetypePage");
            }

            final MavenProjectWizard this$0;

            
            {
                this$0 = MavenProjectWizard.this;
                super($anonymous0, $anonymous1, $anonymous2, $anonymous3);
            }
        }
;
        locationPage.setLocationPath(SelectionUtil.getSelectedLocation(selection));
        archetypePage = new MavenProjectWizardArchetypePage(importConfiguration);
        parametersPage = new MavenProjectWizardArchetypeParametersPage(importConfiguration);
        artifactPage = new MavenProjectWizardArtifactPage(importConfiguration);
        addPage(locationPage);
        addPage(archetypePage);
        addPage(parametersPage);
        addPage(artifactPage);
    }

    public void createPageControls(Composite pageContainer)
    {
        super.createPageControls(pageContainer);
        simpleProject.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                boolean isSimpleproject = simpleProject.getSelection();
                archetypePage.setUsed(!isSimpleproject);
                parametersPage.setUsed(!isSimpleproject);
                artifactPage.setUsed(isSimpleproject);
                getContainer().updateButtons();
            }

            final MavenProjectWizard this$0;

            
            {
                this$0 = MavenProjectWizard.this;
                super();
            }
        }
);
        archetypePage.addArchetypeSelectionListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent selectionchangedevent)
            {
                parametersPage.setArchetype(archetypePage.getArchetype());
                getContainer().updateButtons();
            }

            final MavenProjectWizard this$0;

            
            {
                this$0 = MavenProjectWizard.this;
                super();
            }
        }
);
    }

    public Model getModel()
    {
        if(simpleProject.getSelection())
            return artifactPage.getModel();
        else
            return parametersPage.getModel();
    }

    public boolean performFinish()
    {
        Model model = getModel();
        final String projectName = importConfiguration.getProjectName(model);
        IStatus nameStatus = importConfiguration.validateProjectName(model);
        if(!nameStatus.isOK())
        {
            MessageDialog.openError(getShell(), NLS.bind(Messages.wizardProjectJobFailed, projectName), nameStatus.getMessage());
            return false;
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IPath location = locationPage.isInWorkspace() ? null : locationPage.getLocationPath();
        IWorkspaceRoot root = workspace.getRoot();
        IProject project = importConfiguration.getProject(root, model);
        boolean pomExists = (locationPage.isInWorkspace() ? root.getLocation().append(project.getName()) : location).append("pom.xml").toFile().exists();
        if(pomExists)
        {
            MessageDialog.openError(getShell(), NLS.bind(Messages.wizardProjectJobFailed, projectName), Messages.wizardProjectErrorPomAlreadyExists);
            return false;
        }
        Job job;
        if(simpleProject.getSelection())
        {
            String folders[] = artifactPage.getFolders();
            job = new AbstactCreateMavenProjectJob(model, folders) {

                protected List doCreateMavenProjects(IProgressMonitor monitor)
                    throws CoreException
                {
                    MavenPlugin.getProjectConfigurationManager().createSimpleProject(project, location, model, folders, importConfiguration, monitor);
                    return Arrays.asList(new IProject[] {
                        project
                    });
                }

                final MavenProjectWizard this$0;
                private final IProject val$project;
                private final IPath val$location;
                private final Model val$model;
                private final String val$folders[];

            
            {
                this$0 = MavenProjectWizard.this;
                project = iproject;
                location = ipath;
                model = model1;
                folders = as;
                super($anonymous0, $anonymous1);
            }
            }
;
        } else
        {
            Archetype archetype = archetypePage.getArchetype();
            String groupId = model.getGroupId();
            String artifactId = model.getArtifactId();
            String version = model.getVersion();
            String javaPackage = parametersPage.getJavaPackage();
            Properties properties = parametersPage.getProperties();
            job = new AbstactCreateMavenProjectJob(javaPackage, properties) {

                protected List doCreateMavenProjects(IProgressMonitor monitor)
                    throws CoreException
                {
                    MavenPlugin.getProjectConfigurationManager().createArchetypeProject(project, location, archetype, groupId, artifactId, version, javaPackage, properties, importConfiguration, monitor);
                    return Arrays.asList(new IProject[] {
                        project
                    });
                }

                final MavenProjectWizard this$0;
                private final IProject val$project;
                private final IPath val$location;
                private final Archetype val$archetype;
                private final String val$groupId;
                private final String val$artifactId;
                private final String val$version;
                private final String val$javaPackage;
                private final Properties val$properties;

            
            {
                this$0 = MavenProjectWizard.this;
                project = iproject;
                location = ipath;
                archetype = archetype1;
                groupId = s;
                artifactId = s1;
                version = s2;
                javaPackage = s3;
                properties = properties1;
                super($anonymous0, $anonymous1);
            }
            }
;
        }
        job.addJobChangeListener(new JobChangeAdapter() {

            public void done(IJobChangeEvent event)
            {
                final IStatus result = event.getResult();
                if(!result.isOK())
                    Display.getDefault().asyncExec(new Runnable() {

                        public void run()
                        {
                            MessageDialog.openError(getShell(), NLS.bind(Messages.wizardProjectJobFailed, projectName), result.getMessage());
                        }

                        final _cls6 this$1;
                        private final String val$projectName;
                        private final IStatus val$result;

                    
                    {
                        this$1 = _cls6.this;
                        projectName = s;
                        result = istatus;
                        super();
                    }
                    }
);
            }

            final MavenProjectWizard this$0;
            private final String val$projectName;


            
            {
                this$0 = MavenProjectWizard.this;
                projectName = s;
                super();
            }
        }
);
        job.setRule(MavenPlugin.getProjectConfigurationManager().getRule());
        job.schedule();
        return true;
    }

    protected MavenProjectWizardLocationPage locationPage;
    protected MavenProjectWizardArchetypePage archetypePage;
    protected MavenProjectWizardArtifactPage artifactPage;
    protected MavenProjectWizardArchetypeParametersPage parametersPage;
    protected Button simpleProject;
}

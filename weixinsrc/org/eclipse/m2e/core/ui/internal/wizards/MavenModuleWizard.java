// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenModuleWizard.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.*;
import org.apache.maven.archetype.catalog.Archetype;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IProjectConfigurationManager;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.OpenMavenConsoleAction;
import org.eclipse.m2e.core.ui.internal.editing.PomEdits;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.INewWizard;
import org.eclipse.ui.progress.IProgressConstants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenProjectWizard, MavenModuleWizardParentPage, MavenProjectWizardArchetypePage, MavenProjectWizardArchetypeParametersPage, 
//            MavenProjectWizardArtifactPage, AbstactCreateMavenProjectJob

public class MavenModuleWizard extends AbstractMavenProjectWizard
    implements INewWizard
{

    public MavenModuleWizard()
    {
        isEditor = false;
        setWindowTitle(Messages.wizardModuleTitle);
        setDefaultPageImageDescriptor(MavenImages.WIZ_NEW_PROJECT);
        setNeedsProgressMonitor(true);
    }

    public MavenModuleWizard(boolean isEditor)
    {
        this();
        this.isEditor = isEditor;
    }

    public void addPages()
    {
        parentPage = new MavenModuleWizardParentPage(importConfiguration, workingSets);
        archetypePage = new MavenProjectWizardArchetypePage(importConfiguration);
        parametersPage = new MavenProjectWizardArchetypeParametersPage(importConfiguration);
        artifactPage = new MavenProjectWizardArtifactPage(importConfiguration);
        addPage(parentPage);
        addPage(archetypePage);
        addPage(parametersPage);
        addPage(artifactPage);
    }

    public void createPageControls(Composite pageContainer)
    {
        artifactPage.setParentReadonly(true);
        artifactPage.setTitle(Messages.wizardModulePageArtifactTitle);
        archetypePage.setTitle(Messages.wizardModulePageArchetypeTitle);
        parametersPage.setTitle(Messages.wizardModulePageParametersTitle);
        super.createPageControls(pageContainer);
        parametersPage.setArtifactIdEnabled(false);
        parentPage.addArchetypeSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                archetypePage.setUsed(!parentPage.isSimpleProject());
            }

            final MavenModuleWizard this$0;

            
            {
                this$0 = MavenModuleWizard.this;
                super();
            }
        }
);
        parentPage.addModuleNameListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                parametersPage.setProjectName(parentPage.getModuleName());
                artifactPage.setProjectName(parentPage.getModuleName());
            }

            final MavenModuleWizard this$0;

            
            {
                this$0 = MavenModuleWizard.this;
                super();
            }
        }
);
        parentPage.addParentProjectListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                copyParentValues();
            }

            final MavenModuleWizard this$0;

            
            {
                this$0 = MavenModuleWizard.this;
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

            final MavenModuleWizard this$0;

            
            {
                this$0 = MavenModuleWizard.this;
                super();
            }
        }
);
        if(selection != null && selection.size() > 0)
        {
            parentPage.setParent(selection.getFirstElement());
            copyParentValues();
        }
    }

    protected void copyParentValues()
    {
        Model model = parentPage.getParentModel();
        if(model != null)
        {
            String groupId = model.getGroupId();
            String artifactId = model.getArtifactId();
            String version = model.getVersion();
            if(groupId == null)
            {
                Parent parent = model.getParent();
                if(parent != null)
                    groupId = parent.getGroupId();
            }
            if(version == null)
            {
                Parent parent = model.getParent();
                if(parent != null)
                    version = parent.getVersion();
            }
            artifactPage.setParentProject(groupId, artifactId, version);
            parametersPage.setParentProject(groupId, artifactId, version);
        }
    }

    public boolean performFinish()
    {
        final String moduleName = parentPage.getModuleName();
        IPath location = parentPage.getParentContainer().getLocation();
        final IFile parentPom = parentPage.getPom();
        Job job;
        if(parentPage.isSimpleProject())
        {
            Model model = artifactPage.getModel();
            if(model.getParent() != null)
            {
                Parent par = model.getParent();
                par.setRelativePath(location.makeRelativeTo(location.append(moduleName)).toOSString());
                if(par.getGroupId() != null && par.getGroupId().equals(model.getGroupId()))
                    model.setGroupId(null);
                if(par.getVersion() != null && par.getVersion().equals(model.getVersion()))
                    model.setVersion(null);
            }
            String folders[] = artifactPage.getFolders();
            job = new AbstactCreateMavenProjectJob(moduleName, folders) {

                protected List doCreateMavenProjects(IProgressMonitor monitor)
                    throws CoreException
                {
                    setProperty(IProgressConstants.ACTION_PROPERTY, new OpenMavenConsoleAction());
                    String projectName = importConfiguration.getProjectName(model);
                    IProject project = importConfiguration.getProject(ResourcesPlugin.getWorkspace().getRoot(), model);
                    MavenPlugin.getProjectConfigurationManager().createSimpleProject(project, location.append(moduleName), model, folders, importConfiguration, monitor);
                    setModule(projectName);
                    return Arrays.asList(new IProject[] {
                        project
                    });
                }

                final MavenModuleWizard this$0;
                private final Model val$model;
                private final IPath val$location;
                private final String val$moduleName;
                private final String val$folders[];

            
            {
                this$0 = MavenModuleWizard.this;
                model = model1;
                location = ipath;
                moduleName = s;
                folders = as;
                super($anonymous0, $anonymous1);
            }
            }
;
        } else
        {
            Model model = parametersPage.getModel();
            IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(moduleName);
            Archetype archetype = archetypePage.getArchetype();
            String groupId = model.getGroupId();
            String artifactId = model.getArtifactId();
            String version = model.getVersion();
            String javaPackage = parametersPage.getJavaPackage();
            Properties properties = parametersPage.getProperties();
            job = new AbstactCreateMavenProjectJob(properties, moduleName) {

                protected List doCreateMavenProjects(IProgressMonitor monitor)
                    throws CoreException
                {
                    MavenPlugin.getProjectConfigurationManager().createArchetypeProject(project, location, archetype, groupId, artifactId, version, javaPackage, properties, importConfiguration, monitor);
                    setModule(moduleName);
                    return Arrays.asList(new IProject[] {
                        project
                    });
                }

                final MavenModuleWizard this$0;
                private final IProject val$project;
                private final IPath val$location;
                private final Archetype val$archetype;
                private final String val$groupId;
                private final String val$artifactId;
                private final String val$version;
                private final String val$javaPackage;
                private final Properties val$properties;
                private final String val$moduleName;

            
            {
                this$0 = MavenModuleWizard.this;
                project = iproject;
                location = ipath;
                archetype = archetype1;
                groupId = s;
                artifactId = s1;
                version = s2;
                javaPackage = s3;
                properties = properties1;
                moduleName = s4;
                super($anonymous0, $anonymous1);
            }
            }
;
        }
        job.addJobChangeListener(new JobChangeAdapter() {

            public void done(IJobChangeEvent event)
            {
                final IStatus result = event.getResult();
                if(result.isOK())
                {
                    if(!isEditor)
                        try
                        {
                            PomEdits.performOnDOMDocument(new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple[] {
                                new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple(parentPom, new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Operation() {

                                    public void process(Document document)
                                    {
                                        org.w3c.dom.Element root = document.getDocumentElement();
                                        org.w3c.dom.Element modules = PomEdits.getChild(root, new String[] {
                                            "modules"
                                        });
                                        if(PomEdits.findChild(modules, "module", new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Matcher[] {
                                    PomEdits.textEquals(moduleName)
                                }) == null)
                                            PomEdits.format(PomEdits.createElementWithText(modules, "module", moduleName));
                                    }

                                    final _cls7 this$1;
                                    private final String val$moduleName;

                    
                    {
                        this$1 = _cls7.this;
                        moduleName = s;
                        super();
                    }
                                }
)
                            });
                        }
                        catch(Exception e)
                        {
                            MavenModuleWizard.LOG.error("Cannot add module to parent POM", e);
                        }
                } else
                {
                    Display.getDefault().asyncExec(new Runnable() {

                        public void run()
                        {
                            MessageDialog.openError(getShell(), NLS.bind(Messages.wizardProjectJobFailed, moduleName), result.getMessage());
                        }

                        final _cls7 this$1;
                        private final String val$moduleName;
                        private final IStatus val$result;

                    
                    {
                        this$1 = _cls7.this;
                        moduleName = s;
                        result = istatus;
                        super();
                    }
                    }
);
                }
            }

            final MavenModuleWizard this$0;
            private final IFile val$parentPom;
            private final String val$moduleName;


            
            {
                this$0 = MavenModuleWizard.this;
                parentPom = ifile;
                moduleName = s;
                super();
            }
        }
);
        job.setRule(MavenPlugin.getProjectConfigurationManager().getRule());
        job.schedule();
        if(isEditor)
            try
            {
                job.join();
            }
            catch(InterruptedException _ex) { }
        return true;
    }

    void setModule(String moduleName)
    {
        this.moduleName = moduleName;
    }

    public String getModuleName()
    {
        return moduleName;
    }

    private static final Logger LOG = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenModuleWizard);
    protected MavenModuleWizardParentPage parentPage;
    protected MavenProjectWizardArchetypePage archetypePage;
    protected MavenProjectWizardArtifactPage artifactPage;
    protected MavenProjectWizardArchetypeParametersPage parametersPage;
    private String moduleName;
    protected boolean isEditor;


}

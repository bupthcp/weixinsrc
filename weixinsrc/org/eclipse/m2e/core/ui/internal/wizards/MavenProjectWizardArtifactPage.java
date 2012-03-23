// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectWizardArtifactPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.HashMap;
import java.util.Map;
import org.apache.maven.model.Model;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.dialogs.MavenRepositorySearchDialog;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, MavenArtifactComponent, MavenParentComponent, ResolverConfigurationComponent, 
//            WidthGroup

public class MavenProjectWizardArtifactPage extends AbstractMavenWizardPage
{
    static final class ProjectFolder
    {

        String getPath()
        {
            return path;
        }

        String getOutputPath()
        {
            return outputPath;
        }

        boolean isSourceEntry()
        {
            return getOutputPath() != null;
        }

        private String path;
        private String outputPath;

        ProjectFolder(String path, String outputPath)
        {
            this.path = null;
            this.outputPath = null;
            this.path = path;
            this.outputPath = outputPath;
        }
    }


    public MavenProjectWizardArtifactPage(ProjectImportConfiguration projectImportConfiguration)
    {
        this("MavenProjectWizardArtifactPage", projectImportConfiguration);
    }

    protected MavenProjectWizardArtifactPage(String name, ProjectImportConfiguration projectImportConfiguration)
    {
        super(name, projectImportConfiguration);
        readonlyParent = false;
        setTitle(Messages.wizardProjectPageMaven2Title);
        setDescription(Messages.wizardProjectPageMaven2Description);
        setPageComplete(false);
    }

    public void createControl(Composite parent)
    {
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        Composite container = new Composite(parent, 0);
        container.setLayout(layout);
        WidthGroup widthGroup = new WidthGroup();
        container.addControlListener(widthGroup);
        ModifyListener modifyingListener = new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                validate();
            }

            final MavenProjectWizardArtifactPage this$0;

            
            {
                this$0 = MavenProjectWizardArtifactPage.this;
                super();
            }
        }
;
        artifactComponent = new MavenArtifactComponent(container, 0);
        artifactComponent.setLayoutData(new GridData(4, 4, true, true));
        artifactComponent.setWidthGroup(widthGroup);
        artifactComponent.setModifyingListener(modifyingListener);
        artifactComponent.setArtifactIdEditable(!readonlyParent);
        parentComponent = new MavenParentComponent(container, readonlyParent ? 8 : 0);
        parentComponent.setLayoutData(new GridData(4, 128, false, false));
        parentComponent.setWidthGroup(widthGroup);
        parentComponent.addModifyListener(modifyingListener);
        parentComponent.addBrowseButtonListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                MavenRepositorySearchDialog dialog = MavenRepositorySearchDialog.createSearchParentDialog(getShell(), Messages.MavenProjectWizardArtifactPage_searchDialog_title, null, null);
                if(dialog.open() == 0)
                {
                    IndexedArtifactFile indexedArtifactFile = (IndexedArtifactFile)dialog.getFirstResult();
                    if(indexedArtifactFile != null)
                        parentComponent.setValues(indexedArtifactFile.group, indexedArtifactFile.artifact, indexedArtifactFile.version);
                }
            }

            final MavenProjectWizardArtifactPage this$0;

            
            {
                this$0 = MavenProjectWizardArtifactPage.this;
                super();
            }
        }
);
        createAdvancedSettings(container, new GridData(4, 128, false, false, 2, 1));
        resolverConfigurationComponent.setModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                validate();
            }

            final MavenProjectWizardArtifactPage this$0;

            
            {
                this$0 = MavenProjectWizardArtifactPage.this;
                super();
            }
        }
);
        addFieldWithHistory("groupId", artifactComponent.getGroupIdCombo());
        addFieldWithHistory("artifactId", artifactComponent.getArtifactIdCombo());
        addFieldWithHistory("version", artifactComponent.getVersionCombo());
        addFieldWithHistory("name", artifactComponent.getNameCombo());
        addFieldWithHistory("groupId", parentComponent.getGroupIdCombo());
        addFieldWithHistory("artifactId", parentComponent.getArtifactIdCombo());
        addFieldWithHistory("version", parentComponent.getVersionCombo());
        container.layout();
        validate();
        setControl(container);
    }

    public void setVisible(boolean visible)
    {
        super.setVisible(visible);
        artifactComponent.getGroupIdCombo().setFocus();
    }

    public Model getModel()
    {
        Model model = artifactComponent.getModel();
        parentComponent.updateModel(model);
        return model;
    }

    private ProjectFolder[] getProjectFolders()
    {
        ProjectFolder folders[] = (ProjectFolder[])directorySets.get(artifactComponent.getPackaging());
        return folders != null ? folders : JAR_DIRS;
    }

    public String[] getFolders()
    {
        ProjectFolder mavenDirectories[] = getProjectFolders();
        String directories[] = new String[mavenDirectories.length];
        for(int i = 0; i < directories.length; i++)
            directories[i] = mavenDirectories[i].getPath();

        return directories;
    }

    void validate()
    {
        String error = validateInput();
        setErrorMessage(error);
        setPageComplete(error == null);
    }

    private String validateInput()
    {
        String error = validateGroupIdInput(artifactComponent.getGroupId().trim());
        if(error != null)
            return error;
        error = validateArtifactIdInput(artifactComponent.getArtifactId().trim());
        if(error != null)
            return error;
        if(artifactComponent.getVersion().trim().length() == 0)
            return Messages.wizardProjectPageMaven2ValidatorVersion;
        if(artifactComponent.getPackaging().trim().length() == 0)
            return Messages.wizardProjectPageMaven2ValidatorPackaging;
        if(!parentComponent.validate())
            return Messages.wizardProjectPageMaven2ValidatorParent;
        IStatus nameStatus = getImportConfiguration().validateProjectName(artifactComponent.getModel());
        if(!nameStatus.isOK())
            return nameStatus.getMessage();
        else
            return null;
    }

    public void setProjectName(String projectName)
    {
        if(artifactComponent.getArtifactId().equals(artifactComponent.getGroupId()))
            artifactComponent.setGroupId(projectName);
        artifactComponent.setArtifactId(projectName);
        validate();
    }

    public void setParentReadonly(boolean b)
    {
        readonlyParent = b;
    }

    public void setParentProject(String groupId, String artifactId, String version)
    {
        parentComponent.setValues(groupId, artifactId, version);
        artifactComponent.setGroupId(groupId);
        artifactComponent.setVersion(version);
        validate();
    }

    public void setUsed(boolean isUsed)
    {
        this.isUsed = isUsed;
    }

    public boolean isPageComplete()
    {
        return !isUsed || super.isPageComplete();
    }

    private static final ProjectFolder JAVA;
    private static final ProjectFolder JAVA_TEST;
    private static final ProjectFolder RESOURCES;
    private static final ProjectFolder RESOURCES_TEST;
    private static final ProjectFolder WEBAPP;
    private static final ProjectFolder EAR;
    private static final ProjectFolder SITE;
    private static final ProjectFolder JAR_DIRS[];
    private static final ProjectFolder WAR_DIRS[];
    private static final ProjectFolder EAR_DIRS[];
    private static final ProjectFolder POM_DIRS[];
    private static final Map directorySets;
    protected MavenParentComponent parentComponent;
    protected MavenArtifactComponent artifactComponent;
    private boolean readonlyParent;
    private boolean isUsed;

    static 
    {
        JAVA = new ProjectFolder("src/main/java", "target/classes");
        JAVA_TEST = new ProjectFolder("src/test/java", "target/test-classes");
        RESOURCES = new ProjectFolder("src/main/resources", "target/classes");
        RESOURCES_TEST = new ProjectFolder("src/test/resources", "target/test-classes");
        WEBAPP = new ProjectFolder("src/main/webapp", null);
        EAR = new ProjectFolder("src/main/application", null);
        SITE = new ProjectFolder("src/site", null);
        JAR_DIRS = (new ProjectFolder[] {
            JAVA, JAVA_TEST, RESOURCES, RESOURCES_TEST
        });
        WAR_DIRS = (new ProjectFolder[] {
            JAVA, JAVA_TEST, RESOURCES, RESOURCES_TEST, WEBAPP
        });
        EAR_DIRS = (new ProjectFolder[] {
            EAR
        });
        POM_DIRS = (new ProjectFolder[] {
            SITE
        });
        directorySets = new HashMap();
        directorySets.put("war", WAR_DIRS);
        directorySets.put("pom", POM_DIRS);
        directorySets.put("ear", EAR_DIRS);
    }
}

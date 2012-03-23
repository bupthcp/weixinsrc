// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenModuleWizardParentPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.List;
import org.apache.maven.model.Model;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.MavenModelManager;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.SelectionUtil;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, WorkingSetGroup, MavenProjectSelectionDialog

public class MavenModuleWizardParentPage extends AbstractMavenWizardPage
{

    public MavenModuleWizardParentPage(ProjectImportConfiguration projectImportConfiguration, List workingSets)
    {
        super("MavenModuleWizardParentPage", projectImportConfiguration);
        this.workingSets = workingSets;
        setTitle(Messages.wizardModulePageParentTitle);
        setDescription(Messages.wizardModulePageParentDescription);
        setPageComplete(false);
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        container.setLayout(new GridLayout(3, false));
        simpleProject = new Button(container, 32);
        simpleProject.setText(Messages.wizardProjectPageProjectSimpleProject);
        simpleProject.setData("name", "simpleProjectButton");
        simpleProject.setLayoutData(new GridData(4, 128, false, false, 3, 1));
        simpleProject.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                validate();
            }

            final MavenModuleWizardParentPage this$0;

            
            {
                this$0 = MavenModuleWizardParentPage.this;
                super();
            }
        }
);
        Label nameLabel = new Label(container, 0);
        GridData gd_nameLabel = new GridData();
        gd_nameLabel.verticalIndent = 10;
        nameLabel.setLayoutData(gd_nameLabel);
        nameLabel.setText(Messages.wizardModulePageParentModuleName);
        moduleNameCombo = new Combo(container, 2048);
        GridData gd_moduleNameCombo = new GridData(4, 128, true, false, 2, 1);
        gd_moduleNameCombo.verticalIndent = 10;
        moduleNameCombo.setLayoutData(gd_moduleNameCombo);
        moduleNameCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                validate();
            }

            final MavenModuleWizardParentPage this$0;

            
            {
                this$0 = MavenModuleWizardParentPage.this;
                super();
            }
        }
);
        addFieldWithHistory("moduleName", moduleNameCombo);
        Label parentLabel = new Label(container, 0);
        parentLabel.setText(Messages.wizardModulePageParentParentProject);
        parentProjectText = new Text(container, 2048);
        parentProjectText.setLayoutData(new GridData(4, 128, true, false, 1, 1));
        parentProjectText.setEditable(false);
        Button browseButton = new Button(container, 0);
        browseButton.setText(Messages.wizardModulePageParentBrowse);
        browseButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                MavenProjectSelectionDialog dialog = new MavenProjectSelectionDialog(getShell());
                if(dialog.open() == 0)
                {
                    setParent(dialog.getFirstResult());
                    validate();
                }
            }

            final MavenModuleWizardParentPage this$0;

            
            {
                this$0 = MavenModuleWizardParentPage.this;
                super();
            }
        }
);
        workingSetGroup = new WorkingSetGroup(container, workingSets, getShell());
        createAdvancedSettings(container, new GridData(4, 128, true, false, 3, 1));
        initialize();
        setControl(container);
    }

    private void initialize()
    {
        loadParent();
        validate();
    }

    void validate()
    {
        String moduleName = moduleNameCombo.getText().trim();
        if(moduleName.length() == 0)
        {
            setErrorMessage(null);
            setMessage(Messages.wizardModulePageParentValidatorModuleName);
            setPageComplete(false);
            return;
        }
        IStatus nameStatus = ResourcesPlugin.getWorkspace().validateName(moduleName, 4);
        if(!nameStatus.isOK())
        {
            setErrorMessage(nameStatus.getMessage());
            setPageComplete(false);
            return;
        }
        if(parentContainer != null && parentContainer.exists(new Path(moduleName)))
        {
            setErrorMessage(Messages.wizardModulePageParentValidatorNameExists);
            setPageComplete(false);
            return;
        }
        if(pom == null)
        {
            setErrorMessage(null);
            setMessage(Messages.wizardModulePageParentValidatorParentProject);
            setPageComplete(false);
            return;
        }
        if(!validateParent())
        {
            return;
        } else
        {
            setErrorMessage(null);
            setMessage(null);
            setPageComplete(true);
            return;
        }
    }

    public void setParent(Object parent)
    {
        parentObject = parent;
        loadParent();
    }

    protected void loadParent()
    {
        if(parentObject == null)
            return;
        int type = SelectionUtil.getElementType(parentObject);
        if(4 == type)
            pom = (IFile)SelectionUtil.getType(parentObject, org/eclipse/core/resources/IFile);
        else
        if(1 == type)
        {
            IProject project = (IProject)SelectionUtil.getType(parentObject, org/eclipse/core/resources/IProject);
            pom = project.getFile("pom.xml");
            workingSetGroup.selectWorkingSets(SelectionUtil.getAssignedWorkingSets(project));
        } else
        if(parentObject instanceof IContainer)
            pom = ((IContainer)parentObject).getFile(new Path("pom.xml"));
        if(pom != null && pom.exists())
        {
            parentObject = pom;
            parentContainer = pom.getParent();
            try
            {
                parentModel = MavenPlugin.getMavenModelManager().readMavenModel(pom);
                validateParent();
                parentProjectText.setText(parentModel.getArtifactId());
            }
            catch(CoreException e)
            {
                log.error((new StringBuilder("Error loading POM: ")).append(e.getMessage()).toString(), e);
            }
        }
    }

    private boolean validateParent()
    {
        if(parentModel != null && !"pom".equals(parentModel.getPackaging()))
        {
            setMessage(null);
            setErrorMessage(Messages.MavenModuleWizardParentPage_error);
            setPageComplete(false);
            return false;
        } else
        {
            return true;
        }
    }

    public boolean isSimpleProject()
    {
        return simpleProject.getSelection();
    }

    public IWizardPage getNextPage()
    {
        return getWizard().getPage(isSimpleProject() ? "MavenProjectWizardArtifactPage" : "MavenProjectWizardArchetypePage");
    }

    public String getModuleName()
    {
        return moduleNameCombo.getText();
    }

    public Model getParentModel()
    {
        return parentModel;
    }

    public IFile getPom()
    {
        return pom;
    }

    public IContainer getParentContainer()
    {
        return parentContainer;
    }

    public void addModuleNameListener(ModifyListener modifyListener)
    {
        moduleNameCombo.addModifyListener(modifyListener);
    }

    public void removesModuleNameListener(ModifyListener modifyListener)
    {
        moduleNameCombo.removeModifyListener(modifyListener);
    }

    public void addParentProjectListener(ModifyListener modifyListener)
    {
        parentProjectText.addModifyListener(modifyListener);
    }

    public void removesParentProjectListener(ModifyListener modifyListener)
    {
        parentProjectText.removeModifyListener(modifyListener);
    }

    public void addArchetypeSelectionListener(SelectionListener selectionListener)
    {
        simpleProject.addSelectionListener(selectionListener);
    }

    public void removeArchetypeSelectionListener(SelectionListener selectionListener)
    {
        simpleProject.removeSelectionListener(selectionListener);
    }

    public void dispose()
    {
        super.dispose();
        workingSetGroup.dispose();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenModuleWizardParentPage);
    private Combo moduleNameCombo;
    protected Text parentProjectText;
    private Button simpleProject;
    protected Object parentObject;
    private IContainer parentContainer;
    private IFile pom;
    private Model parentModel;
    private WorkingSetGroup workingSetGroup;
    private final List workingSets;

}

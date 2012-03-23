// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectWizardLocationPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.List;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, MavenProjectWizard, WorkingSetGroup

public class MavenProjectWizardLocationPage extends AbstractMavenWizardPage
{

    public MavenProjectWizardLocationPage(ProjectImportConfiguration configuration, String title, String description, List workingSets)
    {
        super("MavenProjectWizardLocationPage", configuration);
        initialized = false;
        this.workingSets = workingSets;
        setTitle(title);
        setDescription(description);
        validate();
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        container.setLayout(new GridLayout(3, false));
        createAdditionalControls(container);
        useDefaultWorkspaceLocationButton = new Button(container, 32);
        GridData useDefaultWorkspaceLocationButtonData = new GridData(16384, 0x1000000, false, false, 3, 1);
        useDefaultWorkspaceLocationButton.setLayoutData(useDefaultWorkspaceLocationButtonData);
        useDefaultWorkspaceLocationButton.setText(Messages.MavenProjectWizardLocationPage_btnUserDefault);
        useDefaultWorkspaceLocationButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                boolean inWorkspace = isInWorkspace();
                locationLabel.setEnabled(!inWorkspace);
                locationCombo.setEnabled(!inWorkspace);
            }

            final MavenProjectWizardLocationPage this$0;

            
            {
                this$0 = MavenProjectWizardLocationPage.this;
                super();
            }
        }
);
        useDefaultWorkspaceLocationButton.setSelection(true);
        locationLabel = new Label(container, 0);
        GridData locationLabelData = new GridData();
        locationLabelData.horizontalIndent = 10;
        locationLabel.setLayoutData(locationLabelData);
        locationLabel.setText(Messages.MavenProjectWizardLocationPage_lblLocation);
        locationLabel.setEnabled(false);
        locationCombo = new Combo(container, 0);
        GridData locationComboData = new GridData(4, 0x1000000, true, false);
        locationCombo.setLayoutData(locationComboData);
        locationCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                validate();
            }

            final MavenProjectWizardLocationPage this$0;

            
            {
                this$0 = MavenProjectWizardLocationPage.this;
                super();
            }
        }
);
        locationCombo.setEnabled(false);
        addFieldWithHistory("location", locationCombo);
        Button locationBrowseButton = new Button(container, 0);
        GridData locationBrowseButtonData = new GridData(4, 0x1000000, false, false);
        locationBrowseButton.setLayoutData(locationBrowseButtonData);
        locationBrowseButton.setText(Messages.MavenProjectWizardLocationPage_btnLocation);
        locationBrowseButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                DirectoryDialog dialog = new DirectoryDialog(getShell());
                dialog.setText(Messages.MavenProjectWizardLocationPage_dialog_location);
                String path = locationCombo.getText();
                if(path.length() == 0)
                    path = ResourcesPlugin.getWorkspace().getRoot().getLocation().toPortableString();
                dialog.setFilterPath(path);
                String selectedDir = dialog.open();
                if(selectedDir != null)
                {
                    locationCombo.setText(selectedDir);
                    useDefaultWorkspaceLocationButton.setSelection(false);
                    validate();
                }
            }

            final MavenProjectWizardLocationPage this$0;

            
            {
                this$0 = MavenProjectWizardLocationPage.this;
                super();
            }
        }
);
        workingSetGroup = new WorkingSetGroup(container, workingSets, getShell());
        if(location != null && !Platform.getLocation().equals(location))
            locationCombo.setText(location.toOSString());
        createAdvancedSettings(container, new GridData(4, 128, true, false, 3, 1));
        setControl(container);
    }

    protected void createAdditionalControls(Composite composite)
    {
    }

    public void dispose()
    {
        super.dispose();
        workingSetGroup.dispose();
    }

    public boolean isInWorkspace()
    {
        return useDefaultWorkspaceLocationButton.getSelection();
    }

    public IPath getLocationPath()
    {
        if(isInWorkspace())
            return ResourcesPlugin.getWorkspace().getRoot().getLocation();
        else
            return Path.fromOSString(locationCombo.getText().trim());
    }

    public void setLocationPath(IPath location)
    {
        this.location = location;
    }

    public void setVisible(boolean visible)
    {
        super.setVisible(visible);
        if(visible)
        {
            initialized = true;
            validate();
        }
    }

    protected void validate()
    {
        if(!initialized)
            return;
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IPath projectPath = getLocationPath();
        String location = projectPath.toOSString();
        if(location.length() == 0)
        {
            setErrorMessage(null);
            setMessage(Messages.wizardProjectPageProjectValidatorProjectLocation);
            setPageComplete(false);
            return;
        }
        if(!Path.ROOT.isValidPath(location))
        {
            setErrorMessage(Messages.wizardProjectPageProjectValidatorInvalidLocation);
            setPageComplete(false);
            return;
        }
        if(!isInWorkspace() && (getWizard() instanceof MavenProjectWizard))
        {
            String projectName = getImportConfiguration().getProjectName(((MavenProjectWizard)getWizard()).getModel());
            if(projectName.length() > 0)
            {
                IStatus locationStatus = workspace.validateProjectLocation(workspace.getRoot().getProject(projectName), projectPath);
                if(!locationStatus.isOK())
                {
                    setErrorMessage(locationStatus.getMessage());
                    setPageComplete(false);
                    return;
                }
            }
        }
        setPageComplete(true);
        setErrorMessage(null);
        setMessage(null);
    }

    Button useDefaultWorkspaceLocationButton;
    Label locationLabel;
    Combo locationCombo;
    boolean initialized;
    private WorkingSetGroup workingSetGroup;
    private IPath location;
    private final List workingSets;
}

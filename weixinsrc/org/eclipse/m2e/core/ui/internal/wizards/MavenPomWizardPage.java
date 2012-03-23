// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenPomWizardPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import org.apache.maven.model.Model;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.dialogs.ContainerSelectionDialog;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, MavenArtifactComponent

public class MavenPomWizardPage extends AbstractMavenWizardPage
{

    public MavenPomWizardPage(ISelection selection)
    {
        super("wizardPage");
        setTitle(Messages.MavenPomWizardPage_title);
        setDescription(Messages.MavenPomWizardPage_desc);
        this.selection = selection;
    }

    public void createControl(Composite parent)
    {
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.makeColumnsEqualWidth = false;
        Composite container = new Composite(parent, 0);
        container.setLayout(layout);
        ModifyListener modifyingListener = new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                dialogChanged();
            }

            final MavenPomWizardPage this$0;

            
            {
                this$0 = MavenPomWizardPage.this;
                super();
            }
        }
;
        Label label = new Label(container, 0);
        label.setText(Messages.MavenPomWizardPage_lblProject);
        projectText = new Text(container, 2060);
        projectText.setEditable(false);
        projectText.setLayoutData(new GridData(768));
        projectText.addModifyListener(modifyingListener);
        pomComponent = new MavenArtifactComponent(container, 0);
        pomComponent.setLayoutData(new GridData(4, 4, true, true, 2, 1));
        pomComponent.setModifyingListener(modifyingListener);
        addFieldWithHistory("groupId", pomComponent.getGroupIdCombo());
        addFieldWithHistory("artifactId", pomComponent.getArtifactIdCombo());
        addFieldWithHistory("version", pomComponent.getVersionCombo());
        addFieldWithHistory("name", pomComponent.getNameCombo());
        initialize();
        dialogChanged();
        setControl(container);
    }

    private void initialize()
    {
        if(selection != null && !selection.isEmpty() && (selection instanceof IStructuredSelection))
        {
            IStructuredSelection ssel = (IStructuredSelection)selection;
            if(ssel.size() > 1)
                return;
            Object obj = ssel.getFirstElement();
            if(obj instanceof IResource)
            {
                IContainer container;
                if(obj instanceof IContainer)
                    container = (IContainer)obj;
                else
                    container = ((IResource)obj).getParent();
                projectText.setText(container.getFullPath().toString());
                pomComponent.setArtifactId(container.getName());
                pomComponent.setGroupId(container.getName());
            }
        }
        pomComponent.setVersion("0.0.1-SNAPSHOT");
        pomComponent.setPackaging("jar");
        pomComponent.setFocus();
    }

    void handleBrowse()
    {
        ContainerSelectionDialog dialog = new ContainerSelectionDialog(getShell(), ResourcesPlugin.getWorkspace().getRoot(), false, Messages.MavenPomWizardPage_dialog_title);
        dialog.showClosedProjects(false);
        if(dialog.open() == 0)
        {
            Object result[] = dialog.getResult();
            if(result.length == 1)
                projectText.setText(((Path)result[0]).toString());
        }
    }

    void dialogChanged()
    {
        IResource container = ResourcesPlugin.getWorkspace().getRoot().findMember(new Path(getProject()));
        if(getProject().length() == 0)
        {
            updateStatus(Messages.MavenPomWizardPage_error_folder);
            return;
        }
        if(container == null || (container.getType() & 2 | 4) == 0)
        {
            updateStatus(Messages.MavenPomWizardPage_error_folder2);
            return;
        }
        if(!container.isAccessible())
        {
            updateStatus(Messages.MavenPomWizardPage_error_folder_write);
            return;
        }
        if(pomComponent.getGroupId().length() == 0)
            updateStatus(Messages.MavenPomWizardPage_error_grid);
        if(pomComponent.getArtifactId().length() == 0)
            updateStatus(Messages.MavenPomWizardPage_error_artid);
        if(pomComponent.getVersion().length() == 0)
            updateStatus(Messages.MavenPomWizardPage_error_version);
        if(pomComponent.getPackaging().length() == 0)
            updateStatus(Messages.MavenPomWizardPage_error_pack);
        updateStatus(null);
    }

    private void updateStatus(String message)
    {
        setErrorMessage(message);
        setPageComplete(message == null);
    }

    public String getProject()
    {
        return projectText.getText();
    }

    public Model getModel()
    {
        return pomComponent.getModel();
    }

    private Text projectText;
    private ISelection selection;
    private MavenArtifactComponent pomComponent;
}

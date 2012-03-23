// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenParentComponent.java

package org.eclipse.m2e.core.ui.internal.wizards;

import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.*;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            WidthGroup

public class MavenParentComponent extends Composite
{

    public MavenParentComponent(Composite parent, int style)
    {
        super(parent, 0);
        boolean readonly = (style & 8) != 0;
        GridLayout topLayout = new GridLayout();
        topLayout.marginHeight = 0;
        topLayout.marginWidth = 0;
        setLayout(topLayout);
        Group group = new Group(this, 0);
        group.setLayoutData(new GridData(4, 128, true, false));
        group.setText(Messages.wizardProjectPageArtifactParentTitle);
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        group.setLayout(gridLayout);
        groupIdLabel = new Label(group, 0);
        groupIdLabel.setText(Messages.wizardProjectPageArtifactParentGroupId);
        parentGroupIdCombo = new Combo(group, 0);
        parentGroupIdCombo.setLayoutData(new GridData(4, 0x1000000, true, false, 2, 1));
        parentGroupIdCombo.setData("name", "parentGroupIdCombo");
        parentGroupIdCombo.setEnabled(!readonly);
        artifactIdLabel = new Label(group, 0);
        artifactIdLabel.setText(Messages.wizardProjectPageArtifactParentArtifactId);
        parentArtifactIdCombo = new Combo(group, 0);
        parentArtifactIdCombo.setLayoutData(new GridData(4, 0x1000000, true, false, 2, 1));
        parentArtifactIdCombo.setData("name", "parentArtifactIdCombo");
        parentArtifactIdCombo.setEnabled(!readonly);
        versionLabel = new Label(group, 0);
        versionLabel.setText(Messages.wizardProjectPageArtifactParentVersion);
        parentVersionCombo = new Combo(group, 0);
        GridData gd_versionCombo = new GridData(16384, 0x1000000, true, false);
        gd_versionCombo.widthHint = 150;
        parentVersionCombo.setLayoutData(gd_versionCombo);
        parentVersionCombo.setEnabled(!readonly);
        parentVersionCombo.setData("name", "parentVersionCombo");
        if(!readonly)
        {
            Composite buttonPanel = new Composite(group, 0);
            RowLayout rowLayout = new RowLayout();
            rowLayout.pack = false;
            rowLayout.marginTop = 0;
            rowLayout.marginRight = 0;
            rowLayout.marginLeft = 0;
            rowLayout.marginBottom = 0;
            buttonPanel.setLayout(rowLayout);
            buttonPanel.setLayoutData(new GridData(0x20000, 128, false, false));
            parentBrowseButton = new Button(buttonPanel, 0);
            parentBrowseButton.setText(Messages.wizardProjectPageArtifactParentBrowse);
            parentBrowseButton.setData("name", "parentBrowseButton");
            parentClearButton = new Button(buttonPanel, 0);
            parentClearButton.setText(Messages.wizardProjectPageArtifactParentClear);
            parentClearButton.setData("name", "parentClearButton");
            parentClearButton.addSelectionListener(new SelectionAdapter() {

                public void widgetSelected(SelectionEvent e)
                {
                    setValues("", "", "");
                }

                final MavenParentComponent this$0;

            
            {
                this$0 = MavenParentComponent.this;
                super();
            }
            }
);
        }
    }

    public Combo getGroupIdCombo()
    {
        return parentGroupIdCombo;
    }

    public Combo getArtifactIdCombo()
    {
        return parentArtifactIdCombo;
    }

    public Combo getVersionCombo()
    {
        return parentVersionCombo;
    }

    public void setWidthGroup(WidthGroup widthGroup)
    {
        widthGroup.addControl(groupIdLabel);
        widthGroup.addControl(artifactIdLabel);
        widthGroup.addControl(versionLabel);
    }

    public void addModifyListener(ModifyListener listener)
    {
        parentArtifactIdCombo.addModifyListener(listener);
        parentGroupIdCombo.addModifyListener(listener);
        parentVersionCombo.addModifyListener(listener);
    }

    public void removeModifyListener(ModifyListener listener)
    {
        parentArtifactIdCombo.removeModifyListener(listener);
        parentGroupIdCombo.removeModifyListener(listener);
        parentVersionCombo.removeModifyListener(listener);
    }

    public void addBrowseButtonListener(SelectionListener listener)
    {
        if(parentBrowseButton != null)
            parentBrowseButton.addSelectionListener(listener);
    }

    public void removeBrowseButtonListener(SelectionListener listener)
    {
        if(parentBrowseButton != null)
            parentBrowseButton.removeSelectionListener(listener);
    }

    public void setClearButtonEnabled(boolean enabled)
    {
        if(parentClearButton != null)
            parentClearButton.setEnabled(enabled);
    }

    public void setValues(String groupId, String artifactId, String version)
    {
        parentGroupIdCombo.setText(groupId != null ? groupId : "");
        parentArtifactIdCombo.setText(artifactId != null ? artifactId : "");
        parentVersionCombo.setText(version != null ? version : "");
    }

    public void updateModel(Model model)
    {
        String groupId = parentGroupIdCombo.getText().trim();
        if(groupId.length() > 0)
        {
            Parent parent = new Parent();
            parent.setGroupId(groupId);
            parent.setArtifactId(parentArtifactIdCombo.getText().trim());
            parent.setVersion(parentVersionCombo.getText().trim());
            model.setParent(parent);
        }
    }

    public boolean validate()
    {
        int parentCheck = 0;
        if(parentGroupIdCombo.getText().trim().length() > 0)
            parentCheck++;
        if(parentArtifactIdCombo.getText().trim().length() > 0)
            parentCheck++;
        if(parentVersionCombo.getText().trim().length() > 0)
            parentCheck++;
        setClearButtonEnabled(parentCheck > 0);
        return parentCheck == 0 || parentCheck == 3;
    }

    private Combo parentArtifactIdCombo;
    private Combo parentGroupIdCombo;
    private Combo parentVersionCombo;
    private Button parentClearButton;
    private Button parentBrowseButton;
    private Label groupIdLabel;
    private Label artifactIdLabel;
    private Label versionLabel;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenLocationComponent.java

package org.eclipse.m2e.core.ui.internal.wizards;

import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class MavenLocationComponent extends Composite
{

    public MavenLocationComponent(Composite parent, int styles)
    {
        super(parent, styles);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginHeight = 0;
        gridLayout.marginWidth = 0;
        setLayout(gridLayout);
        Group locationGroup = new Group(this, 0);
        locationGroup.setText(Messages.locationComponentLocation);
        locationGroup.setLayoutData(new GridData(4, 4, true, true, 3, 1));
        GridLayout groupLayout = new GridLayout();
        groupLayout.numColumns = 3;
        groupLayout.marginLeft = 0;
        locationGroup.setLayout(groupLayout);
        GridData gridData = new GridData();
        gridData.horizontalSpan = 3;
        inWorkspaceButton = new Button(locationGroup, 16);
        inWorkspaceButton.setText(Messages.locationComponentInWorkspace);
        inWorkspaceButton.setLayoutData(new GridData(16384, 0x1000000, false, false, 3, 1));
        inWorkspaceButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                boolean isEnabled = !inWorkspaceButton.getSelection();
                locationLabel.setEnabled(isEnabled);
                locationCombo.setEnabled(isEnabled);
                locationBrowseButton.setEnabled(isEnabled);
                if(modifyingListener != null)
                    modifyingListener.modifyText(null);
            }

            final MavenLocationComponent this$0;

            
            {
                this$0 = MavenLocationComponent.this;
                super();
            }
        }
);
        inExternalLocationButton = new Button(locationGroup, 16);
        inExternalLocationButton.setText(Messages.locationComponentAtExternal);
        inExternalLocationButton.setLayoutData(gridData);
        locationLabel = new Label(locationGroup, 0);
        GridData gd_locationLabel = new GridData();
        gd_locationLabel.horizontalIndent = 10;
        locationLabel.setLayoutData(gd_locationLabel);
        locationLabel.setText(Messages.locationComponentDirectory);
        locationCombo = new Combo(locationGroup, 2048);
        locationCombo.setLayoutData(new GridData(768));
        locationBrowseButton = new Button(locationGroup, 8);
        locationBrowseButton.setText(Messages.locationComponentBrowse);
        gridData = new GridData(4, -1, false, false);
        locationBrowseButton.setLayoutData(gridData);
        locationBrowseButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                DirectoryDialog dialog = new DirectoryDialog(getShell());
                dialog.setText(Messages.locationComponentSelectLocation);
                String path = locationCombo.getText();
                if(path.length() == 0)
                    path = ResourcesPlugin.getWorkspace().getRoot().getLocation().toPortableString();
                dialog.setFilterPath(path);
                String selectedDir = dialog.open();
                if(selectedDir != null)
                    locationCombo.setText(selectedDir.trim());
            }

            final MavenLocationComponent this$0;

            
            {
                this$0 = MavenLocationComponent.this;
                super();
            }
        }
);
        inWorkspaceButton.setSelection(true);
        locationLabel.setEnabled(false);
        locationCombo.setEnabled(false);
        locationBrowseButton.setEnabled(false);
    }

    public IPath getLocationPath()
    {
        if(isInWorkspace())
            return Platform.getLocation();
        else
            return Path.fromOSString(locationCombo.getText().trim());
    }

    public boolean isInWorkspace()
    {
        return inWorkspaceButton.getSelection();
    }

    public void setModifyingListener(ModifyListener modifyingListener)
    {
        this.modifyingListener = modifyingListener;
        locationCombo.addModifyListener(modifyingListener);
    }

    public Combo getLocationCombo()
    {
        return locationCombo;
    }

    public void dispose()
    {
        super.dispose();
        if(modifyingListener != null)
            locationCombo.removeModifyListener(modifyingListener);
    }

    protected Button inWorkspaceButton;
    protected Button inExternalLocationButton;
    protected Combo locationCombo;
    protected Button locationBrowseButton;
    protected ModifyListener modifyingListener;
    protected Label locationLabel;
}

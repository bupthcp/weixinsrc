// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomArchetypeDialog.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.*;
import org.eclipse.jface.dialogs.*;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class CustomArchetypeDialog extends TitleAreaDialog
{

    protected CustomArchetypeDialog(Shell shell, String title)
    {
        super(shell);
        this.title = title;
        message = Messages.CustomArchetypeDialog_message;
        setShellStyle(2144);
        IDialogSettings pluginSettings = M2EUIPluginActivator.getDefault().getDialogSettings();
        dialogSettings = pluginSettings.getSection(DIALOG_SETTINGS);
        if(dialogSettings == null)
        {
            dialogSettings = new DialogSettings(DIALOG_SETTINGS);
            pluginSettings.addSection(dialogSettings);
        }
    }

    protected Control createContents(Composite parent)
    {
        Control control = super.createContents(parent);
        setTitle(title);
        setMessage(message);
        return control;
    }

    protected Control createDialogArea(Composite parent)
    {
        Composite composite1 = (Composite)super.createDialogArea(parent);
        Composite composite = new Composite(composite1, 0);
        composite.setLayoutData(new GridData(4, 128, true, false));
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginTop = 7;
        gridLayout.marginWidth = 12;
        gridLayout.numColumns = 2;
        composite.setLayout(gridLayout);
        Label archetypeGroupIdLabel = new Label(composite, 0);
        archetypeGroupIdLabel.setText(Messages.CustomArchetypeDialog_lblArchetypegroupId);
        archetypeGroupIdCombo = new Combo(composite, 0);
        GridData archetypeGroupIdComboData = new GridData(4, 0x1000000, true, false);
        archetypeGroupIdComboData.widthHint = 350;
        archetypeGroupIdCombo.setLayoutData(archetypeGroupIdComboData);
        archetypeGroupIdCombo.setItems(getSavedValues("archetypeGroupId"));
        archetypeGroupIdCombo.setData("name", "archetypeGroupId");
        Label archetypeArtifactIdLabel = new Label(composite, 0);
        archetypeArtifactIdLabel.setText(Messages.CustomArchetypeDialog_lblArchetypeartifactid);
        archetypeArtifactIdCombo = new Combo(composite, 0);
        archetypeArtifactIdCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
        archetypeArtifactIdCombo.setItems(getSavedValues("archetypeArtifactId"));
        archetypeArtifactIdCombo.setData("name", "archetypeArtifactId");
        Label archetypeVersionLabel = new Label(composite, 0);
        archetypeVersionLabel.setText(Messages.CustomArchetypeDialog_lblArchetypeversion);
        archetypeVersionCombo = new Combo(composite, 0);
        archetypeVersionCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
        archetypeVersionCombo.setItems(getSavedValues("archetypeVersion"));
        archetypeVersionCombo.setData("name", "archetypeVersion");
        Label repositoryLabel = new Label(composite, 0);
        repositoryLabel.setText(Messages.CustomArchetypeDialog_lblRepo);
        repositoryCombo = new Combo(composite, 0);
        repositoryCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
        repositoryCombo.setItems(getSavedValues("repositoryUrl"));
        repositoryCombo.setData("name", "repository");
        ModifyListener modifyListener = new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                update();
            }

            final CustomArchetypeDialog this$0;

            
            {
                this$0 = CustomArchetypeDialog.this;
                super();
            }
        }
;
        archetypeGroupIdCombo.addModifyListener(modifyListener);
        archetypeArtifactIdCombo.addModifyListener(modifyListener);
        archetypeVersionCombo.addModifyListener(modifyListener);
        repositoryCombo.addModifyListener(modifyListener);
        return composite;
    }

    private String[] getSavedValues(String key)
    {
        String array[] = dialogSettings.getArray(key);
        return array != null ? array : new String[0];
    }

    protected void configureShell(Shell shell)
    {
        super.configureShell(shell);
        shell.setText(title);
    }

    public void create()
    {
        super.create();
        getButton(0).setEnabled(false);
    }

    protected void okPressed()
    {
        archetypeArtifactId = archetypeArtifactIdCombo.getText().trim();
        archetypeGroupId = archetypeGroupIdCombo.getText().trim();
        archetypeVersion = archetypeVersionCombo.getText().trim();
        repositoryUrl = repositoryCombo.getText().trim();
        saveValue("archetypeGroupId", archetypeGroupId);
        saveValue("archetypeArtifactId", archetypeArtifactId);
        saveValue("archetypeVersion", archetypeVersion);
        saveValue("repositoryUrl", repositoryUrl);
        super.okPressed();
    }

    public String getArchetypeGroupId()
    {
        return archetypeGroupId;
    }

    public String getArchetypeArtifactId()
    {
        return archetypeArtifactId;
    }

    public String getArchetypeVersion()
    {
        return archetypeVersion;
    }

    public String getRepositoryUrl()
    {
        return repositoryUrl;
    }

    private void saveValue(String key, String value)
    {
        List dirs = new ArrayList();
        dirs.addAll(Arrays.asList(getSavedValues(key)));
        dirs.remove(value);
        dirs.add(0, value);
        if(dirs.size() > 15)
            dirs = dirs.subList(0, 15);
        dialogSettings.put(key, (String[])dirs.toArray(new String[dirs.size()]));
    }

    void update()
    {
        boolean isValid = isValid();
        getButton(0).setEnabled(isValid);
    }

    private boolean isValid()
    {
        setErrorMessage(null);
        setMessage(null, 2);
        if(archetypeGroupIdCombo.getText().trim().length() == 0)
        {
            setErrorMessage(Messages.CustomArchetypeDialog_error_grid);
            return false;
        }
        if(archetypeArtifactIdCombo.getText().trim().length() == 0)
        {
            setErrorMessage(Messages.CustomArchetypeDialog_error_artid);
            return false;
        }
        if(archetypeVersionCombo.getText().trim().length() == 0)
        {
            setErrorMessage(Messages.CustomArchetypeDialog_error_version);
            return false;
        } else
        {
            return true;
        }
    }

    private static final String DIALOG_SETTINGS = org/eclipse/m2e/core/ui/internal/wizards/CustomArchetypeDialog.getName();
    private static final String KEY_ARCHETYPE_GROUP_ID = "archetypeGroupId";
    private static final String KEY_ARCHETYPE_ARTIFACT_ID = "archetypeArtifactId";
    private static final String KEY_ARCHETYPE_VERSION = "archetypeVersion";
    private static final String KEY_REPOSITORY_URL = "repositoryUrl";
    private static final int MAX_HISTORY = 15;
    private String title;
    private String message;
    private Combo archetypeGroupIdCombo;
    private Combo archetypeArtifactIdCombo;
    private Combo archetypeVersionCombo;
    private Combo repositoryCombo;
    private IDialogSettings dialogSettings;
    private String archetypeArtifactId;
    private String archetypeGroupId;
    private String archetypeVersion;
    private String repositoryUrl;

}

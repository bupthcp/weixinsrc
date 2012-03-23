// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LocalArchetypeCatalogDialog.java

package org.eclipse.m2e.core.ui.internal.preferences;

import java.io.File;
import java.util.*;
import org.apache.maven.archetype.catalog.ArchetypeCatalog;
import org.eclipse.jface.dialogs.*;
import org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class LocalArchetypeCatalogDialog extends TitleAreaDialog
{

    protected LocalArchetypeCatalogDialog(Shell shell, ArchetypeCatalogFactory factory)
    {
        super(shell);
        archetypeCatalogFactory = factory;
        title = Messages.LocalArchetypeCatalogDialog_title;
        message = Messages.LocalArchetypeCatalogDialog_message;
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
        gridLayout.numColumns = 3;
        composite.setLayout(gridLayout);
        Label catalogLocationLabel = new Label(composite, 0);
        catalogLocationLabel.setText(Messages.LocalArchetypeCatalogDialog_lblCatalog);
        catalogLocationCombo = new Combo(composite, 0);
        GridData gd_catalogLocationCombo = new GridData(4, 0x1000000, true, false);
        gd_catalogLocationCombo.widthHint = 250;
        catalogLocationCombo.setLayoutData(gd_catalogLocationCombo);
        catalogLocationCombo.setItems(getSavedValues("catalogLocation"));
        Button browseButton = new Button(composite, 0);
        browseButton.setText(Messages.LocalArchetypeCatalogDialog_btnBrowse);
        browseButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                FileDialog dialog = new FileDialog(getShell());
                dialog.setText(Messages.LocalArchetypeCatalogDialog_dialog_title);
                String location = dialog.open();
                if(location != null)
                {
                    catalogLocationCombo.setText(location);
                    update();
                }
            }

            final LocalArchetypeCatalogDialog this$0;

            
            {
                this$0 = LocalArchetypeCatalogDialog.this;
                super();
            }
        }
);
        setButtonLayoutData(browseButton);
        Label catalogDescriptionLabel = new Label(composite, 0);
        catalogDescriptionLabel.setText(Messages.LocalArchetypeCatalogDialog_lblDesc);
        catalogDescriptionText = new Text(composite, 2048);
        catalogDescriptionText.setLayoutData(new GridData(4, 0x1000000, true, false, 2, 1));
        if(archetypeCatalogFactory != null)
        {
            catalogLocationCombo.setText(archetypeCatalogFactory.getId());
            catalogDescriptionText.setText(archetypeCatalogFactory.getDescription());
        }
        ModifyListener modifyListener = new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                update();
            }

            final LocalArchetypeCatalogDialog this$0;

            
            {
                this$0 = LocalArchetypeCatalogDialog.this;
                super();
            }
        }
;
        catalogLocationCombo.addModifyListener(modifyListener);
        catalogDescriptionText.addModifyListener(modifyListener);
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
        String description = catalogDescriptionText.getText().trim();
        String location = catalogLocationCombo.getText().trim();
        archetypeCatalogFactory = new org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.LocalCatalogFactory(location, description, true);
        saveValue("catalogLocation", location);
        super.okPressed();
    }

    public ArchetypeCatalogFactory getArchetypeCatalogFactory()
    {
        return archetypeCatalogFactory;
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
        String location = catalogLocationCombo.getText().trim();
        if(location.length() == 0)
        {
            setErrorMessage(Messages.LocalArchetypeCatalogDialog_error_no_location);
            return false;
        }
        if(!(new File(location)).exists())
        {
            setErrorMessage(Messages.LocalArchetypeCatalogDialog_error_exist);
            return false;
        }
        org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.LocalCatalogFactory factory = new org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.LocalCatalogFactory(location, null, true);
        ArchetypeCatalog archetypeCatalog = factory.getArchetypeCatalog();
        List archetypes = archetypeCatalog.getArchetypes();
        if(archetypes == null || archetypes.size() == 0)
            setMessage(Messages.LocalArchetypeCatalogDialog_error_empty, 2);
        return true;
    }

    private static final String DIALOG_SETTINGS = org/eclipse/m2e/core/ui/internal/preferences/LocalArchetypeCatalogDialog.getName();
    private static final String KEY_LOCATIONS = "catalogLocation";
    private static final int MAX_HISTORY = 15;
    private String title;
    private String message;
    Combo catalogLocationCombo;
    private Text catalogDescriptionText;
    private IDialogSettings dialogSettings;
    private ArchetypeCatalogFactory archetypeCatalogFactory;

}

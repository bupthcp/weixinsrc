// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RemoteArchetypeCatalogDialog.java

package org.eclipse.m2e.core.ui.internal.preferences;

import java.util.*;
import org.apache.maven.archetype.catalog.ArchetypeCatalog;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.dialogs.*;
import org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class RemoteArchetypeCatalogDialog extends TitleAreaDialog
{

    protected RemoteArchetypeCatalogDialog(Shell shell, ArchetypeCatalogFactory factory)
    {
        super(shell);
        archetypeCatalogFactory = factory;
        title = Messages.RemoteArchetypeCatalogDialog_title;
        message = Messages.RemoteArchetypeCatalogDialog_message;
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
        Label catalogLocationLabel = new Label(composite, 0);
        catalogLocationLabel.setText(Messages.RemoteArchetypeCatalogDialog_lblCatalog);
        catalogUrlCombo = new Combo(composite, 0);
        GridData gd_catalogLocationCombo = new GridData(4, 0x1000000, true, false);
        gd_catalogLocationCombo.widthHint = 250;
        catalogUrlCombo.setLayoutData(gd_catalogLocationCombo);
        catalogUrlCombo.setItems(getSavedValues("catalogUrl"));
        Label catalogDescriptionLabel = new Label(composite, 0);
        catalogDescriptionLabel.setText(Messages.RemoteArchetypeCatalogDialog_lblDesc);
        catalogDescriptionText = new Text(composite, 2048);
        catalogDescriptionText.setLayoutData(new GridData(4, 0x1000000, true, false));
        if(archetypeCatalogFactory != null)
        {
            catalogUrlCombo.setText(archetypeCatalogFactory.getId());
            catalogDescriptionText.setText(archetypeCatalogFactory.getDescription());
        }
        ModifyListener modifyListener = new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                update();
            }

            final RemoteArchetypeCatalogDialog this$0;

            
            {
                this$0 = RemoteArchetypeCatalogDialog.this;
                super();
            }
        }
;
        catalogUrlCombo.addModifyListener(modifyListener);
        catalogDescriptionText.addModifyListener(modifyListener);
        return composite;
    }

    protected Control createButtonBar(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = convertVerticalDLUsToPixels(7);
        layout.marginWidth = convertHorizontalDLUsToPixels(7);
        layout.verticalSpacing = convertVerticalDLUsToPixels(4);
        layout.horizontalSpacing = convertHorizontalDLUsToPixels(4);
        composite.setLayout(layout);
        composite.setLayoutData(new GridData(4, 0x1000000, false, false));
        composite.setFont(parent.getFont());
        if(isHelpAvailable())
            createHelpControl(composite);
        verifyButton = createButton(composite, 1025, Messages.RemoteArchetypeCatalogDialog_btnVerify, false);
        verifyButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                verifyButton.setEnabled(false);
                String url = catalogUrlCombo.getText();
                org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.RemoteCatalogFactory factory = new org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.RemoteCatalogFactory(url, null, true);
                (new Job(factory) {

                    protected IStatus run(IProgressMonitor monitor)
                    {
                        IStatus status;
                        ArchetypeCatalog catalog;
                        status = Status.OK_STATUS;
                        catalog = null;
                        catalog = factory.getArchetypeCatalog();
                        break MISSING_BLOCK_LABEL_69;
                        Exception exception;
                        exception;
                        final IStatus s = status;
                        final List archetypes = catalog != null ? catalog.getArchetypes() : Collections.emptyList();
                        getShell().getDisplay().asyncExec(new Runnable() {

                            public void run()
                            {
                                verifyButton.setEnabled(true);
                                if(!s.isOK())
                                {
                                    setErrorMessage(NLS.bind(Messages.RemoteArchetypeCatalogDialog_error_read, s.getMessage()));
                                    getButton(0).setEnabled(false);
                                } else
                                if(archetypes.size() == 0)
                                    setMessage(Messages.RemoteArchetypeCatalogDialog_error_empty, 2);
                                else
                                    setMessage(NLS.bind(Messages.RemoteArchetypeCatalogDialog_message_found, Integer.valueOf(archetypes.size())), 1);
                            }

                            final _cls1 this$2;
                            private final IStatus val$s;
                            private final List val$archetypes;

                        
                        {
                            this$2 = _cls1.this;
                            s = istatus;
                            archetypes = list;
                            super();
                        }
                        }
);
                        throw exception;
                        final IStatus s = status;
                        final List archetypes = catalog != null ? catalog.getArchetypes() : Collections.emptyList();
                        getShell().getDisplay().asyncExec(new _cls1());
                        return Status.OK_STATUS;
                    }

                    final _cls2 this$1;
                    private final org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.RemoteCatalogFactory val$factory;


                    
                    {
                        this$1 = _cls2.this;
                        factory = remotecatalogfactory;
                        super($anonymous0);
                    }
                }
).schedule();
            }

            final RemoteArchetypeCatalogDialog this$0;


            
            {
                this$0 = RemoteArchetypeCatalogDialog.this;
                super();
            }
        }
);
        Label filler = new Label(composite, 0);
        filler.setLayoutData(new GridData(768));
        layout.numColumns++;
        super.createButtonsForButtonBar(composite);
        return composite;
    }

    protected Button getButton(int id)
    {
        return super.getButton(id);
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
        getButton(1025).setEnabled(false);
    }

    protected void okPressed()
    {
        String description = catalogDescriptionText.getText().trim();
        String location = catalogUrlCombo.getText().trim();
        archetypeCatalogFactory = new org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.RemoteCatalogFactory(location, description, true);
        saveValue("catalogUrl", location);
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
        getButton(1025).setEnabled(isValid);
    }

    private boolean isValid()
    {
        setErrorMessage(null);
        setMessage(null, 2);
        String url = catalogUrlCombo.getText().trim();
        if(url.length() == 0)
        {
            setErrorMessage(Messages.RemoteArchetypeCatalogDialog_error_required);
            verifyButton.setEnabled(false);
            return false;
        } else
        {
            verifyButton.setEnabled(true);
            return true;
        }
    }

    private static final int VERIFY_ID = 1025;
    private static final String DIALOG_SETTINGS = org/eclipse/m2e/core/ui/internal/preferences/RemoteArchetypeCatalogDialog.getName();
    private static final String KEY_LOCATIONS = "catalogUrl";
    private static final int MAX_HISTORY = 15;
    private String title;
    private String message;
    Combo catalogUrlCombo;
    private Text catalogDescriptionText;
    private IDialogSettings dialogSettings;
    private ArchetypeCatalogFactory archetypeCatalogFactory;
    Button verifyButton;

}

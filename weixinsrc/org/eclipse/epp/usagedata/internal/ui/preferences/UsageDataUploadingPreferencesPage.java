// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UsageDataUploadingPreferencesPage.java

package org.eclipse.epp.usagedata.internal.ui.preferences;

import com.ibm.icu.text.MessageFormat;
import java.util.Date;
import org.eclipse.epp.usagedata.internal.gathering.UsageDataCaptureActivator;
import org.eclipse.epp.usagedata.internal.recording.UsageDataRecordingActivator;
import org.eclipse.epp.usagedata.internal.recording.settings.UsageDataRecordingSettings;
import org.eclipse.epp.usagedata.internal.recording.uploading.UploadManager;
import org.eclipse.jface.fieldassist.*;
import org.eclipse.jface.preference.*;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.*;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.preferences:
//            Messages

public class UsageDataUploadingPreferencesPage extends PreferencePage
    implements IWorkbenchPreferencePage
{

    public UsageDataUploadingPreferencesPage()
    {
        capturePropertyChangeListener = new IPropertyChangeListener() {

            public void propertyChange(PropertyChangeEvent event)
            {
                if("org.eclipse.epp.usagedata.gathering.enabled".equals(event.getProperty()))
                {
                    updateButtons();
                    return;
                } else
                {
                    return;
                }
            }

            final UsageDataUploadingPreferencesPage this$0;

            
            {
                this$0 = UsageDataUploadingPreferencesPage.this;
                super();
            }
        }
;
        recordingPropertyChangeListener = new IPropertyChangeListener() {

            public void propertyChange(PropertyChangeEvent event)
            {
                if("org.eclipse.epp.usagedata.recording.ask".equals(event.getProperty()))
                {
                    getControl().getDisplay().syncExec(new Runnable() {

                        public void run()
                        {
                            updateAskToUploadCheckbox();
                        }

                        final _cls2 this$1;

                    
                    {
                        this$1 = _cls2.this;
                        super();
                    }
                    }
);
                    return;
                }
                if("org.eclipse.epp.usagedata.recording.period".equals(event.getProperty()))
                {
                    getControl().getDisplay().syncExec(new Runnable() {

                        public void run()
                        {
                            updateUploadPeriodText();
                        }

                        final _cls2 this$1;

                    
                    {
                        this$1 = _cls2.this;
                        super();
                    }
                    }
);
                    return;
                }
                if("org.eclipse.epp.usagedata.recording.last-upload".equals(event.getProperty()))
                {
                    getControl().getDisplay().syncExec(new Runnable() {

                        public void run()
                        {
                            updateLastUploadText();
                        }

                        final _cls2 this$1;

                    
                    {
                        this$1 = _cls2.this;
                        super();
                    }
                    }
);
                    return;
                } else
                {
                    return;
                }
            }

            final UsageDataUploadingPreferencesPage this$0;


            
            {
                this$0 = UsageDataUploadingPreferencesPage.this;
                super();
            }
        }
;
        setDescription(Messages.UsageDataUploadingPreferencesPage_0);
        setPreferenceStore(UsageDataRecordingActivator.getDefault().getPreferenceStore());
    }

    public void init(IWorkbench workbench)
    {
        getCapturePreferenceStore().addPropertyChangeListener(capturePropertyChangeListener);
        getPreferenceStore().addPropertyChangeListener(recordingPropertyChangeListener);
    }

    public void dispose()
    {
        getCapturePreferenceStore().removePropertyChangeListener(capturePropertyChangeListener);
        getPreferenceStore().removePropertyChangeListener(recordingPropertyChangeListener);
        super.dispose();
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData(new GridData(1808));
        composite.setLayout(new GridLayout());
        createGeneralInformationArea(composite);
        createUploadingArea(composite);
        createButtonsArea(composite);
        Label filler = new Label(parent, 0);
        filler.setLayoutData(new GridData(16384, 128, true, true));
        initialize();
        return composite;
    }

    private void initialize()
    {
        updateAskToUploadCheckbox();
        updateUploadPeriodText();
        updateLastUploadText();
        updateButtons();
    }

    private void updateLastUploadText()
    {
        lastUploadText.setText(getLastUploadDateAsString());
    }

    private void updateUploadPeriodText()
    {
        uploadPeriodText.setText(String.valueOf(getRecordingPreferences().getLong("org.eclipse.epp.usagedata.recording.period") / 0x5265c00L));
    }

    private void updateAskToUploadCheckbox()
    {
        askBeforeUploadingCheckbox.setSelection(getRecordingPreferences().getBoolean("org.eclipse.epp.usagedata.recording.ask"));
    }

    private void updateButtons()
    {
        uploadNowButton.setEnabled(getCapturePreferenceStore().getBoolean("org.eclipse.epp.usagedata.gathering.enabled"));
    }

    private IPreferenceStore getCapturePreferenceStore()
    {
        return UsageDataCaptureActivator.getDefault().getPreferenceStore();
    }

    public boolean performOk()
    {
        getRecordingPreferences().setValue("org.eclipse.epp.usagedata.recording.ask", askBeforeUploadingCheckbox.getSelection());
        getRecordingPreferences().setValue("org.eclipse.epp.usagedata.recording.period", Long.valueOf(uploadPeriodText.getText()).longValue() * 0x5265c00L);
        return super.performOk();
    }

    public boolean isValid()
    {
        return isValidUploadPeriod(uploadPeriodText.getText());
    }

    protected void performDefaults()
    {
        askBeforeUploadingCheckbox.setSelection(getRecordingPreferences().getDefaultBoolean("org.eclipse.epp.usagedata.recording.ask"));
        uploadPeriodText.setText(String.valueOf(getRecordingPreferences().getDefaultLong("org.eclipse.epp.usagedata.recording.period") / 0x5265c00L));
        updateLastUploadText();
        super.performDefaults();
    }

    private void createGeneralInformationArea(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData(new GridData(16384, 128, true, false));
        composite.setLayout(new GridLayout());
        askBeforeUploadingCheckbox = new Button(composite, 16416);
        askBeforeUploadingCheckbox.setText(Messages.UsageDataUploadingPreferencesPage_1);
    }

    private void createUploadingArea(Composite parent)
    {
        Group group = new Group(parent, 0);
        group.setText(Messages.UsageDataUploadingPreferencesPage_2);
        group.setLayoutData(new GridData(4, 4, true, false));
        group.setLayout(new GridLayout(3, false));
        GridData fieldLayoutData = new GridData(4, 0x1000000, true, false);
        fieldLayoutData.horizontalIndent = FieldDecorationRegistry.getDefault().getMaximumDecorationWidth();
        createUploadPeriodField(group);
        createLastUploadField(group);
        createUploadUrlField(group);
    }

    private void createUploadPeriodField(Group composite)
    {
        Label label = new Label(composite, 0);
        label.setText(Messages.UsageDataUploadingPreferencesPage_3);
        uploadPeriodText = new Text(composite, 0x20804);
        uploadPeriodText.setTextLimit(2);
        GridData gridData = new GridData(4, 0x1000000, false, false);
        gridData.horizontalIndent = FieldDecorationRegistry.getDefault().getMaximumDecorationWidth();
        gridData.horizontalSpan = 1;
        GC gc = new GC(uploadPeriodText.getDisplay());
        gc.setFont(uploadPeriodText.getFont());
        gridData.widthHint = gc.stringExtent(String.valueOf(90L)).x;
        gc.dispose();
        uploadPeriodText.setLayoutData(gridData);
        (new Label(composite, 0)).setText(Messages.UsageDataUploadingPreferencesPage_4);
        final ControlDecoration rangeErrorDecoration = new ControlDecoration(uploadPeriodText, 16512);
        rangeErrorDecoration.setDescriptionText(MessageFormat.format(Messages.UsageDataUploadingPreferencesPage_5, new Object[] {
            Long.valueOf(0L), Long.valueOf(90L)
        }));
        rangeErrorDecoration.setImage(getErrorImage());
        rangeErrorDecoration.hide();
        uploadPeriodText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                String contents = uploadPeriodText.getText();
                if(isValidUploadPeriod(contents))
                    rangeErrorDecoration.hide();
                else
                    rangeErrorDecoration.show();
                updateApplyButton();
                getContainer().updateButtons();
            }

            final UsageDataUploadingPreferencesPage this$0;
            private final ControlDecoration val$rangeErrorDecoration;

            
            {
                this$0 = UsageDataUploadingPreferencesPage.this;
                rangeErrorDecoration = controldecoration;
                super();
            }
        }
);
        if(System.getProperty("org.eclipse.epp.usagedata.recording.period") != null)
            addOverrideWarning(uploadPeriodText);
    }

    private boolean isValidUploadPeriod(String text)
    {
        long value = Long.parseLong(text);
        if(value < 0L)
            return false;
        return value <= 90L;
        JVM INSTR pop ;
        return false;
    }

    private Image getErrorImage()
    {
        return FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_ERROR").getImage();
    }

    private void createLastUploadField(Group composite)
    {
        label = new Label(composite, 0);
        label.setText(Messages.UsageDataUploadingPreferencesPage_6);
        lastUploadText = new Text(composite, 2052);
        lastUploadText.setEnabled(false);
        GridData gridData = new GridData(4, 0x1000000, true, false);
        gridData.horizontalIndent = FieldDecorationRegistry.getDefault().getMaximumDecorationWidth();
        gridData.horizontalSpan = 2;
        lastUploadText.setLayoutData(gridData);
    }

    private void createUploadUrlField(Group composite)
    {
        label = new Label(composite, 0);
        label.setText(Messages.UsageDataUploadingPreferencesPage_9);
        Text uploadUrlText = new Text(composite, 2052);
        uploadUrlText.setEnabled(false);
        GridData gridData = new GridData(4, 0x1000000, true, false);
        gridData.horizontalIndent = FieldDecorationRegistry.getDefault().getMaximumDecorationWidth();
        gridData.horizontalSpan = 2;
        uploadUrlText.setLayoutData(gridData);
        uploadUrlText.setText(getSettings().getUploadUrl());
    }

    private void createButtonsArea(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData(new GridData(4, 4, true, false));
        composite.setLayout(new RowLayout());
        createUploadNowButton(composite);
    }

    protected IWorkbenchPage getPage()
    {
        return PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
    }

    protected UsageDataRecordingSettings getSettings()
    {
        return UsageDataRecordingActivator.getDefault().getSettings();
    }

    private void createUploadNowButton(Composite composite)
    {
        uploadNowButton = new Button(composite, 8);
        uploadNowButton.setText(Messages.UsageDataUploadingPreferencesPage_7);
        uploadNowButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                UsageDataRecordingActivator.getDefault().getUploadManager().startUpload();
            }

            final UsageDataUploadingPreferencesPage this$0;

            
            {
                this$0 = UsageDataUploadingPreferencesPage.this;
                super();
            }
        }
);
    }

    private void addOverrideWarning(Control control)
    {
        FieldDecoration decoration = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_WARNING");
        ControlDecoration warning = new ControlDecoration(control, 17408);
        warning.setImage(decoration.getImage());
        warning.setDescriptionText(Messages.UsageDataUploadingPreferencesPage_8);
    }

    private String getLastUploadDateAsString()
    {
        long time = getRecordingSettings().getLastUploadTime();
        Date date = new Date(time);
        return date.toString();
    }

    private IPreferenceStore getRecordingPreferences()
    {
        return UsageDataRecordingActivator.getDefault().getPreferenceStore();
    }

    private UsageDataRecordingSettings getRecordingSettings()
    {
        return UsageDataRecordingActivator.getDefault().getSettings();
    }

    private static final int MILLISECONDS_IN_ONE_DAY = 0x5265c00;
    private static final long MINIMUM_PERIOD_IN_DAYS = 0L;
    private static final long MAXIMUM_PERIOD_IN_DAYS = 90L;
    private Text uploadPeriodText;
    private Label label;
    private Text lastUploadText;
    private Button askBeforeUploadingCheckbox;
    private Button uploadNowButton;
    IPropertyChangeListener capturePropertyChangeListener;
    IPropertyChangeListener recordingPropertyChangeListener;







}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UsageDataCapturePreferencesPage.java

package org.eclipse.epp.usagedata.internal.ui.preferences;

import org.eclipse.epp.usagedata.internal.gathering.UsageDataCaptureActivator;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.preferences:
//            Messages

public class UsageDataCapturePreferencesPage extends PreferencePage
    implements IWorkbenchPreferencePage
{

    public UsageDataCapturePreferencesPage()
    {
        propertyChangeListener = new IPropertyChangeListener() {

            public void propertyChange(final PropertyChangeEvent event)
            {
                if("org.eclipse.epp.usagedata.gathering.enabled".equals(event.getProperty()))
                    getControl().getDisplay().syncExec(new Runnable() {

                        public void run()
                        {
                            captureEnabledCheckbox.setSelection(((Boolean)event.getNewValue()).booleanValue());
                        }

                        final _cls1 this$1;
                        private final PropertyChangeEvent val$event;

                    
                    {
                        this$1 = _cls1.this;
                        event = propertychangeevent;
                        super();
                    }
                    }
);
            }

            final UsageDataCapturePreferencesPage this$0;


            
            {
                this$0 = UsageDataCapturePreferencesPage.this;
                super();
            }
        }
;
        setDescription(Messages.UsageDataCapturePreferencesPage_0);
        setPreferenceStore(UsageDataCaptureActivator.getDefault().getPreferenceStore());
    }

    public void init(IWorkbench workbench)
    {
        getPreferenceStore().addPropertyChangeListener(propertyChangeListener);
    }

    public void dispose()
    {
        getPreferenceStore().removePropertyChangeListener(propertyChangeListener);
        super.dispose();
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData(new GridData(1808));
        composite.setLayout(new GridLayout());
        createGeneralInformationArea(composite);
        Label filler = new Label(parent, 0);
        filler.setLayoutData(new GridData(16384, 128, true, true));
        initialize();
        return composite;
    }

    private void initialize()
    {
        captureEnabledCheckbox.setSelection(getCapturePreferences().getBoolean("org.eclipse.epp.usagedata.gathering.enabled"));
    }

    public boolean performOk()
    {
        getCapturePreferences().setValue("org.eclipse.epp.usagedata.gathering.enabled", captureEnabledCheckbox.getSelection());
        return super.performOk();
    }

    protected void performDefaults()
    {
        captureEnabledCheckbox.setSelection(getCapturePreferences().getDefaultBoolean("org.eclipse.epp.usagedata.gathering.enabled"));
        super.performDefaults();
    }

    private void createGeneralInformationArea(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData(new GridData(16384, 128, true, false));
        composite.setLayout(new GridLayout());
        captureEnabledCheckbox = new Button(composite, 16416);
        captureEnabledCheckbox.setText(Messages.UsageDataCapturePreferencesPage_1);
    }

    private IPreferenceStore getCapturePreferences()
    {
        return UsageDataCaptureActivator.getDefault().getPreferenceStore();
    }

    Button captureEnabledCheckbox;
    IPropertyChangeListener propertyChangeListener;
}

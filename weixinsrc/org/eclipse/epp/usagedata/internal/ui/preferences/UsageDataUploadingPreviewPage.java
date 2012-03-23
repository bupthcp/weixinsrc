// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UsageDataUploadingPreviewPage.java

package org.eclipse.epp.usagedata.internal.ui.preferences;

import org.eclipse.epp.usagedata.internal.recording.UsageDataRecordingActivator;
import org.eclipse.epp.usagedata.internal.recording.settings.UsageDataRecordingSettings;
import org.eclipse.epp.usagedata.internal.recording.uploading.UploadParameters;
import org.eclipse.epp.usagedata.internal.ui.preview.UploadPreview;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

public class UsageDataUploadingPreviewPage extends PreferencePage
    implements IWorkbenchPreferencePage
{

    public UsageDataUploadingPreviewPage()
    {
        noDefaultAndApplyButton();
    }

    public void init(IWorkbench iworkbench)
    {
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new FillLayout());
        UploadParameters parameters = new UploadParameters();
        UsageDataRecordingSettings settings = getSettings();
        parameters.setSettings(settings);
        parameters.setFiles(settings.getUsageDataUploadFiles());
        (new UploadPreview(parameters)).createControl(composite);
        return composite;
    }

    protected UsageDataRecordingSettings getSettings()
    {
        return UsageDataRecordingActivator.getDefault().getSettings();
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AskUserUploader.java

package org.eclipse.epp.usagedata.internal.ui.uploaders;

import java.io.File;
import org.eclipse.epp.usagedata.internal.recording.UsageDataRecordingActivator;
import org.eclipse.epp.usagedata.internal.recording.filtering.UsageDataEventFilter;
import org.eclipse.epp.usagedata.internal.recording.settings.UsageDataRecordingSettings;
import org.eclipse.epp.usagedata.internal.recording.uploading.*;
import org.eclipse.epp.usagedata.internal.ui.wizards.AskUserUploaderWizard;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.*;

public class AskUserUploader extends AbstractUploader
{

    public AskUserUploader()
    {
        action = 0;
    }

    public void startUpload()
    {
        checkValues();
        if(needToOpenWizard())
            openUploadWizard();
        else
            startBasicUpload();
    }

    protected boolean needToOpenWizard()
    {
        if(getSettings().shouldAskBeforeUploading())
            return true;
        return !getSettings().hasUserAcceptedTermsOfUse();
    }

    private void openUploadWizard()
    {
        action = getDefaultAction();
        userAcceptedTermsOfUse = getSettings().hasUserAcceptedTermsOfUse();
        final AskUserUploaderWizard wizard = new AskUserUploaderWizard(this);
        Display.getDefault().syncExec(new Runnable() {

            public void run()
            {
                dialog = new WizardDialog(getShell(), wizard);
                dialog.setBlockOnOpen(false);
                dialog.open();
            }

            private Shell getShell()
            {
                return PlatformUI.getWorkbench().getActiveWorkbenchWindow().getShell();
            }

            final AskUserUploader this$0;
            private final AskUserUploaderWizard val$wizard;

            
            {
                this$0 = AskUserUploader.this;
                wizard = askuseruploaderwizard;
                super();
            }
        }
);
    }

    private int getDefaultAction()
    {
        if(getSettings().isEnabled())
            return !needToOpenWizard() ? 1 : 0;
        else
            return 3;
    }

    private UsageDataRecordingSettings getSettings()
    {
        return UsageDataRecordingActivator.getDefault().getSettings();
    }

    public synchronized boolean isUploadInProgress()
    {
        if(isWizardOpen())
            return true;
        if(basicUploader != null)
            return basicUploader.isUploadInProgress();
        else
            return false;
    }

    private boolean isWizardOpen()
    {
        if(dialog == null)
            return false;
        else
            return dialog.getShell().isVisible();
    }

    public synchronized void cancel()
    {
        dialog = null;
        fireUploadComplete(new UploadResult(0));
    }

    public synchronized void execute()
    {
        dialog = null;
        getSettings().setAskBeforeUploading(action != 1);
        getSettings().setEnabled(action != 3);
        getSettings().setUserAcceptedTermsOfUse(userAcceptedTermsOfUse);
        if(action == 1 || action == 0)
            startBasicUpload();
        else
            fireUploadComplete(new UploadResult(0));
    }

    private void startBasicUpload()
    {
        basicUploader = new BasicUploader(getUploadParameters());
        basicUploader.addUploadListener(new UploadListener() {

            public void uploadComplete(UploadResult result)
            {
                fireUploadComplete(result);
                basicUploader = null;
            }

            final AskUserUploader this$0;

            
            {
                this$0 = AskUserUploader.this;
                super();
            }
        }
);
        basicUploader.startUpload();
    }

    public void setAction(int action)
    {
        this.action = action;
    }

    public int getAction()
    {
        return action;
    }

    public boolean hasUserAcceptedTermsOfUse()
    {
        return userAcceptedTermsOfUse;
    }

    public void setUserAcceptedTermsOfUse(boolean value)
    {
        userAcceptedTermsOfUse = value;
    }

    public boolean hasUploadAction()
    {
        if(action == 1)
            return true;
        return action == 0;
    }

    public File[] getFiles()
    {
        return getUploadParameters().getFiles();
    }

    public UsageDataEventFilter getFilter()
    {
        return getUploadParameters().getFilter();
    }

    public static final int UPLOAD_NOW = 0;
    public static final int UPLOAD_ALWAYS = 1;
    public static final int DONT_UPLOAD = 2;
    public static final int NEVER_UPLOAD = 3;
    private BasicUploader basicUploader;
    private WizardDialog dialog;
    private int action;
    private boolean userAcceptedTermsOfUse;




}

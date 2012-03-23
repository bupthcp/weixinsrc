// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AskUserUploaderWizard.java

package org.eclipse.epp.usagedata.internal.ui.wizards;

import org.eclipse.epp.usagedata.internal.ui.uploaders.AskUserUploader;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.ui.IWorkbench;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.wizards:
//            SelectActionWizardPage, TermsOfUseWizardPage, UploadPreviewPage

public class AskUserUploaderWizard extends Wizard
{

    public AskUserUploaderWizard(AskUserUploader uploader)
    {
        this.uploader = uploader;
        setNeedsProgressMonitor(false);
        setHelpAvailable(false);
    }

    public void addPages()
    {
        addPage(new SelectActionWizardPage(uploader));
        termsPage = new TermsOfUseWizardPage(uploader);
        addPage(termsPage);
        previewPage = new UploadPreviewPage(uploader);
        addPage(previewPage);
    }

    public boolean canFinish()
    {
        if(!uploader.hasUploadAction())
            return true;
        else
            return uploader.hasUserAcceptedTermsOfUse();
    }

    public boolean performCancel()
    {
        uploader.cancel();
        return true;
    }

    public boolean performFinish()
    {
        uploader.execute();
        return true;
    }

    public void init(IWorkbench iworkbench, IStructuredSelection istructuredselection)
    {
    }

    public void showTermsPage()
    {
        getContainer().showPage(termsPage);
    }

    public void showPreviewPage()
    {
        getContainer().showPage(previewPage);
    }

    private final AskUserUploader uploader;
    private TermsOfUseWizardPage termsPage;
    private UploadPreviewPage previewPage;
}

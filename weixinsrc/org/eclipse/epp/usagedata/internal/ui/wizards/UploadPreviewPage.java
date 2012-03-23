// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UploadPreviewPage.java

package org.eclipse.epp.usagedata.internal.ui.wizards;

import org.eclipse.epp.usagedata.internal.ui.preview.UploadPreview;
import org.eclipse.epp.usagedata.internal.ui.uploaders.AskUserUploader;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.wizards:
//            Messages

public class UploadPreviewPage extends WizardPage
{

    public UploadPreviewPage(AskUserUploader uploader)
    {
        super("wizardPage");
        this.uploader = uploader;
        setTitle(Messages.UploadPreviewPage_1);
        setDescription(Messages.UploadPreviewPage_2);
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        container.setLayout(new GridLayout());
        UploadPreview preview = new UploadPreview(uploader.getUploadParameters());
        Control control = preview.createControl(container);
        control.setLayoutData(new GridData(4, 4, true, true));
        setControl(container);
    }

    private final AskUserUploader uploader;
}

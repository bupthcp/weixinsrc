// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TermsOfUseWizardPage.java

package org.eclipse.epp.usagedata.internal.ui.wizards;

import java.io.IOException;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.epp.usagedata.internal.ui.Activator;
import org.eclipse.epp.usagedata.internal.ui.uploaders.AskUserUploader;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.wizards:
//            Messages

public class TermsOfUseWizardPage extends WizardPage
{

    public TermsOfUseWizardPage(AskUserUploader uploader)
    {
        super("wizardPage");
        this.uploader = uploader;
        setTitle(Messages.TermsOfUseWizardPage_1);
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        container.setLayout(new GridLayout());
        Browser browser = new Browser(container, 2048);
        GridData layoutData = new GridData(4, 4, true, true);
        browser.setLayoutData(layoutData);
        browser.setUrl(getTermsOfUseUrl());
        final Button acceptTermsButton = new Button(container, 32);
        acceptTermsButton.setText(Messages.TermsOfUseWizardPage_2);
        GridData gridData = new GridData(1, 4, true, false);
        acceptTermsButton.setLayoutData(gridData);
        acceptTermsButton.setSelection(uploader.hasUserAcceptedTermsOfUse());
        acceptTermsButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent event)
            {
                uploader.setUserAcceptedTermsOfUse(acceptTermsButton.getSelection());
                getContainer().updateButtons();
            }

            final TermsOfUseWizardPage this$0;
            private final Button val$acceptTermsButton;

            
            {
                this$0 = TermsOfUseWizardPage.this;
                acceptTermsButton = button;
                super();
            }
        }
);
        setControl(container);
    }

    private String getTermsOfUseUrl()
    {
        URL terms = FileLocator.find(Activator.getDefault().getBundle(), new Path("terms.html"), null);
        try
        {
            return FileLocator.toFileURL(terms).toString();
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
        return null;
    }

    private final AskUserUploader uploader;


}

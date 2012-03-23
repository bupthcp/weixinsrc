// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SelectActionWizardPage.java

package org.eclipse.epp.usagedata.internal.ui.wizards;

import java.net.URL;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.Status;
import org.eclipse.epp.usagedata.internal.ui.Activator;
import org.eclipse.epp.usagedata.internal.ui.uploaders.AskUserUploader;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.widgets.FormText;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.wizards:
//            Messages, AskUserUploaderWizard

public class SelectActionWizardPage extends WizardPage
{

    public SelectActionWizardPage(AskUserUploader uploader)
    {
        super("wizardPage");
        this.uploader = uploader;
        setTitle(Messages.SelectActionWizardPage_3);
        setDescription(Messages.SelectActionWizardPage_4);
    }

    public void createControl(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout());
        FormText greeting = createFormText(composite, Messages.SelectActionWizardPage_5);
        greeting.addHyperlinkListener(new HyperlinkAdapter() {

            public void linkActivated(HyperlinkEvent event)
            {
                if("udc".equals(event.getHref()))
                    browseTo("http://www.eclipse.org/org/usagedata/index.php");
                else
                if("preview".equals(event.getHref()))
                    ((AskUserUploaderWizard)getWizard()).showPreviewPage();
                else
                if("faq".equals(event.getHref()))
                    browseTo("http://www.eclipse.org/org/usagedata/faq.php");
            }

            final SelectActionWizardPage this$0;

            
            {
                this$0 = SelectActionWizardPage.this;
                super();
            }
        }
);
        createSpacer(composite);
        createUploadNowRadio(composite);
        createSpacer(composite);
        createUploadAlwaysRadio(composite);
        createSpacer(composite);
        createDontUploadRadio(composite);
        createSpacer(composite);
        createNeverUploadRadio(composite);
        createSpacer(composite);
        FormText text = createFormText(composite, getTermsText());
        text.addHyperlinkListener(new HyperlinkAdapter() {

            public void linkActivated(HyperlinkEvent event)
            {
                ((AskUserUploaderWizard)getWizard()).showTermsPage();
            }

            final SelectActionWizardPage this$0;

            
            {
                this$0 = SelectActionWizardPage.this;
                super();
            }
        }
);
        setControl(composite);
    }

    private String getTermsText()
    {
        return Messages.SelectActionWizardPage_9;
    }

    private void createSpacer(Composite parent)
    {
        Label spacer = new Label(parent, 0);
        GridData layoutData = new GridData();
        layoutData.heightHint = 5;
        spacer.setLayoutData(layoutData);
    }

    private void createUploadNowRadio(Composite parent)
    {
        uploadNowRadio = createRadio(parent, Messages.SelectActionWizardPage_10, 0);
        createDescriptionText(parent, Messages.SelectActionWizardPage_11);
    }

    private void createUploadAlwaysRadio(Composite parent)
    {
        uploadAlwaysRadio = createRadio(parent, Messages.SelectActionWizardPage_12, 1);
        createDescriptionText(parent, Messages.SelectActionWizardPage_13);
    }

    private void createDontUploadRadio(Composite parent)
    {
        dontUploadRadio = createRadio(parent, Messages.SelectActionWizardPage_14, 2);
        createDescriptionText(parent, Messages.SelectActionWizardPage_15);
    }

    private void createNeverUploadRadio(Composite parent)
    {
        neverUploadRadio = createRadio(parent, Messages.SelectActionWizardPage_16, 3);
        createDescriptionText(parent, Messages.SelectActionWizardPage_17);
    }

    private Button createRadio(Composite parent, String label, final int action)
    {
        Button radio = new Button(parent, 16);
        radio.setText(label);
        radio.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                uploader.setAction(action);
                getContainer().updateButtons();
            }

            final SelectActionWizardPage this$0;
            private final int val$action;

            
            {
                this$0 = SelectActionWizardPage.this;
                action = i;
                super();
            }
        }
);
        radio.setSelection(uploader.getAction() == action);
        return radio;
    }

    private void createDescriptionText(Composite parent, String string)
    {
        createText(parent, string, 25);
    }

    private void createText(Composite parent, String string, int indent)
    {
        Label text = new Label(parent, 64);
        text.setText(string);
        GridData layoutData = new GridData();
        layoutData.horizontalIndent = indent;
        layoutData.grabExcessHorizontalSpace = true;
        layoutData.horizontalAlignment = 4;
        layoutData.widthHint = 500;
        text.setLayoutData(layoutData);
    }

    private FormText createFormText(Composite parent, String string)
    {
        FormText text = new FormText(parent, 64);
        text.setText(string, true, true);
        GridData layoutData = new GridData();
        layoutData.grabExcessHorizontalSpace = true;
        layoutData.horizontalAlignment = 4;
        layoutData.widthHint = 500;
        text.setLayoutData(layoutData);
        return text;
    }

    public boolean isPageComplete()
    {
        if(uploadAlwaysRadio.getSelection())
            return true;
        if(uploadNowRadio.getSelection())
            return true;
        if(neverUploadRadio.getSelection())
            return true;
        return dontUploadRadio.getSelection();
    }

    private void browseTo(String url)
    {
        try
        {
            PlatformUI.getWorkbench().getBrowserSupport().getExternalBrowser().openURL(new URL(url));
        }
        catch(Exception e)
        {
            Activator.getDefault().getLog().log(new Status(4, "org.eclipse.epp.usagedata.ui", "Error opening browser", e));
        }
    }

    private static final String UDC_URL = "http://www.eclipse.org/org/usagedata/index.php";
    private static final String FAQ_URL = "http://www.eclipse.org/org/usagedata/faq.php";
    private static final int WIDTH_HINT = 500;
    private final AskUserUploader uploader;
    private Button neverUploadRadio;
    private Button dontUploadRadio;
    private Button uploadAlwaysRadio;
    private Button uploadNowRadio;



}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UsageDataUploadingTermsOfUsePage.java

package org.eclipse.epp.usagedata.internal.ui.preferences;

import java.io.IOException;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.epp.usagedata.internal.gathering.UsageDataCaptureActivator;
import org.eclipse.epp.usagedata.internal.ui.Activator;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.preferences:
//            Messages

public class UsageDataUploadingTermsOfUsePage extends PreferencePage
    implements IWorkbenchPreferencePage
{

    public UsageDataUploadingTermsOfUsePage()
    {
        noDefaultAndApplyButton();
    }

    public void init(IWorkbench iworkbench)
    {
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout());
        Browser browser = new Browser(composite, 2048);
        GridData layoutData = new GridData(4, 4, true, true);
        browser.setLayoutData(layoutData);
        browser.setUrl(getTermsOfUseUrl());
        acceptTermsButton = new Button(composite, 32);
        acceptTermsButton.setText(Messages.UsageDataUploadingTermsOfUsePage_0);
        GridData gridData = new GridData(1, 4, true, false);
        acceptTermsButton.setLayoutData(gridData);
        acceptTermsButton.setSelection(getCapturePreferences().getBoolean("org.eclipse.epp.usagedata.gathering.terms_accepted"));
        return composite;
    }

    public boolean performOk()
    {
        getCapturePreferences().setValue("org.eclipse.epp.usagedata.gathering.terms_accepted", acceptTermsButton.getSelection());
        return super.performOk();
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

    private IPreferenceStore getCapturePreferences()
    {
        return UsageDataCaptureActivator.getDefault().getPreferenceStore();
    }

    private Button acceptTermsButton;
}

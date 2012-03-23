// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AddFilterDialog.java

package org.eclipse.epp.usagedata.internal.ui.preview;

import org.eclipse.epp.usagedata.internal.recording.filtering.FilterUtils;
import org.eclipse.epp.usagedata.internal.recording.filtering.PreferencesBasedFilter;
import org.eclipse.jface.dialogs.IInputValidator;
import org.eclipse.jface.dialogs.InputDialog;
import org.eclipse.swt.widgets.Shell;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.preview:
//            Messages

public class AddFilterDialog
{

    public AddFilterDialog(PreferencesBasedFilter filter)
    {
        this.filter = filter;
    }

    public void prompt(Shell shell, String suggestion)
    {
        InputDialog dialog = new InputDialog(shell, Messages.AddFilterDialog_0, Messages.AddFilterDialog_1, suggestion, getValidator());
        dialog.open();
        if(dialog.getReturnCode() != 0)
        {
            return;
        } else
        {
            filter.addPattern(dialog.getValue().trim());
            return;
        }
    }

    IInputValidator getValidator()
    {
        return new IInputValidator() {

            public String isValid(String pattern)
            {
                if(pattern == null)
                    return null;
                pattern = pattern.trim();
                if(pattern.length() == 0)
                    return null;
                if(alreadyHasPattern(pattern))
                    return Messages.AddFilterDialog_2;
                if(!FilterUtils.isValidBundleIdPattern(pattern))
                    return Messages.AddFilterDialog_3;
                else
                    return null;
            }

            final AddFilterDialog this$0;

            
            {
                this$0 = AddFilterDialog.this;
                super();
            }
        }
;
    }

    boolean alreadyHasPattern(String pattern)
    {
        return filter.includesPattern(pattern);
    }

    private final PreferencesBasedFilter filter;
}

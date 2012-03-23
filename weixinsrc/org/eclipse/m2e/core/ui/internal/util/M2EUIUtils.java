// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   M2EUIUtils.java

package org.eclipse.m2e.core.ui.internal.util;

import java.util.Map;
import org.eclipse.jface.dialogs.*;
import org.eclipse.jface.fieldassist.*;
import org.eclipse.m2e.core.internal.M2EUtils;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.util:
//            M2EErrorDialog

public class M2EUIUtils
{

    public M2EUIUtils()
    {
    }

    public static Font deriveFont(Font f, int style, int height)
    {
        FontData fd[] = f.getFontData();
        FontData newFD[] = new FontData[fd.length];
        for(int i = 0; i < fd.length; i++)
            newFD[i] = new FontData(fd[i].getName(), height, style);

        return new Font(Display.getCurrent(), newFD);
    }

    public static void showErrorDialog(Shell shell, String title, String msg, Exception e)
    {
        StringBuffer buff = new StringBuffer(msg);
        Throwable t = M2EUtils.getRootCause(e);
        if(t != null && !nullOrEmpty(t.getMessage()))
            buff.append(t.getMessage());
        MessageDialog.openError(shell, title, buff.toString());
    }

    public static boolean nullOrEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    public static void showErrorsForProjectsDialog(final Shell shell, final String title, final String message, final Map errorMap)
    {
        Display.getDefault().asyncExec(new Runnable() {

            public void run()
            {
                String buttons[] = {
                    IDialogConstants.OK_LABEL
                };
                int ok_button = 0;
                M2EErrorDialog errDialog = new M2EErrorDialog(shell, title, Dialog.getImage("dialog_message_error_image"), message, 1, buttons, ok_button, errorMap);
                errDialog.create();
                errDialog.open();
            }

            private final Shell val$shell;
            private final String val$title;
            private final String val$message;
            private final Map val$errorMap;

            
            {
                shell = shell1;
                title = s;
                message = s1;
                errorMap = map;
                super();
            }
        }
);
    }

    public static void addRequiredDecoration(Control control)
    {
        FieldDecoration fieldDecoration = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_REQUIRED");
        ControlDecoration controlDecoration = new ControlDecoration(control, 0x1004000);
        controlDecoration.setDescriptionText(fieldDecoration.getDescription());
        controlDecoration.setImage(fieldDecoration.getImage());
    }
}

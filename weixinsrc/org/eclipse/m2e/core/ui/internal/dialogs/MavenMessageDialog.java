// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenMessageDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class MavenMessageDialog extends MessageDialog
{

    public MavenMessageDialog(Shell parentShell, String dialogTitle, Image dialogTitleImage, String dialogMessage, int dialogImageType, String dialogButtonLabels[], int defaultIndex)
    {
        super(parentShell, dialogTitle, dialogTitleImage, dialogMessage, dialogImageType, dialogButtonLabels, defaultIndex);
    }

    protected Control createCustomArea(Composite parent)
    {
        messageArea = new StyledText(parent, 2888);
        messageArea.setLayout(new GridLayout());
        GridData gd = new GridData(16384, 128, true, true);
        gd.widthHint = 600;
        gd.heightHint = 300;
        messageArea.setLayoutData(gd);
        return messageArea;
    }

    public static void openInfo(Shell parent, String title, String label, String message)
    {
        MavenMessageDialog dialog = new MavenMessageDialog(parent, title, Display.getDefault().getSystemImage(2), label, 2, new String[] {
            IDialogConstants.OK_LABEL
        }, 0);
        dialog.create();
        dialog.getMessageArea().setText(message);
        dialog.getDialogArea().pack(true);
        dialog.open();
    }

    public static void openWithSeverity(Shell parent, String title, String label, String message, int severity)
    {
        Image icon = severity != 3 ? Display.getDefault().getSystemImage(2) : Display.getDefault().getSystemImage(1);
        MavenMessageDialog dialog = new MavenMessageDialog(parent, title, icon, label, severity, new String[] {
            IDialogConstants.OK_LABEL
        }, 0);
        dialog.create();
        dialog.getMessageArea().setText(message);
        dialog.getDialogArea().pack(true);
        dialog.open();
    }

    private StyledText getMessageArea()
    {
        return messageArea;
    }

    private StyledText messageArea;
}

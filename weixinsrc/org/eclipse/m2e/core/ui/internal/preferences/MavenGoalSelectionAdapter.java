// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenGoalSelectionAdapter.java

package org.eclipse.m2e.core.ui.internal.preferences;

import org.eclipse.m2e.core.ui.internal.dialogs.MavenGoalSelectionDialog;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

public class MavenGoalSelectionAdapter extends SelectionAdapter
{

    public MavenGoalSelectionAdapter(Text text, Shell shell)
    {
        this.text = text;
        this.shell = shell;
    }

    public void widgetSelected(SelectionEvent e)
    {
        MavenGoalSelectionDialog dialog = new MavenGoalSelectionDialog(shell);
        int rc = dialog.open();
        if(rc == 0)
        {
            text.insert("");
            String txt = text.getText();
            int len = txt.length();
            int pos = text.getCaretPosition();
            StringBuffer sb = new StringBuffer();
            if(pos > 0 && txt.charAt(pos - 1) != ' ')
                sb.append(' ');
            String sep = "";
            Object o[] = dialog.getResult();
            for(int i = 0; i < o.length; i++)
            {
                if(o[i] instanceof org.eclipse.m2e.core.ui.internal.dialogs.MavenGoalSelectionDialog.Entry)
                    if(dialog.isQualifiedName())
                        sb.append(sep).append(((org.eclipse.m2e.core.ui.internal.dialogs.MavenGoalSelectionDialog.Entry)o[i]).getQualifiedName());
                    else
                        sb.append(sep).append(((org.eclipse.m2e.core.ui.internal.dialogs.MavenGoalSelectionDialog.Entry)o[i]).getName());
                sep = " ";
            }

            if(pos < len && txt.charAt(pos) != ' ')
                sb.append(' ');
            text.insert(sb.toString());
            text.setFocus();
        }
    }

    private Shell shell;
    private Text text;
}

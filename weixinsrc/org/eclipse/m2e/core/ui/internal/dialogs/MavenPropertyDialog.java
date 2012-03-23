// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenPropertyDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class MavenPropertyDialog extends Dialog
{

    public MavenPropertyDialog(Shell shell, String title, String initialName, String initialValue, VerifyListener verifyListener)
    {
        super(shell);
        this.title = title;
        this.initialName = initialName;
        this.initialValue = initialValue;
        this.verifyListener = verifyListener;
    }

    protected Control createDialogArea(Composite parent)
    {
        Composite comp = new Composite(parent, 0);
        GridLayout gridLayout = new GridLayout(2, false);
        gridLayout.marginTop = 7;
        gridLayout.marginWidth = 12;
        comp.setLayout(gridLayout);
        Label nameLabel = new Label(comp, 0);
        nameLabel.setText(Messages.launchPropertyDialogName);
        nameLabel.setFont(comp.getFont());
        nameText = new Text(comp, 2052);
        GridData gd = new GridData(768);
        gd.widthHint = 300;
        nameText.setLayoutData(gd);
        nameText.setFont(comp.getFont());
        nameText.setText(initialName != null ? initialName : "");
        nameText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                updateButtons();
            }

            final MavenPropertyDialog this$0;

            
            {
                this$0 = MavenPropertyDialog.this;
                super();
            }
        }
);
        Label valueLabel = new Label(comp, 0);
        valueLabel.setText(Messages.launchPropertyDialogValue);
        valueLabel.setFont(comp.getFont());
        valueText = new Text(comp, 2052);
        gd = new GridData(768);
        gd.widthHint = 300;
        valueText.setLayoutData(gd);
        valueText.setFont(comp.getFont());
        valueText.setText(initialValue != null ? initialValue : "");
        valueText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                updateButtons();
            }

            final MavenPropertyDialog this$0;

            
            {
                this$0 = MavenPropertyDialog.this;
                super();
            }
        }
);
        return comp;
    }

    public String getName()
    {
        return name;
    }

    public String getValue()
    {
        return value;
    }

    protected void buttonPressed(int buttonId)
    {
        if(buttonId == 0)
        {
            name = nameText.getText();
            value = valueText.getText();
        } else
        {
            name = null;
            value = null;
        }
        super.buttonPressed(buttonId);
    }

    protected void configureShell(Shell shell)
    {
        super.configureShell(shell);
        if(title != null)
            shell.setText(title);
    }

    protected void updateButtons()
    {
        String name = nameText.getText().trim();
        String value = valueText.getText().trim();
        Event e = new Event();
        e.widget = nameText;
        VerifyEvent ev = new VerifyEvent(e);
        ev.doit = true;
        if(verifyListener != null)
        {
            ev.text = name;
            verifyListener.verifyText(ev);
        }
        getButton(0).setEnabled(name.length() > 0 && value.length() > 0 && ev.doit);
    }

    public void create()
    {
        super.create();
        updateButtons();
    }

    private final String title;
    private final String initialName;
    private final String initialValue;
    private final VerifyListener verifyListener;
    protected Text nameText;
    protected Text valueText;
    private String name;
    private String value;
}

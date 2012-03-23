// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TextComboBoxCellEditor.java

package org.eclipse.m2e.core.ui.internal.components;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.events.*;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class TextComboBoxCellEditor extends CellEditor
{

    public TextComboBoxCellEditor(Composite parent, int style)
    {
        super(parent, style);
    }

    protected Control createControl(Composite parent)
    {
        combo = new CCombo(parent, getStyle());
        combo.setFont(parent.getFont());
        combo.addKeyListener(new KeyAdapter() {

            public void keyPressed(KeyEvent e)
            {
                keyReleaseOccured(e);
            }

            final TextComboBoxCellEditor this$0;

            
            {
                this$0 = TextComboBoxCellEditor.this;
                super();
            }
        }
);
        combo.addTraverseListener(new TraverseListener() {

            public void keyTraversed(TraverseEvent e)
            {
                if(e.detail == 2 || e.detail == 4)
                    e.doit = false;
            }

            final TextComboBoxCellEditor this$0;

            
            {
                this$0 = TextComboBoxCellEditor.this;
                super();
            }
        }
);
        loadItems();
        return combo;
    }

    protected Object doGetValue()
    {
        Assert.isNotNull(combo);
        return combo.getText();
    }

    protected void doSetFocus()
    {
        Assert.isNotNull(combo);
        combo.setFocus();
    }

    protected void doSetValue(Object value)
    {
        Assert.isNotNull(combo);
        combo.setText(String.valueOf(value));
    }

    public String[] getItems()
    {
        return items;
    }

    public void setItems(String items[])
    {
        this.items = items;
        loadItems();
    }

    protected void loadItems()
    {
        if(combo != null && items != null)
            combo.setItems(items);
    }

    protected void keyReleaseOccured(KeyEvent keyEvent)
    {
        if(keyEvent.character == '\033')
            fireCancelEditor();
        else
        if(keyEvent.character == '\t' || keyEvent.character == '\r')
            focusLost();
    }

    protected String items[];
    protected CCombo combo;
}

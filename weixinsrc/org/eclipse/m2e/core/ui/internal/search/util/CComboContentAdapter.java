// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CComboContentAdapter.java

package org.eclipse.m2e.core.ui.internal.search.util;

import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.widgets.Control;

public class CComboContentAdapter
    implements IControlContentAdapter
{

    public CComboContentAdapter()
    {
    }

    public String getControlContents(Control control)
    {
        return ((CCombo)control).getText();
    }

    public void setControlContents(Control control, String text, int cursorPosition)
    {
        ((CCombo)control).setText(text);
        ((CCombo)control).setSelection(new Point(cursorPosition, cursorPosition));
    }

    public void insertControlContents(Control control, String text, int cursorPosition)
    {
        CCombo combo = (CCombo)control;
        String contents = combo.getText();
        Point selection = combo.getSelection();
        StringBuffer sb = new StringBuffer();
        sb.append(contents.substring(0, selection.x));
        sb.append(text);
        if(selection.y < contents.length())
            sb.append(contents.substring(selection.y, contents.length()));
        combo.setText(sb.toString());
        selection.x = selection.x + cursorPosition;
        selection.y = selection.x;
        combo.setSelection(selection);
    }

    public int getCursorPosition(Control control)
    {
        return ((CCombo)control).getSelection().x;
    }

    public Rectangle getInsertionBounds(Control control)
    {
        CCombo combo = (CCombo)control;
        int position = combo.getSelection().y;
        String contents = combo.getText();
        GC gc = new GC(combo);
        gc.setFont(combo.getFont());
        Point extent = gc.textExtent(contents.substring(0, Math.min(position, contents.length())));
        gc.dispose();
        if(COMPUTE_TEXT_USING_CLIENTAREA)
            return new Rectangle(combo.getClientArea().x + extent.x, combo.getClientArea().y, 1, combo.getClientArea().height);
        else
            return new Rectangle(extent.x, 0, 1, combo.getSize().y);
    }

    public void setCursorPosition(Control control, int index)
    {
        ((CCombo)control).setSelection(new Point(index, index));
    }

    public Point getSelection(Control control)
    {
        return ((CCombo)control).getSelection();
    }

    public void setSelection(Control control, Point range)
    {
        ((CCombo)control).setSelection(range);
    }

    private static final boolean COMPUTE_TEXT_USING_CLIENTAREA = !"carbon".equals(SWT.getPlatform());

}

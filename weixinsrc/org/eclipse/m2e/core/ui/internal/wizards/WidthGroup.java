// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WidthGroup.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class WidthGroup extends ControlAdapter
{

    public WidthGroup()
    {
    }

    public void controlResized(ControlEvent e)
    {
        int maxWidth = 0;
        for(Iterator iterator = controls.iterator(); iterator.hasNext();)
        {
            Control c = (Control)iterator.next();
            int width = c.getSize().x;
            if(width > maxWidth)
                maxWidth = width;
        }

        if(maxWidth > 0)
        {
            Control c;
            for(Iterator iterator1 = controls.iterator(); iterator1.hasNext(); c.getParent().layout())
            {
                c = (Control)iterator1.next();
                GridData gd = (GridData)c.getLayoutData();
                gd.widthHint = maxWidth;
            }

        }
    }

    public void addControl(Control control)
    {
        controls.add(control);
        control.getParent().layout();
    }

    private final HashSet controls = new HashSet();
}

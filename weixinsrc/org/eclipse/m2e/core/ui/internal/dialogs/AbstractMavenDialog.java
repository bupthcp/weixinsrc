// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractMavenDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import org.eclipse.jface.dialogs.DialogSettings;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.dialogs.SelectionStatusDialog;

public abstract class AbstractMavenDialog extends SelectionStatusDialog
{

    protected AbstractMavenDialog(Shell parent, String settingsSection)
    {
        super(parent);
        IDialogSettings pluginSettings = M2EUIPluginActivator.getDefault().getDialogSettings();
        IDialogSettings settings = pluginSettings.getSection(settingsSection);
        if(settings == null)
        {
            settings = new DialogSettings(settingsSection);
            settings.put("width", 480);
            settings.put("height", 450);
            pluginSettings.addSection(settings);
        }
        this.settings = settings;
    }

    protected Point getInitialSize()
    {
        Point result = super.getInitialSize();
        if(size != null)
        {
            result.x = Math.max(result.x, size.x);
            result.y = Math.max(result.y, size.y);
            Rectangle display = getShell().getDisplay().getClientArea();
            result.x = Math.min(result.x, display.width);
            result.y = Math.min(result.y, display.height);
        }
        return result;
    }

    protected Point getInitialLocation(Point initialSize)
    {
        Point result = super.getInitialLocation(initialSize);
        if(location != null)
        {
            result.x = location.x;
            result.y = location.y;
            Rectangle display = getShell().getDisplay().getClientArea();
            int xe = result.x + initialSize.x;
            if(xe > display.width)
                result.x -= xe - display.width;
            int ye = result.y + initialSize.y;
            if(ye > display.height)
                result.y -= ye - display.height;
        }
        return result;
    }

    public boolean close()
    {
        writeSettings();
        return super.close();
    }

    protected void readSettings()
    {
        try
        {
            int x = settings.getInt("x");
            int y = settings.getInt("y");
            location = new Point(x, y);
        }
        catch(NumberFormatException _ex)
        {
            location = null;
        }
        try
        {
            int width = settings.getInt("width");
            int height = settings.getInt("height");
            size = new Point(width, height);
        }
        catch(NumberFormatException _ex)
        {
            size = null;
        }
    }

    private void writeSettings()
    {
        Point location = getShell().getLocation();
        settings.put("x", location.x);
        settings.put("y", location.y);
        Point size = getShell().getSize();
        settings.put("width", size.x);
        settings.put("height", size.y);
    }

    protected static final String KEY_WIDTH = "width";
    protected static final String KEY_HEIGHT = "height";
    private static final String KEY_X = "x";
    private static final String KEY_Y = "y";
    protected IDialogSettings settings;
    private Point location;
    private Point size;
}

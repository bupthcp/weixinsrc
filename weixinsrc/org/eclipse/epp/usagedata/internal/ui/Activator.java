// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Activator.java

package org.eclipse.epp.usagedata.internal.ui;

import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

public class Activator extends AbstractUIPlugin
{

    public Activator()
    {
    }

    public void start(BundleContext context)
        throws Exception
    {
        super.start(context);
        plugin = this;
    }

    public void stop(BundleContext context)
        throws Exception
    {
        plugin = null;
        super.stop(context);
    }

    public static Activator getDefault()
    {
        return plugin;
    }

    public ImageDescriptor getImageDescriptor(String path)
    {
        ImageDescriptor descriptor = getImageRegistry().getDescriptor(path);
        if(descriptor == null)
        {
            descriptor = AbstractUIPlugin.imageDescriptorFromPlugin(getBundle().getSymbolicName(), path);
            getImageRegistry().put(path, descriptor);
        }
        return descriptor;
    }

    public transient void log(int status, String message, Object arguments[])
    {
        log(status, null, message, arguments);
    }

    public transient void log(int status, Exception exception, String message, Object arguments[])
    {
        log(status, exception, String.format(message, arguments));
    }

    public void log(int status, Exception e, String message)
    {
        getLog().log(new Status(status, "org.eclipse.epp.usagedata.ui", message, e));
    }

    public void log(Status status)
    {
        getLog().log(status);
    }

    public static final String PLUGIN_ID = "org.eclipse.epp.usagedata.ui";
    private static Activator plugin;
}

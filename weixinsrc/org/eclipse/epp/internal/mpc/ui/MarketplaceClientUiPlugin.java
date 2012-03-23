// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceClientUiPlugin.java

package org.eclipse.epp.internal.mpc.ui;

import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

public class MarketplaceClientUiPlugin extends AbstractUIPlugin
{

    public MarketplaceClientUiPlugin()
    {
    }

    public void start(BundleContext context)
        throws Exception
    {
        instance = this;
        super.start(context);
    }

    public void stop(BundleContext context)
        throws Exception
    {
        super.stop(context);
        instance = null;
    }

    public static MarketplaceClientUiPlugin getInstance()
    {
        return instance;
    }

    protected ImageRegistry createImageRegistry()
    {
        ImageRegistry imageRegistry = super.createImageRegistry();
        imageRegistry.put("NO_ICON_PROVIDED", imageDescriptorFromPlugin(getBundle().getSymbolicName(), "icons/noiconprovided.png"));
        imageRegistry.put("NO_ICON_PROVIDED_CATALOG", imageDescriptorFromPlugin(getBundle().getSymbolicName(), "icons/noiconprovided32.png"));
        imageRegistry.put("IU_ICON", imageDescriptorFromPlugin(getBundle().getSymbolicName(), "icons/iu_obj.gif"));
        imageRegistry.put("IU_ICON_UPDATE", imageDescriptorFromPlugin(getBundle().getSymbolicName(), "icons/iu_update_obj.gif"));
        return imageRegistry;
    }

    public static final String IU_ICON_UPDATE = "IU_ICON_UPDATE";
    public static final String IU_ICON = "IU_ICON";
    public static final String NO_ICON_PROVIDED = "NO_ICON_PROVIDED";
    public static final String NO_ICON_PROVIDED_CATALOG = "NO_ICON_PROVIDED_CATALOG";
    private static MarketplaceClientUiPlugin instance;
}

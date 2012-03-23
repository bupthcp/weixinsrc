// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   M2EUIPluginActivator.java

package org.eclipse.m2e.core.ui.internal;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.IndexManager;
import org.eclipse.m2e.core.internal.index.filter.FilteredIndex;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.IMavenDiscovery;
import org.eclipse.m2e.core.ui.internal.console.MavenConsoleImpl;
import org.eclipse.m2e.core.ui.internal.search.util.IndexSearchEngine;
import org.eclipse.m2e.core.ui.internal.search.util.SearchEngine;
import org.eclipse.m2e.core.ui.internal.wizards.IMavenDiscoveryUI;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.preferences.ScopedPreferenceStore;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

// Referenced classes of package org.eclipse.m2e.core.ui.internal:
//            MavenImages

public class M2EUIPluginActivator extends AbstractUIPlugin
{

    public M2EUIPluginActivator()
    {
        instance = this;
    }

    public IPreferenceStore getPreferenceStore()
    {
        if(preferenceStore == null)
            preferenceStore = new ScopedPreferenceStore(new InstanceScope(), "org.eclipse.m2e.core");
        return preferenceStore;
    }

    public void start(BundleContext context)
        throws Exception
    {
        super.start(context);
    }

    public void stop(BundleContext context)
        throws Exception
    {
        super.stop(context);
    }

    public static M2EUIPluginActivator getDefault()
    {
        return instance;
    }

    public static Image getImage(String path)
    {
        ImageRegistry registry = getDefault().getImageRegistry();
        Image image = registry.get(path);
        if(image == null)
        {
            registry.put(path, imageDescriptorFromPlugin("org.eclipse.m2e.core", path));
            image = registry.get(path);
        }
        return image;
    }

    public static ImageDescriptor getImageDescriptor(String path)
    {
        return imageDescriptorFromPlugin("org.eclipse.m2e.core", path);
    }

    public synchronized MavenConsoleImpl getMavenConsole()
    {
        if(console == null)
            console = new MavenConsoleImpl(MavenImages.M2);
        return console;
    }

    public boolean hasMavenConsoleImpl()
    {
        return console != null;
    }

    public SearchEngine getSearchEngine(IProject project)
        throws CoreException
    {
        return new IndexSearchEngine(new FilteredIndex(project, MavenPlugin.getIndexManager().getIndex(project)));
    }

    public synchronized IMavenDiscovery getMavenDiscovery()
    {
        BundleContext context = getBundle().getBundleContext();
        org.osgi.framework.ServiceReference serviceReference = context.getServiceReference(org/eclipse/m2e/core/internal/lifecyclemapping/discovery/IMavenDiscovery.getName());
        if(serviceReference != null)
            return (IMavenDiscovery)context.getService(serviceReference);
        else
            return null;
    }

    public void ungetMavenDiscovery(IMavenDiscovery imavendiscovery)
    {
    }

    public IMavenDiscoveryUI getImportWizardPageFactory()
    {
        BundleContext context = getBundle().getBundleContext();
        org.osgi.framework.ServiceReference serviceReference = context.getServiceReference(org/eclipse/m2e/core/ui/internal/wizards/IMavenDiscoveryUI.getName());
        if(serviceReference != null)
            return (IMavenDiscoveryUI)context.getService(serviceReference);
        else
            return null;
    }

    public static final String PLUGIN_ID = "org.eclipse.m2e.core.ui";
    private static M2EUIPluginActivator instance;
    private ScopedPreferenceStore preferenceStore;
    private MavenConsoleImpl console;
}

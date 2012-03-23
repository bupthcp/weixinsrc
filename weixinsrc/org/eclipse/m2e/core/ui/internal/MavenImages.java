// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenImages.java

package org.eclipse.m2e.core.ui.internal;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.viewers.DecorationOverlayIcon;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal:
//            M2EUIPluginActivator

public class MavenImages
{

    public MavenImages()
    {
    }

    private static ImageDescriptor createDescriptor(String key)
    {
        try
        {
            ImageRegistry imageRegistry = getImageRegistry();
            if(imageRegistry != null)
            {
                ImageDescriptor imageDescriptor = imageRegistry.getDescriptor(key);
                if(imageDescriptor == null)
                {
                    imageDescriptor = doCreateDescriptor(key);
                    imageRegistry.put(key, imageDescriptor);
                }
                return imageDescriptor;
            }
        }
        catch(Exception ex)
        {
            log.error(key, ex);
        }
        return null;
    }

    private static Image createImage(String key)
    {
        createDescriptor(key);
        ImageRegistry imageRegistry = getImageRegistry();
        return imageRegistry != null ? imageRegistry.get(key) : null;
    }

    private static ImageRegistry getImageRegistry()
    {
        M2EUIPluginActivator plugin = M2EUIPluginActivator.getDefault();
        return plugin != null ? plugin.getImageRegistry() : null;
    }

    private static ImageDescriptor doCreateDescriptor(String image)
    {
        return AbstractUIPlugin.imageDescriptorFromPlugin("org.eclipse.m2e.core.ui", (new StringBuilder("icons/")).append(image).toString());
    }

    private static ImageDescriptor getOverlayImageDescriptor(String basekey, String overlaykey, int quadrant)
    {
        String key = (new StringBuilder(String.valueOf(basekey))).append(overlaykey).toString();
        ImageRegistry imageRegistry;
        ImageDescriptor imageDescriptor;
        ImageDescriptor base;
        ImageDescriptor overlay;
        imageRegistry = getImageRegistry();
        if(imageRegistry == null)
            break MISSING_BLOCK_LABEL_133;
        imageDescriptor = imageRegistry.getDescriptor(key);
        if(imageDescriptor != null)
            break MISSING_BLOCK_LABEL_117;
        base = createDescriptor(basekey);
        overlay = createDescriptor(overlaykey);
        if(base != null && overlay != null)
            break MISSING_BLOCK_LABEL_99;
        log.error((new StringBuilder("cannot construct overlay image descriptor for ")).append(basekey).append(" ").append(overlaykey).toString());
        return null;
        imageDescriptor = createOverlayDescriptor(base, overlay, quadrant);
        imageRegistry.put(key, imageDescriptor);
        return imageDescriptor;
        Exception ex;
        ex;
        log.error(key, ex);
        return null;
    }

    public static Image getOverlayImage(String base, String overlay, int quadrant)
    {
        getOverlayImageDescriptor(base, overlay, quadrant);
        ImageRegistry imageRegistry = getImageRegistry();
        return imageRegistry != null ? imageRegistry.get((new StringBuilder(String.valueOf(base))).append(overlay).toString()) : null;
    }

    public static Image createOverlayImage(String key, Image base, ImageDescriptor overlay, int quadrant)
    {
        ImageRegistry registry = getImageRegistry();
        if(registry != null)
        {
            Image image = registry.get(key);
            if(image == null)
            {
                ImageDescriptor descriptor = registry.getDescriptor(key);
                if(descriptor == null)
                    registry.put(key, createOverlayDescriptor(base, overlay, quadrant));
                image = registry.get(key);
            }
            return image;
        } else
        {
            return null;
        }
    }

    private static ImageDescriptor createOverlayDescriptor(ImageDescriptor base, ImageDescriptor overlay, int quadrant)
    {
        return new DecorationOverlayIcon(base.createImage(), overlay, quadrant);
    }

    private static ImageDescriptor createOverlayDescriptor(Image base, ImageDescriptor overlay, int quadrant)
    {
        return new DecorationOverlayIcon(base, overlay, quadrant);
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/MavenImages);
    public static final ImageDescriptor M2 = createDescriptor("m2.gif");
    public static final ImageDescriptor DEBUG = createDescriptor("debug.gif");
    public static final ImageDescriptor ADD_INDEX = createDescriptor("add_index.gif");
    public static final ImageDescriptor NEW_POM = createDescriptor("new_m2_pom.gif");
    public static final ImageDescriptor REFRESH = createDescriptor("refresh.gif");
    public static final ImageDescriptor UPD_INDEX = createDescriptor("update_index.gif");
    public static final ImageDescriptor REBUILD_INDEX = createDescriptor("rebuild_index.gif");
    public static final ImageDescriptor POM;
    public static final ImageDescriptor SHOW_CONSOLE_ERR = createDescriptor("stderr.gif");
    public static final ImageDescriptor SHOW_CONSOLE_OUT = createDescriptor("stdout.gif");
    public static final ImageDescriptor MAVEN_OVERLAY = createDescriptor("mlabel.gif");
    public static final String PATH_JAR = "jar_obj.gif";
    public static final String PATH_PROJECT = "project_obj.gif";
    public static final String PATH_LOCK = "lock_ovr.gif";
    public static final String PATH_VERSION = "jar_version.gif";
    public static final String PATH_VERSION_SRC = "jar_src_version.gif";
    public static final Image IMG_JAR = createImage("jar_obj.gif");
    public static final Image IMG_VERSION = createImage("jar_version.gif");
    public static final Image IMG_VERSION_SRC = createImage("jar_src_version.gif");
    public static final Image IMG_LAUNCH_MAIN = createImage("main_tab.gif");
    public static final Image IMG_INDEX = createImage("maven_index.gif");
    public static final Image IMG_INDEXES = createImage("maven_indexes.gif");
    public static final Image IMG_PASSED = createImage("passed.png");
    public static final Image IMG_POM;
    public static final Image IMG_ERROR = createImage("error_st_obj.gif");
    public static final ImageDescriptor WIZ_IMPORT_WIZ = createDescriptor("import_project.png");
    public static final ImageDescriptor WIZ_NEW_PROJECT = createDescriptor("new_m2_project_wizard.gif");
    public static final String MVN_PROJECT = "project-mlabel.gif";

    static 
    {
        POM = createDescriptor("pom_obj.gif");
        IMG_POM = POM.createImage();
    }
}

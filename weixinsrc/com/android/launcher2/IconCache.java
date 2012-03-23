// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IconCache.java

package com.android.launcher2;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.*;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            LauncherApplication, ApplicationInfo, LauncherModel, Utilities

public class IconCache
{
    private static class CacheEntry
    {

        public Bitmap icon;
        public String title;

        private CacheEntry()
        {
        }

        CacheEntry(CacheEntry cacheentry)
        {
            this();
        }
    }


    public IconCache(LauncherApplication context)
    {
        mContext = context;
        mPackageManager = context.getPackageManager();
        int density = context.getResources().getDisplayMetrics().densityDpi;
        if(LauncherApplication.isScreenLarge())
        {
            if(density == 120)
                mIconDpi = 160;
            else
            if(density == 160)
                mIconDpi = 240;
            else
            if(density == 240)
                mIconDpi = 320;
            else
            if(density == 320)
                mIconDpi = 320;
        } else
        {
            mIconDpi = context.getResources().getDisplayMetrics().densityDpi;
        }
    }

    public Drawable getFullResDefaultActivityIcon()
    {
        return getFullResIcon(Resources.getSystem(), 0x10d0000);
    }

    public Drawable getFullResIcon(Resources resources, int iconId)
    {
        Drawable d;
        try
        {
            d = resources.getDrawableForDensity(iconId, mIconDpi);
        }
        catch(android.content.res.Resources.NotFoundException e)
        {
            d = null;
        }
        return d == null ? getFullResDefaultActivityIcon() : d;
    }

    public Drawable getFullResIcon(ResolveInfo info, PackageManager packageManager)
    {
        Resources resources;
        try
        {
            resources = packageManager.getResourcesForApplication(info.activityInfo.applicationInfo);
        }
        catch(android.content.pm.PackageManager.NameNotFoundException e)
        {
            resources = null;
        }
        if(resources != null)
        {
            int iconId = info.activityInfo.getIconResource();
            if(iconId != 0)
                return getFullResIcon(resources, iconId);
        }
        return getFullResDefaultActivityIcon();
    }

    private Bitmap makeDefaultIcon()
    {
        Drawable d = getFullResDefaultActivityIcon();
        Bitmap b = Bitmap.createBitmap(Math.max(d.getIntrinsicWidth(), 1), Math.max(d.getIntrinsicHeight(), 1), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        d.setBounds(0, 0, b.getWidth(), b.getHeight());
        d.draw(c);
        c.setBitmap(null);
        return b;
    }

    public void remove(ComponentName componentName)
    {
        synchronized(mCache)
        {
            mCache.remove(componentName);
        }
    }

    public void flush()
    {
        synchronized(mCache)
        {
            mCache.clear();
        }
    }

    public void getTitleAndIcon(ApplicationInfo application, ResolveInfo info, HashMap labelCache)
    {
        synchronized(mCache)
        {
            CacheEntry entry = cacheLocked(application.componentName, info, labelCache);
            application.title = entry.title;
            application.iconBitmap = entry.icon;
        }
    }

    public Bitmap getIcon(Intent intent)
    {
        HashMap hashmap = mCache;
        JVM INSTR monitorenter ;
        ResolveInfo resolveInfo;
        ComponentName component;
        resolveInfo = mPackageManager.resolveActivity(intent, 0);
        component = intent.getComponent();
        if(resolveInfo == null || component == null)
            return mDefaultIcon;
        CacheEntry entry = cacheLocked(component, resolveInfo, null);
        entry.icon;
        hashmap;
        JVM INSTR monitorexit ;
        return;
        hashmap;
        JVM INSTR monitorexit ;
        throw ;
    }

    public Bitmap getIcon(ComponentName component, ResolveInfo resolveInfo, HashMap labelCache)
    {
label0:
        {
            CacheEntry entry;
            synchronized(mCache)
            {
                if(resolveInfo != null && component != null)
                    break label0;
            }
            return null;
        }
        entry = cacheLocked(component, resolveInfo, labelCache);
        entry.icon;
        hashmap;
        JVM INSTR monitorexit ;
        return;
    }

    public boolean isDefaultIcon(Bitmap icon)
    {
        return mDefaultIcon == icon;
    }

    private CacheEntry cacheLocked(ComponentName componentName, ResolveInfo info, HashMap labelCache)
    {
        CacheEntry entry = (CacheEntry)mCache.get(componentName);
        if(entry == null)
        {
            entry = new CacheEntry(null);
            mCache.put(componentName, entry);
            ComponentName key = LauncherModel.getComponentNameFromResolveInfo(info);
            if(labelCache != null && labelCache.containsKey(key))
            {
                entry.title = ((CharSequence)labelCache.get(key)).toString();
            } else
            {
                entry.title = info.loadLabel(mPackageManager).toString();
                if(labelCache != null)
                    labelCache.put(key, entry.title);
            }
            if(entry.title == null)
                entry.title = info.activityInfo.name;
            entry.icon = Utilities.createIconBitmap(getFullResIcon(info, mPackageManager), mContext);
        }
        return entry;
    }

    public HashMap getAllIcons()
    {
        HashMap hashmap = mCache;
        JVM INSTR monitorenter ;
        HashMap set = new HashMap();
        int i = 0;
        ComponentName cn;
        CacheEntry e;
        for(Iterator iterator = mCache.keySet().iterator(); iterator.hasNext(); set.put(cn, e.icon))
        {
            cn = (ComponentName)iterator.next();
            e = (CacheEntry)mCache.get(cn);
        }

        return set;
        hashmap;
        JVM INSTR monitorexit ;
        throw ;
    }

    private static final String TAG = "Launcher.IconCache";
    private static final int INITIAL_ICON_CACHE_CAPACITY = 50;
    private final Bitmap mDefaultIcon = makeDefaultIcon();
    private final LauncherApplication mContext;
    private final PackageManager mPackageManager;
    private final HashMap mCache = new HashMap(50);
    private int mIconDpi;
}

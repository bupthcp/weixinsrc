// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewIconCache.java

package com.android.launcher2;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.pm.ComponentInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            ApplicationInfo

public class PagedViewIconCache
{
    public static class Key
    {

        private ComponentName getComponentName()
        {
            return mComponentName;
        }

        public boolean isKeyType(Type t)
        {
            return mType == t;
        }

        public boolean equals(Object o)
        {
            if(o instanceof Key)
            {
                Key k = (Key)o;
                return mComponentName.equals(k.mComponentName);
            } else
            {
                return super.equals(o);
            }
        }

        public int hashCode()
        {
            return getComponentName().hashCode();
        }

        private final ComponentName mComponentName;
        private final Type mType;

        public Key(ApplicationInfo info)
        {
            mComponentName = info.componentName;
            mType = Type.ApplicationInfoKey;
        }

        public Key(ResolveInfo info)
        {
            ComponentInfo ci = ((ComponentInfo) (info.activityInfo == null ? ((ComponentInfo) (info.serviceInfo)) : ((ComponentInfo) (info.activityInfo))));
            mComponentName = new ComponentName(ci.packageName, ci.name);
            mType = Type.ResolveInfoKey;
        }

        public Key(AppWidgetProviderInfo info)
        {
            mComponentName = info.provider;
            mType = Type.AppWidgetProviderInfoKey;
        }
    }


    public PagedViewIconCache()
    {
    }

    public void clear()
    {
        Key key;
        for(Iterator iterator = mIconOutlineCache.keySet().iterator(); iterator.hasNext(); ((Bitmap)mIconOutlineCache.get(key)).recycle())
            key = (Key)iterator.next();

        mIconOutlineCache.clear();
    }

    private void retainAll(HashSet keysToKeep, Key.Type t)
    {
        HashSet keysToRemove = new HashSet(mIconOutlineCache.keySet());
        keysToRemove.removeAll(keysToKeep);
        for(Iterator iterator = keysToRemove.iterator(); iterator.hasNext();)
        {
            Key key = (Key)iterator.next();
            if(key.isKeyType(t))
            {
                ((Bitmap)mIconOutlineCache.get(key)).recycle();
                mIconOutlineCache.remove(key);
            }
        }

    }

    public void retainAllApps(ArrayList keys)
    {
        HashSet keysSet = new HashSet();
        ApplicationInfo info;
        for(Iterator iterator = keys.iterator(); iterator.hasNext(); keysSet.add(new Key(info)))
            info = (ApplicationInfo)iterator.next();

        retainAll(keysSet, Key.Type.ApplicationInfoKey);
    }

    public void retainAllShortcuts(List keys)
    {
        HashSet keysSet = new HashSet();
        ResolveInfo info;
        for(Iterator iterator = keys.iterator(); iterator.hasNext(); keysSet.add(new Key(info)))
            info = (ResolveInfo)iterator.next();

        retainAll(keysSet, Key.Type.ResolveInfoKey);
    }

    public void retainAllAppWidgets(List keys)
    {
        HashSet keysSet = new HashSet();
        AppWidgetProviderInfo info;
        for(Iterator iterator = keys.iterator(); iterator.hasNext(); keysSet.add(new Key(info)))
            info = (AppWidgetProviderInfo)iterator.next();

        retainAll(keysSet, Key.Type.AppWidgetProviderInfoKey);
    }

    public void addOutline(Key key, Bitmap b)
    {
        mIconOutlineCache.put(key, b);
    }

    public void removeOutline(Key key)
    {
        if(mIconOutlineCache.containsKey(key))
        {
            ((Bitmap)mIconOutlineCache.get(key)).recycle();
            mIconOutlineCache.remove(key);
        }
    }

    public Bitmap getOutline(Key key)
    {
        return (Bitmap)mIconOutlineCache.get(key);
    }

    private final HashMap mIconOutlineCache = new HashMap();
}

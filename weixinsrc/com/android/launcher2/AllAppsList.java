// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AllAppsList.java

package com.android.launcher2;

import android.content.*;
import android.content.pm.*;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            ApplicationInfo, IconCache

class AllAppsList
{

    public AllAppsList(IconCache iconCache)
    {
        data = new ArrayList(42);
        added = new ArrayList(42);
        removed = new ArrayList();
        modified = new ArrayList();
        mIconCache = iconCache;
    }

    public void add(com.android.launcher2.ApplicationInfo info)
    {
        if(findActivity(data, info.componentName))
        {
            return;
        } else
        {
            data.add(info);
            added.add(info);
            return;
        }
    }

    public void clear()
    {
        data.clear();
        added.clear();
        removed.clear();
        modified.clear();
    }

    public int size()
    {
        return data.size();
    }

    public com.android.launcher2.ApplicationInfo get(int index)
    {
        return (com.android.launcher2.ApplicationInfo)data.get(index);
    }

    public void addPackage(Context context, String packageName)
    {
        List matches = findActivitiesForPackage(context, packageName);
        if(matches.size() > 0)
        {
            ResolveInfo info;
            for(Iterator iterator = matches.iterator(); iterator.hasNext(); add(new com.android.launcher2.ApplicationInfo(context.getPackageManager(), info, mIconCache, null)))
                info = (ResolveInfo)iterator.next();

        }
    }

    public void removePackage(String packageName)
    {
        List data = this.data;
        for(int i = data.size() - 1; i >= 0; i--)
        {
            com.android.launcher2.ApplicationInfo info = (com.android.launcher2.ApplicationInfo)data.get(i);
            ComponentName component = info.intent.getComponent();
            if(packageName.equals(component.getPackageName()))
            {
                removed.add(info);
                data.remove(i);
            }
        }

        mIconCache.flush();
    }

    public void updatePackage(Context context, String packageName)
    {
        List matches = findActivitiesForPackage(context, packageName);
        if(matches.size() > 0)
        {
            for(int i = data.size() - 1; i >= 0; i--)
            {
                com.android.launcher2.ApplicationInfo applicationInfo = (com.android.launcher2.ApplicationInfo)data.get(i);
                ComponentName component = applicationInfo.intent.getComponent();
                if(packageName.equals(component.getPackageName()) && !findActivity(matches, component))
                {
                    removed.add(applicationInfo);
                    mIconCache.remove(component);
                    data.remove(i);
                }
            }

            int count = matches.size();
            for(int i = 0; i < count; i++)
            {
                ResolveInfo info = (ResolveInfo)matches.get(i);
                com.android.launcher2.ApplicationInfo applicationInfo = findApplicationInfoLocked(info.activityInfo.applicationInfo.packageName, info.activityInfo.name);
                if(applicationInfo == null)
                {
                    add(new com.android.launcher2.ApplicationInfo(context.getPackageManager(), info, mIconCache, null));
                } else
                {
                    mIconCache.remove(applicationInfo.componentName);
                    mIconCache.getTitleAndIcon(applicationInfo, info, null);
                    modified.add(applicationInfo);
                }
            }

        } else
        {
            for(int i = data.size() - 1; i >= 0; i--)
            {
                com.android.launcher2.ApplicationInfo applicationInfo = (com.android.launcher2.ApplicationInfo)data.get(i);
                ComponentName component = applicationInfo.intent.getComponent();
                if(packageName.equals(component.getPackageName()))
                {
                    removed.add(applicationInfo);
                    mIconCache.remove(component);
                    data.remove(i);
                }
            }

        }
    }

    private static List findActivitiesForPackage(Context context, String packageName)
    {
        PackageManager packageManager = context.getPackageManager();
        Intent mainIntent = new Intent("android.intent.action.MAIN", null);
        mainIntent.addCategory("android.intent.category.LAUNCHER");
        mainIntent.setPackage(packageName);
        List apps = packageManager.queryIntentActivities(mainIntent, 0);
        return ((List) (apps == null ? new ArrayList() : apps));
    }

    private static boolean findActivity(List apps, ComponentName component)
    {
        String className = component.getClassName();
        for(Iterator iterator = apps.iterator(); iterator.hasNext();)
        {
            ResolveInfo info = (ResolveInfo)iterator.next();
            ActivityInfo activityInfo = info.activityInfo;
            if(activityInfo.name.equals(className))
                return true;
        }

        return false;
    }

    private static boolean findActivity(ArrayList apps, ComponentName component)
    {
        int N = apps.size();
        for(int i = 0; i < N; i++)
        {
            com.android.launcher2.ApplicationInfo info = (com.android.launcher2.ApplicationInfo)apps.get(i);
            if(info.componentName.equals(component))
                return true;
        }

        return false;
    }

    private com.android.launcher2.ApplicationInfo findApplicationInfoLocked(String packageName, String className)
    {
        for(Iterator iterator = data.iterator(); iterator.hasNext();)
        {
            com.android.launcher2.ApplicationInfo info = (com.android.launcher2.ApplicationInfo)iterator.next();
            ComponentName component = info.intent.getComponent();
            if(packageName.equals(component.getPackageName()) && className.equals(component.getClassName()))
                return info;
        }

        return null;
    }

    public static final int DEFAULT_APPLICATIONS_NUMBER = 42;
    public ArrayList data;
    public ArrayList added;
    public ArrayList removed;
    public ArrayList modified;
    private IconCache mIconCache;
}

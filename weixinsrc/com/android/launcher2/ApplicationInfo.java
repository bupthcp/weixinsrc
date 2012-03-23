// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ApplicationInfo.java

package com.android.launcher2;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.android.launcher2:
//            ItemInfo, IconCache, ShortcutInfo

class ApplicationInfo extends ItemInfo
{

    ApplicationInfo()
    {
        flags = 0;
        itemType = 1;
    }

    public ApplicationInfo(PackageManager pm, ResolveInfo info, IconCache iconCache, HashMap labelCache)
    {
        flags = 0;
        String packageName = info.activityInfo.applicationInfo.packageName;
        componentName = new ComponentName(packageName, info.activityInfo.name);
        container = -1L;
        setActivity(componentName, 0x10200000);
        try
        {
            int appFlags = pm.getApplicationInfo(packageName, 0).flags;
            if((appFlags & 1) == 0)
            {
                flags |= 1;
                if((appFlags & 0x80) != 0)
                    flags |= 2;
            }
            firstInstallTime = pm.getPackageInfo(packageName, 0).firstInstallTime;
        }
        catch(android.content.pm.PackageManager.NameNotFoundException e)
        {
            Log.d("Launcher2.ApplicationInfo", (new StringBuilder("PackageManager.getApplicationInfo failed for ")).append(packageName).toString());
        }
        iconCache.getTitleAndIcon(this, info, labelCache);
    }

    public ApplicationInfo(ApplicationInfo info)
    {
        super(info);
        flags = 0;
        componentName = info.componentName;
        title = info.title.toString();
        intent = new Intent(info.intent);
        flags = info.flags;
        firstInstallTime = info.firstInstallTime;
    }

    final void setActivity(ComponentName className, int launchFlags)
    {
        intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(className);
        intent.setFlags(launchFlags);
        itemType = 0;
    }

    public String toString()
    {
        return (new StringBuilder("ApplicationInfo(title=")).append(title.toString()).append(")").toString();
    }

    public static void dumpApplicationInfoList(String tag, String label, ArrayList list)
    {
        Log.d(tag, (new StringBuilder(String.valueOf(label))).append(" size=").append(list.size()).toString());
        ApplicationInfo info;
        for(Iterator iterator = list.iterator(); iterator.hasNext(); Log.d(tag, (new StringBuilder("   title=\"")).append(info.title).append("\" iconBitmap=").append(info.iconBitmap).append(" firstInstallTime=").append(info.firstInstallTime).toString()))
            info = (ApplicationInfo)iterator.next();

    }

    public ShortcutInfo makeShortcut()
    {
        return new ShortcutInfo(this);
    }

    private static final String TAG = "Launcher2.ApplicationInfo";
    CharSequence title;
    Intent intent;
    Bitmap iconBitmap;
    long firstInstallTime;
    ComponentName componentName;
    static final int DOWNLOADED_FLAG = 1;
    static final int UPDATED_SYSTEM_APP_FLAG = 2;
    int flags;
}

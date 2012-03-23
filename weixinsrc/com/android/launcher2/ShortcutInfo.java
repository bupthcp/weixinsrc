// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ShortcutInfo.java

package com.android.launcher2;

import android.content.*;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.android.launcher2:
//            ItemInfo, ApplicationInfo, IconCache

class ShortcutInfo extends ItemInfo
{

    ShortcutInfo()
    {
        itemType = 1;
    }

    public ShortcutInfo(ShortcutInfo info)
    {
        super(info);
        title = info.title.toString();
        intent = new Intent(info.intent);
        if(info.iconResource != null)
        {
            iconResource = new android.content.Intent.ShortcutIconResource();
            iconResource.packageName = info.iconResource.packageName;
            iconResource.resourceName = info.iconResource.resourceName;
        }
        mIcon = info.mIcon;
        customIcon = info.customIcon;
    }

    public ShortcutInfo(ApplicationInfo info)
    {
        super(info);
        title = info.title.toString();
        intent = new Intent(info.intent);
        customIcon = false;
    }

    public void setIcon(Bitmap b)
    {
        mIcon = b;
    }

    public Bitmap getIcon(IconCache iconCache)
    {
        if(mIcon == null)
        {
            mIcon = iconCache.getIcon(intent);
            usingFallbackIcon = iconCache.isDefaultIcon(mIcon);
        }
        return mIcon;
    }

    final void setActivity(ComponentName className, int launchFlags)
    {
        intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(className);
        intent.setFlags(launchFlags);
        itemType = 0;
    }

    void onAddToDatabase(ContentValues values)
    {
        super.onAddToDatabase(values);
        String titleStr = title == null ? null : title.toString();
        values.put("title", titleStr);
        String uri = intent == null ? null : intent.toUri(0);
        values.put("intent", uri);
        if(customIcon)
        {
            values.put("iconType", Integer.valueOf(1));
            writeBitmap(values, mIcon);
        } else
        {
            if(!usingFallbackIcon)
                writeBitmap(values, mIcon);
            values.put("iconType", Integer.valueOf(0));
            if(iconResource != null)
            {
                values.put("iconPackage", iconResource.packageName);
                values.put("iconResource", iconResource.resourceName);
            }
        }
    }

    public String toString()
    {
        return (new StringBuilder("ShortcutInfo(title=")).append(title.toString()).append(")").toString();
    }

    public static void dumpShortcutInfoList(String tag, String label, ArrayList list)
    {
        Log.d(tag, (new StringBuilder(String.valueOf(label))).append(" size=").append(list.size()).toString());
        ShortcutInfo info;
        for(Iterator iterator = list.iterator(); iterator.hasNext(); Log.d(tag, (new StringBuilder("   title=\"")).append(info.title).append(" icon=").append(info.mIcon).append(" customIcon=").append(info.customIcon).toString()))
            info = (ShortcutInfo)iterator.next();

    }

    CharSequence title;
    Intent intent;
    boolean customIcon;
    boolean usingFallbackIcon;
    android.content.Intent.ShortcutIconResource iconResource;
    private Bitmap mIcon;
}

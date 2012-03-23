// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherAppWidgetInfo.java

package com.android.launcher2;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.ContentValues;

// Referenced classes of package com.android.launcher2:
//            ItemInfo

class LauncherAppWidgetInfo extends ItemInfo
{

    LauncherAppWidgetInfo(ComponentName providerName)
    {
        appWidgetId = -1;
        minWidth = -1;
        minHeight = -1;
        hostView = null;
        itemType = 4;
        this.providerName = providerName;
        spanX = -1;
        spanY = -1;
    }

    LauncherAppWidgetInfo(int appWidgetId)
    {
        this.appWidgetId = -1;
        minWidth = -1;
        minHeight = -1;
        hostView = null;
        itemType = 4;
        this.appWidgetId = appWidgetId;
    }

    void onAddToDatabase(ContentValues values)
    {
        onAddToDatabase(values);
        values.put("appWidgetId", Integer.valueOf(appWidgetId));
    }

    public String toString()
    {
        return (new StringBuilder("AppWidget(id=")).append(Integer.toString(appWidgetId)).append(")").toString();
    }

    void unbind()
    {
        unbind();
        hostView = null;
    }

    static final int NO_ID = -1;
    int appWidgetId;
    ComponentName providerName;
    int minWidth;
    int minHeight;
    AppWidgetHostView hostView;
}

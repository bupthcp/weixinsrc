// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PendingAddItemInfo.java

package com.android.launcher2;

import android.appwidget.AppWidgetProviderInfo;
import android.os.Parcelable;

// Referenced classes of package com.android.launcher2:
//            PendingAddItemInfo

class PendingAddWidgetInfo extends PendingAddItemInfo
{

    public PendingAddWidgetInfo(AppWidgetProviderInfo i, String dataMimeType, Parcelable data)
    {
        itemType = 4;
        componentName = i.provider;
        minWidth = i.minWidth;
        minHeight = i.minHeight;
        hasDefaultPreview = i.previewImage <= 0;
        if(dataMimeType != null && data != null)
        {
            mimeType = dataMimeType;
            configurationData = data;
        }
    }

    int minWidth;
    int minHeight;
    boolean hasDefaultPreview;
    String mimeType;
    Parcelable configurationData;
}

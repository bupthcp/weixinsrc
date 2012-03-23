// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherAppWidgetHost.java

package com.android.launcher2;

import android.appwidget.*;
import android.content.Context;

// Referenced classes of package com.android.launcher2:
//            LauncherAppWidgetHostView

public class LauncherAppWidgetHost extends AppWidgetHost
{

    public LauncherAppWidgetHost(Context context, int hostId)
    {
        super(context, hostId);
    }

    protected AppWidgetHostView onCreateView(Context context, int appWidgetId, AppWidgetProviderInfo appWidget)
    {
        return new LauncherAppWidgetHostView(context);
    }

    public void stopListening()
    {
        super.stopListening();
        clearViews();
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.skin;

import android.content.*;
import com.tencent.mm.booter.CoreServiceHelper;

public class SkinManager extends BroadcastReceiver
{

    public SkinManager()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(intent.getAction().equals("android.intent.action.PACKAGE_REMOVED"))
        {
            String s = intent.getDataString();
            (new StringBuilder()).append("package removed, name=").append(s).toString();
            CoreServiceHelper.a(context, "auto");
        }
    }
}

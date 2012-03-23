// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.content.Context;
import android.content.res.AssetManager;
import java.util.Map;

// Referenced classes of package com.tencent.mm.platformtools:
//            Util, Log

public final class ChannelUtil
{

    private ChannelUtil()
    {
    }

    public static void a(Context context)
    {
        int i = Integer.parseInt((String)Util.l(Util.a(context.getAssets().open("channel.ini"))).get("CHANNEL"));
        c = i;
        setChannelId(i);
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.ChannelUtil", "setup channel id from channel.ini failed");
          goto _L1
    }

    public static boolean a()
    {
        boolean flag;
        if(c == 8)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static void b(Context context)
    {
        Map map = Util.l(Util.a(context.getAssets().open("profile.ini")));
        String s = Util.h((String)map.get("PROFILE_DEVICE_TYPE"));
        a = s;
        if(s.length() <= 0)
            a = android.os.Build.VERSION.SDK;
        b = Integer.parseInt((String)map.get("UPDATE_MODE"));
        (new StringBuilder()).append("profileDeviceType=").append(a).toString();
        (new StringBuilder()).append("updateMode=").append(b).toString();
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static native boolean setChannelId(int i);

    public static String a;
    public static int b = 0;
    private static int c = 0;

    static 
    {
        a = android.os.Build.VERSION.SDK;
    }
}

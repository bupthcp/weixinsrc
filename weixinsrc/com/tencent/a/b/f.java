// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.b;

import android.app.PendingIntent;
import com.tencent.qqpim.utils.QQPimUtils;

// Referenced classes of package com.tencent.a.b:
//            c, b, d

public final class f
{

    private f()
    {
        if(QQPimUtils.getSDKVersion() < 5)
            b = new c();
        else
            b = new b();
    }

    public static f a()
    {
        if(a == null)
            a = new f();
        return a;
    }

    public final boolean a(String s, String s1, PendingIntent pendingintent)
    {
        return b.a(s, s1, pendingintent);
    }

    private static f a = null;
    private d b;

}

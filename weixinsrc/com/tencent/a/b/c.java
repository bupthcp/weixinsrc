// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.b;

import android.app.PendingIntent;
import android.telephony.gsm.SmsManager;

// Referenced classes of package com.tencent.a.b:
//            d

public final class c
    implements d
{

    public c()
    {
        a = SmsManager.getDefault();
    }

    public final boolean a(String s, String s1, PendingIntent pendingintent)
    {
        a.sendTextMessage(s, null, s1, pendingintent, null);
        return true;
    }

    private SmsManager a;
}

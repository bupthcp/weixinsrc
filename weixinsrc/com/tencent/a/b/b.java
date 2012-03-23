// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.b;

import android.app.PendingIntent;
import android.os.RemoteException;
import android.telephony.SmsManager;
import com.android.internal.telephony.ISms;
import com.tencent.a.a.d;

// Referenced classes of package com.tencent.a.b:
//            d

public final class b
    implements com.tencent.a.b.d
{

    public b()
    {
        a = SmsManager.getDefault();
    }

    public final boolean a(String s, String s1, PendingIntent pendingintent)
    {
        ISms isms = d.a().b();
        if(isms != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        a.sendTextMessage(s, null, s1, pendingintent, null);
        flag = true;
_L4:
        return flag;
_L2:
        isms.sendText(s, null, s1, pendingintent, null);
        flag = true;
        continue; /* Loop/switch isn't completed */
        RemoteException remoteexception;
        remoteexception;
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private SmsManager a;
}

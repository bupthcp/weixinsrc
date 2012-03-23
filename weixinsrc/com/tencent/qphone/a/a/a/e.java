// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.a.a.a;

import android.content.Context;
import android.os.Bundle;
import com.tencent.qphone.base.a.a;
import com.tencent.qphone.base.a.b;
import com.tencent.qphone.base.remote.FromServiceMsg;

// Referenced classes of package com.tencent.qphone.a.a.a:
//            c, f, d

public final class e
{

    public e(int i, Context context, d d1)
    {
        b = null;
        c = null;
        d = new c(this);
        a = i;
        com.tencent.qphone.base.a.a.a(context);
        if(b == null)
            b = new f(context, "com.tencent.qphone.sub.accountmanager.AMService");
        b.a();
        c = d1;
    }

    public final void a()
    {
        b.b();
    }

    public final void a(FromServiceMsg fromservicemsg)
    {
        Bundle bundle = new Bundle();
        if(fromservicemsg.a())
        {
            bundle.putInt("ret", 0);
            bundle.putString("mainUser", fromservicemsg.b.getString("mainUser"));
            bundle.putByteArray("pwd", fromservicemsg.b.getByteArray("pwd"));
        } else
        {
            bundle.putInt("ret", fromservicemsg.c());
        }
        c.onGetMainAccountResult(bundle);
    }

    private int a;
    private f b;
    private d c;
    private b d;
}

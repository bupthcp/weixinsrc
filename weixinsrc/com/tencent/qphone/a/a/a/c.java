// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.a.a.a;

import android.os.IBinder;
import com.tencent.qphone.base.a.b;
import com.tencent.qphone.base.remote.FromServiceMsg;

// Referenced classes of package com.tencent.qphone.a.a.a:
//            e

final class c extends b
{

    c(e e1)
    {
        a = e1;
        super();
    }

    public final IBinder asBinder()
    {
        return this;
    }

    public final void b(FromServiceMsg fromservicemsg)
    {
        e e1 = a;
        if("getMainUser".equals(fromservicemsg.a))
            e1.a(fromservicemsg);
    }

    private e a;
}

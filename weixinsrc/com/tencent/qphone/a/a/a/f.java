// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.a.a.a;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.qphone.base.remote.FromServiceMsg;
import com.tencent.qphone.base.remote.ToServiceMsg;
import com.tencent.qphone.base.remote.g;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.tencent.qphone.a.a.a:
//            a, b

public final class f
    implements com.tencent.qphone.base.remote.f
{

    public f(Context context, String s)
    {
        c = "";
        f = new ConcurrentHashMap();
        g = new a(this);
        b = context;
        c = s;
    }

    static void a(int i)
    {
        e = i;
    }

    static void a(f f1, com.tencent.qphone.base.remote.f f2)
    {
        f1.a = f2;
    }

    static int c()
    {
        return e;
    }

    static int d()
    {
        return d;
    }

    public final void a()
    {
        Intent intent = new Intent(c);
        b.startService(intent);
        b.bindService(new Intent(c), g, 1);
    }

    public final void a(ToServiceMsg toservicemsg)
    {
        a(toservicemsg, false);
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a(ToServiceMsg toservicemsg, boolean flag)
    {
        if(a == null)
        {
            a();
            if(!flag)
            {
                (new b(this, toservicemsg)).start();
            } else
            {
                e = 0;
                FromServiceMsg fromservicemsg = new FromServiceMsg(toservicemsg.d(), toservicemsg.a(), toservicemsg.b(), toservicemsg.c());
                fromservicemsg.b();
                try
                {
                    toservicemsg.a.a(fromservicemsg);
                }
                catch(RemoteException remoteexception) { }
            }
        } else
        {
            a.a(toservicemsg);
        }
    }

    public final IBinder asBinder()
    {
        return a.asBinder();
    }

    public final void b()
    {
        b.unbindService(g);
    }

    private static int d = 15;
    private static int e = 0;
    private com.tencent.qphone.base.remote.f a;
    private Context b;
    private String c;
    private ConcurrentHashMap f;
    private ServiceConnection g;

}

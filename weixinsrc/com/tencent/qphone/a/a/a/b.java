// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.a.a.a;

import android.os.RemoteException;
import com.tencent.qphone.base.remote.ToServiceMsg;

// Referenced classes of package com.tencent.qphone.a.a.a:
//            f

final class b extends Thread
{

    b(f f1, ToServiceMsg toservicemsg)
    {
        a = f1;
        b = toservicemsg;
        super();
    }

    public final void run()
    {
        try
        {
            Thread.sleep(200L);
        }
        catch(InterruptedException interruptedexception) { }
        try
        {
            if(f.c() < f.d())
            {
                a.a(b, false);
                f.a(1 + f.c());
            } else
            {
                a.a(b, true);
            }
        }
        catch(RemoteException remoteexception) { }
    }

    private f a;
    private final ToServiceMsg b;
}

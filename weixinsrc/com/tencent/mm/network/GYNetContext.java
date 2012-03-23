// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.network.connpool.IRecord;

// Referenced classes of package com.tencent.mm.network:
//            INetContext, IReqResp_AIDL, IAccInfo, IOnGYNetEndNetwork

class GYNetContext
    implements INetContext, IRecord
{

    public GYNetContext(int i, int j)
    {
        d = false;
        e = 0;
        h = -1;
        f = i;
        g = j;
    }

    public final int a()
    {
        return h;
    }

    public final void a(int i, int j)
    {
        f = i;
        g = j;
    }

    public final void a(String s)
    {
        c.a(s);
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int b()
    {
        return e;
    }

    public final IReqResp_AIDL c()
    {
        return c;
    }

    public final void d()
    {
        e = 1;
    }

    public final int e()
    {
        return g;
    }

    public final int f()
    {
        return f;
    }

    public final void g()
    {
        d = true;
    }

    IAccInfo a;
    IOnGYNetEndNetwork b;
    IReqResp_AIDL c;
    boolean d;
    int e;
    int f;
    int g;
    int h;
}

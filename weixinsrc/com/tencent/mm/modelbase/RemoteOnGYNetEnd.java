// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import android.os.Handler;
import com.tencent.mm.network.*;

public class RemoteOnGYNetEnd extends com.tencent.mm.network.IOnGYNetEnd_AIDL.Stub
{

    public RemoteOnGYNetEnd(IReqResp ireqresp, IOnGYNetEnd iongynetend)
    {
        d = false;
        a = ireqresp;
        b = iongynetend;
        c = new Handler();
    }

    static boolean a(RemoteOnGYNetEnd remoteongynetend)
    {
        return remoteongynetend.d;
    }

    static IReqResp b(RemoteOnGYNetEnd remoteongynetend)
    {
        return remoteongynetend.a;
    }

    static IOnGYNetEnd c(RemoteOnGYNetEnd remoteongynetend)
    {
        return remoteongynetend.b;
    }

    public final void a()
    {
        d = true;
    }

    public final void a(int i, int j, int k, String s, IReqResp_AIDL ireqresp_aidl, byte abyte0[])
    {
        if(!d)
            c.post(new _cls1(i, j, k, s, abyte0));
    }

    private IReqResp a;
    private IOnGYNetEnd b;
    private Handler c;
    private boolean d;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            if(!RemoteOnGYNetEnd.a(f))
                RemoteOnGYNetEnd.c(f).a(a, b, c, d, RemoteOnGYNetEnd.b(f));
        }

        private int a;
        private int b;
        private int c;
        private String d;
        private byte e[];
        private RemoteOnGYNetEnd f;

        _cls1(int i, int j, int k, String s, byte abyte0[])
        {
            f = RemoteOnGYNetEnd.this;
            a = i;
            b = j;
            c = k;
            d = s;
            e = abyte0;
            super();
        }
    }

}

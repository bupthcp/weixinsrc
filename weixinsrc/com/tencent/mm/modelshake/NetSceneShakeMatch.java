// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelshake;

import android.os.Handler;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneShakeMatch extends NetSceneBase
    implements IOnGYNetEnd
{

    static IDispatcher a(NetSceneShakeMatch netsceneshakematch)
    {
        return netsceneshakematch.m();
    }

    static IOnSceneEnd b(NetSceneShakeMatch netsceneshakematch)
    {
        return netsceneshakematch.a;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        d = -1 + d;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneShakeMatch", (new StringBuilder()).append("onGYNetEnd errType:").append(j).append(" errCode:").append(k).toString());
        com.tencent.mm.protocal.MMShakeMatch.Resp resp = (com.tencent.mm.protocal.MMShakeMatch.Resp)ireqresp.b();
        f = resp.d();
        g = resp.b();
        Log.a("MicroMsg.NetSceneShakeMatch", (new StringBuilder()).append("ret:").append(g).toString());
        if(j == 0 && k == 0 && e == 0 && resp.b() == 1 && d > 0)
        {
            (new Handler()).postDelayed(new _cls1(), 2000L);
        } else
        {
            Log.d("MicroMsg.NetSceneShakeMatch", (new StringBuilder()).append("onGYNetEnd callback to UI ").append(f).toString());
            a.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 53;
    }

    protected final int c()
    {
        return 3;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private int d;
    private int e;
    private String f;
    private int g;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            Log.a("MicroMsg.NetSceneShakeMatch", "onGYNetEnd retry to ShakeMatch");
            a.a(NetSceneShakeMatch.a(a), NetSceneShakeMatch.b(a));
        }

        private NetSceneShakeMatch a;

        _cls1()
        {
            a = NetSceneShakeMatch.this;
            super();
        }
    }

}

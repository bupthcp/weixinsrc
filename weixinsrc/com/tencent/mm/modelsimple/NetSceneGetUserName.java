// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;

public class NetSceneGetUserName extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetUserName(int i, String s, String s1, String s2)
    {
        com.tencent.mm.protocal.MMGetUserName.Req req = (com.tencent.mm.protocal.MMGetUserName.Req)c.f();
        req.a(i);
        req.a(s);
        req.c(s1);
        req.b(s2);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        if(j == 0 && k == 0)
        {
            com.tencent.mm.protocal.MMGetUserName.Resp resp = (com.tencent.mm.protocal.MMGetUserName.Resp)ireqresp.b();
            d = resp.b();
            e = resp.d();
        }
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 25;
    }

    public final String d()
    {
        return d;
    }

    public final String f()
    {
        return e;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespGetUserName();
    private String d;
    private String e;

    private class MMReqRespGetUserName extends MMReqRespBase
    {

        protected final com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 25;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getusername";
        }

        public final int e()
        {
            return 1;
        }

        private final com.tencent.mm.protocal.MMGetUserName.Req a = new com.tencent.mm.protocal.MMGetUserName.Req();
        private final com.tencent.mm.protocal.MMGetUserName.Resp b = new com.tencent.mm.protocal.MMGetUserName.Resp();

        public MMReqRespGetUserName()
        {
        }
    }

}

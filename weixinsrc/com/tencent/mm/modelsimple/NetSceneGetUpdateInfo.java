// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;

public class NetSceneGetUpdateInfo extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetUpdateInfo(int j)
    {
        ((com.tencent.mm.protocal.MMGetUpdateInfo.Req)a.f()).a(j);
        ((com.tencent.mm.protocal.MMGetUpdateInfo.Req)a.f()).a(j);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int j, int k, int l, String s, IReqResp ireqresp)
    {
        b(j);
        c.a(k, l, s, this);
    }

    public final int b()
    {
        return 11;
    }

    public final int g()
    {
        return ((com.tencent.mm.protocal.MMGetUpdateInfo.Resp)a.b()).e();
    }

    public final String h()
    {
        return ((com.tencent.mm.protocal.MMGetUpdateInfo.Resp)a.b()).d();
    }

    public final String i()
    {
        return ((com.tencent.mm.protocal.MMGetUpdateInfo.Resp)a.b()).f();
    }

    private final IReqResp a = new MMReqRespGetUpdateInfo();
    private IOnSceneEnd c;

    private class MMReqRespGetUpdateInfo extends MMReqRespBase
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
            return 11;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getupdateinfo";
        }

        public final int e()
        {
            return 1;
        }

        private final com.tencent.mm.protocal.MMGetUpdateInfo.Req a = new com.tencent.mm.protocal.MMGetUpdateInfo.Req();
        private final com.tencent.mm.protocal.MMGetUpdateInfo.Resp b = new com.tencent.mm.protocal.MMGetUpdateInfo.Resp();

        public MMReqRespGetUpdateInfo()
        {
        }
    }

}

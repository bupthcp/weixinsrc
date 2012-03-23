// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.protocal.protobuf.VoipShutDownReq;

public class NetSceneVoipShutDown extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneVoipShutDown(int i)
    {
        c = new MMReqRespVoipShutDown();
        ((com.tencent.mm.protocal.MMVoipShutDown.Req)c.f()).a.a(i);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 73;
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespVoipShutDown extends MMReqRespBase
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
            return 73;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/voipshutdown";
        }

        private com.tencent.mm.protocal.MMVoipShutDown.Req a;
        private com.tencent.mm.protocal.MMVoipShutDown.Resp b;

        public MMReqRespVoipShutDown()
        {
            a = new com.tencent.mm.protocal.MMVoipShutDown.Req();
            b = new com.tencent.mm.protocal.MMVoipShutDown.Resp();
        }
    }

}

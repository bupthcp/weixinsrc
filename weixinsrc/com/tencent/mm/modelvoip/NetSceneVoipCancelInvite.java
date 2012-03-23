// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.protocal.protobuf.VoipCancelInviteReq;

public class NetSceneVoipCancelInvite extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneVoipCancelInvite(int i)
    {
        c = new MMReqRespVoipCancelInvite();
        ((com.tencent.mm.protocal.MMVoipCancelInvite.Req)c.f()).a.a(i);
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
        return 71;
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespVoipCancelInvite extends MMReqRespBase
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
            return 71;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/voipcancelinvite";
        }

        private com.tencent.mm.protocal.MMVoipCancelInvite.Req a;
        private com.tencent.mm.protocal.MMVoipCancelInvite.Resp b;

        public MMReqRespVoipCancelInvite()
        {
            a = new com.tencent.mm.protocal.MMVoipCancelInvite.Req();
            b = new com.tencent.mm.protocal.MMVoipCancelInvite.Resp();
        }
    }

}

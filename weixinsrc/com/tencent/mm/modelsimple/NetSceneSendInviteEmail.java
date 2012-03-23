// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;

public class NetSceneSendInviteEmail extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSendInviteEmail(int ai[])
    {
        ((com.tencent.mm.protocal.MMSendInviteEmail.Req)c.f()).a(ai);
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
        return 14;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespSendInviteEmail();

    private class MMReqRespSendInviteEmail extends MMReqRespBase
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
            return 14;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/sendinviteemail";
        }

        private com.tencent.mm.protocal.MMSendInviteEmail.Req a;
        private com.tencent.mm.protocal.MMSendInviteEmail.Resp b;

        public MMReqRespSendInviteEmail()
        {
            a = new com.tencent.mm.protocal.MMSendInviteEmail.Req();
            b = new com.tencent.mm.protocal.MMSendInviteEmail.Resp();
        }
    }

}

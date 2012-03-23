// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneSendFeedBack extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSendFeedBack(String s, String s1)
    {
        com.tencent.mm.protocal.MMFeedBack.Req req = (com.tencent.mm.protocal.MMFeedBack.Req)c.f();
        req.a(s);
        req.b(s1);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSendSceneFeedBack", (new StringBuilder()).append("onGYNetEnd type:").append(j).append(" code:").append(k).toString());
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 59;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespSendFeedBack();

    private class MMReqRespSendFeedBack extends MMReqRespBase
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
            return 59;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/sendfeedback";
        }

        private com.tencent.mm.protocal.MMFeedBack.Req a;
        private com.tencent.mm.protocal.MMFeedBack.Resp b;

        public MMReqRespSendFeedBack()
        {
            a = new com.tencent.mm.protocal.MMFeedBack.Req();
            b = new com.tencent.mm.protocal.MMFeedBack.Resp();
        }
    }

}

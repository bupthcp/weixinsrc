// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneGmailOper extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGmailOper(int i, String s, String s1)
    {
        e = i;
        com.tencent.mm.protocal.MMGmailOper.Req req = (com.tencent.mm.protocal.MMGmailOper.Req)c.f();
        req.a(i);
        req.a(s);
        req.b(s1);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        d = -1;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j == 0 && k == 0)
        {
            d = ((com.tencent.mm.protocal.MMGmailOper.Resp)ireqresp.b()).b_();
            Log.c("MicroMsg.NetSceneGmailOper", (new StringBuilder()).append("onGYNetEnd, retCode = ").append(d).toString());
        }
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 60;
    }

    public final int f()
    {
        return d;
    }

    public final int g()
    {
        return e;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespGmailOper();
    private int d;
    private int e;

    private class MMReqRespGmailOper extends MMReqRespBase
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
            return 60;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/gmailoper";
        }

        private final com.tencent.mm.protocal.MMGmailOper.Req a = new com.tencent.mm.protocal.MMGmailOper.Req();
        private final com.tencent.mm.protocal.MMGmailOper.Resp b = new com.tencent.mm.protocal.MMGmailOper.Resp();

        public MMReqRespGmailOper()
        {
        }
    }

}

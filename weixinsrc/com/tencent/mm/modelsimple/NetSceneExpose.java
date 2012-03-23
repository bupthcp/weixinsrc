// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneExpose extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneExpose(String s, int i)
    {
        com.tencent.mm.protocal.MMExpose.Req req = (com.tencent.mm.protocal.MMExpose.Req)c.f();
        req.a(s);
        req.a(i);
        req.b(0);
        Log.d("MicroMsg.NetSceneExpose", (new StringBuilder()).append("expose username:").append(s).append(", scene:").append(i).append(", type:").append(0).toString());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneExpose", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 58;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespExpose();

    private class MMReqRespExpose extends MMReqRespBase
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
            return 58;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/expose";
        }

        private final com.tencent.mm.protocal.MMExpose.Req a = new com.tencent.mm.protocal.MMExpose.Req();
        private final com.tencent.mm.protocal.MMExpose.Resp b = new com.tencent.mm.protocal.MMExpose.Resp();

        public MMReqRespExpose()
        {
        }
    }

}

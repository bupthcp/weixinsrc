// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneGeneralSet extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGeneralSet(String s)
    {
        c = new MMReqRespGeneralSet();
        ((com.tencent.mm.protocal.MMGeneralSet.Req)c.f()).a(1);
        ((com.tencent.mm.protocal.MMGeneralSet.Req)c.f()).a(s);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        Log.d("MicroMsg.NetSceneGeneralSet", "doScene");
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneGeneralSet", (new StringBuilder()).append("onGYNetEnd errType:").append(j).append(" errCode:").append(k).toString());
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 67;
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespGeneralSet extends MMReqRespBase
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
            return 67;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/generalset";
        }

        private com.tencent.mm.protocal.MMGeneralSet.Req a;
        private com.tencent.mm.protocal.MMGeneralSet.Resp b;

        public MMReqRespGeneralSet()
        {
            a = new com.tencent.mm.protocal.MMGeneralSet.Req();
            b = new com.tencent.mm.protocal.MMGeneralSet.Resp();
        }
    }

}

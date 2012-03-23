// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import com.tencent.mm.model.ConfigStorageLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;

// Referenced classes of package com.tencent.mm.modelbottle:
//            BottleLogic

public class NetSceneGetBottleCount extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetBottleCount()
    {
        com.tencent.mm.protocal.MMGetBottleCount.Req req = (com.tencent.mm.protocal.MMGetBottleCount.Req)c.f();
        req.a(ConfigStorageLogic.b());
        req.a((int)Util.c());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMGetBottleCount.Resp resp;
        b(i);
        resp = (com.tencent.mm.protocal.MMGetBottleCount.Resp)ireqresp.b();
        if(j != 0 || k != 0) goto _L2; else goto _L1
_L1:
        BottleLogic.b(resp.e());
        BottleLogic.a(resp.d());
_L4:
        Log.d("MicroMsg.NetSceneGetBottleCount", (new StringBuilder()).append("onGYNetEnd type:").append(j).append(" code:").append(k).append(" ret:").append(resp.b()).append(" pickCnt:").append(resp.e()).append(" throwCnt:").append(resp.d()).toString());
        a.a(0, resp.b(), s, this);
        return;
_L2:
        if(resp.b() == -2002 || resp.b() == -56)
        {
            BottleLogic.b(0);
            BottleLogic.a(0);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 47;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespGetBottleCount();

    private class MMReqRespGetBottleCount extends MMReqRespBase
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
            return 47;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getbottlecount";
        }

        private com.tencent.mm.protocal.MMGetBottleCount.Req a;
        private com.tencent.mm.protocal.MMGetBottleCount.Resp b;

        public MMReqRespGetBottleCount()
        {
            a = new com.tencent.mm.protocal.MMGetBottleCount.Req();
            b = new com.tencent.mm.protocal.MMGetBottleCount.Resp();
        }
    }

}

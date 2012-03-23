// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneBindOpMobileForReg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneBindOpMobileForReg(String s, int i, String s1)
    {
        c = null;
        com.tencent.mm.protocal.MMBindOpMoblie.Req req = (com.tencent.mm.protocal.MMBindOpMoblie.Req)a.f();
        req.a(i);
        Log.d("MicroMsg.NetSceneBindOpMobileForReg", (new StringBuilder()).append("Get mobile:").append(s).append(" opcode:").append(i).append(" verifyCode:").append(s1).toString());
        req.b(s);
        req.c(s1);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        com.tencent.mm.protocal.MMBindOpMoblie.Req req = (com.tencent.mm.protocal.MMBindOpMoblie.Req)a.f();
        int i;
        if(req.d() != 5 && req.d() != 6 && req.d() != 7)
        {
            Log.a("MicroMsg.NetSceneBindOpMobileForReg", (new StringBuilder()).append("doScene OpCode Error: ").append(req.d()).toString());
            i = -1;
        } else
        if(req.c() == null || req.c().length() <= 0)
        {
            Log.a("MicroMsg.NetSceneBindOpMobileForReg", (new StringBuilder()).append("doScene getMobile Error: ").append(req.c()).toString());
            i = -1;
        } else
        if(req.d() == 6 && (req.e() == null || req.e().length() <= 0))
        {
            Log.a("MicroMsg.NetSceneBindOpMobileForReg", (new StringBuilder()).append("doScene getVerifyCode Error: ").append(req.c()).toString());
            i = -1;
        } else
        {
            i = a(idispatcher, a, ((IOnGYNetEnd) (this)));
        }
        return i;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j != 0 || k != 0)
        {
            Log.a("MicroMsg.NetSceneBindOpMobileForReg", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
            c.a(j, k, s, this);
        } else
        {
            Log.d("MicroMsg.NetSceneBindOpMobileForReg", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
            c.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 36;
    }

    public final int d()
    {
        return ((com.tencent.mm.protocal.MMBindOpMoblie.Req)a.f()).d();
    }

    public final String e()
    {
        return ((com.tencent.mm.protocal.MMBindOpMoblie.Resp)a.b()).b();
    }

    public final String f_()
    {
        return ((com.tencent.mm.protocal.MMBindOpMoblie.Resp)a.b()).d();
    }

    private final IReqResp a = new MMReqRespBindOpMobile();
    private IOnSceneEnd c;

    private class MMReqRespBindOpMobile extends MMReqRespBase
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
            return 36;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/bindopmobileforreg";
        }

        public final int e()
        {
            return 1;
        }

        private final com.tencent.mm.protocal.MMBindOpMoblie.Req a = new com.tencent.mm.protocal.MMBindOpMoblie.Req();
        private final com.tencent.mm.protocal.MMBindOpMoblie.Resp b = new com.tencent.mm.protocal.MMBindOpMoblie.Resp();

        public MMReqRespBindOpMobile()
        {
        }
    }

}

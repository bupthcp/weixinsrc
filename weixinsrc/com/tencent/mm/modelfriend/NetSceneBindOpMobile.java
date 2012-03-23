// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.modelfriend:
//            FriendLogic, AddrUploadStorage

public class NetSceneBindOpMobile extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneBindOpMobile(String s, int i, String s1)
    {
        com.tencent.mm.protocal.MMBindOpMoblie.Req req;
        c = null;
        a = new MMReqRespBindOpMobile();
        req = (com.tencent.mm.protocal.MMBindOpMoblie.Req)a.f();
        req.a(i);
        if(s == null || s.length() <= 0 || i != 1 && i != 4) goto _L2; else goto _L1
_L1:
        MMCore.f().f().a(4097, s);
_L4:
        Log.d("MicroMsg.NetSceneBindOpMobile", (new StringBuilder()).append("Get mobile:").append(s).append(" opcode:").append(i).append(" verifyCode:").append(s1).toString());
        req.b(s);
        req.c(s1);
        return;
_L2:
        if(i == 2)
            s = (String)MMCore.f().f().a(4097);
        else
        if(i == 3)
            s = (String)MMCore.f().f().a(6);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        com.tencent.mm.protocal.MMBindOpMoblie.Req req = (com.tencent.mm.protocal.MMBindOpMoblie.Req)a.f();
        int i;
        if(req.d() != 1 && req.d() != 2 && req.d() != 3 && req.d() != 4)
        {
            Log.a("MicroMsg.NetSceneBindOpMobile", (new StringBuilder()).append("doScene OpCode Error: ").append(req.d()).toString());
            i = -1;
        } else
        if(req.c() == null || req.c().length() <= 0)
        {
            Log.a("MicroMsg.NetSceneBindOpMobile", (new StringBuilder()).append("doScene getMobile Error: ").append(req.c()).toString());
            i = -1;
        } else
        if(req.d() == 2 && (req.e() == null || req.e().length() <= 0))
        {
            Log.a("MicroMsg.NetSceneBindOpMobile", (new StringBuilder()).append("doScene getVerifyCode Error: ").append(req.c()).toString());
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
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneBindOpMobile", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        c.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMBindOpMoblie.Req req;
        Log.d("MicroMsg.NetSceneBindOpMobile", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).append(" sms:").append(((com.tencent.mm.protocal.MMBindOpMoblie.Resp)ireqresp.b()).d()).toString());
        req = (com.tencent.mm.protocal.MMBindOpMoblie.Req)ireqresp.f();
        if(req.d() != 2 && req.d() != 4)
            break; /* Loop/switch isn't completed */
        MMCore.f().f().a(4097, "");
        MMCore.f().f().a(6, req.c());
        FriendLogic.a();
        Log.d("MicroMsg.NetSceneBindOpMobile", "onGYNetEnd  mobile binded");
_L6:
        c.a(j, k, s, this);
        if(true) goto _L4; else goto _L3
_L3:
        if(req.d() != 3) goto _L6; else goto _L5
_L5:
        MMCore.f().f().a(4097, "");
        MMCore.f().f().a(6, "");
        MMCore.f().t().a();
        Log.d("MicroMsg.NetSceneBindOpMobile", "onGYNetEnd  mobile unbinded");
          goto _L6
    }

    public final int b()
    {
        return 27;
    }

    public final int f()
    {
        return ((com.tencent.mm.protocal.MMBindOpMoblie.Req)a.f()).d();
    }

    public final String g()
    {
        return ((com.tencent.mm.protocal.MMBindOpMoblie.Resp)a.b()).d();
    }

    private final IReqResp a;
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
            return 27;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/bindopmobile";
        }

        private final com.tencent.mm.protocal.MMBindOpMoblie.Req a = new com.tencent.mm.protocal.MMBindOpMoblie.Req();
        private final com.tencent.mm.protocal.MMBindOpMoblie.Resp b = new com.tencent.mm.protocal.MMBindOpMoblie.Resp();

        public MMReqRespBindOpMobile()
        {
        }
    }

}

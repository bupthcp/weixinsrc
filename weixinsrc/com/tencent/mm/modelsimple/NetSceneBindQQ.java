// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.RoleStorage;

public class NetSceneBindQQ extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneBindQQ(long l, String s, String s1, String s2, int i)
    {
        com.tencent.mm.protocal.MMBindQQ.Req req = (com.tencent.mm.protocal.MMBindQQ.Req)c.f();
        req.a(l);
        req.a(Util.m(s));
        req.b(Util.n(s));
        req.c(s1);
        req.d(s2);
        req.a(i);
        Log.d("MicroMsg.NetSceneBindQQ", (new StringBuilder()).append(" init opcode:").append(i).append(" uin:").append(l).append(" imgSid:").append(s1).append(" imgCode:").append(s2).toString());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMBindQQ.Req req;
        com.tencent.mm.protocal.MMBindQQ.Resp resp;
        b(i);
        Log.d("MicroMsg.NetSceneBindQQ", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        Log.d("MicroMsg.NetSceneBindQQ", (new StringBuilder()).append("onGYNetEnd imgsid:").append(((com.tencent.mm.protocal.MMBindQQ.Resp)ireqresp.b()).b()).toString());
        req = (com.tencent.mm.protocal.MMBindQQ.Req)ireqresp.f();
        resp = (com.tencent.mm.protocal.MMBindQQ.Resp)ireqresp.b();
        if(j != 0 || k != 0) goto _L2; else goto _L1
_L1:
        MMCore.f().f().a(9, Integer.valueOf((int)req.b()));
        MMCore.f().f().a(17, Integer.valueOf(resp.e()));
        RoleStorage rolestorage = MMCore.f().m();
        String s1 = resp.g();
        boolean flag;
        if(resp.f() == 1)
            flag = true;
        else
            flag = false;
        rolestorage.a(s1, flag, 2);
        MMCore.f().f().a(32, req.c());
        MMCore.f().f().a(33, req.d());
_L4:
        if(req.g() == 3 && k == -3)
        {
            Log.d("MicroMsg.NetSceneBindQQ", (new StringBuilder()).append("onGYNetEnd : retCode = ").append(10000).toString());
            k = 10000;
        }
        a.a(j, k, s, this);
        return;
_L2:
        if(j == 4)
        {
            MMCore.f().f().a(32, "");
            MMCore.f().f().a(33, "");
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 33;
    }

    public final byte[] f()
    {
        return ((com.tencent.mm.protocal.MMBindQQ.Resp)c.b()).d();
    }

    public final String g()
    {
        return ((com.tencent.mm.protocal.MMBindQQ.Resp)c.b()).b();
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespBindQQ();

    private class MMReqRespBindQQ extends MMReqRespBase
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
            return 33;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/bindqq";
        }

        private final com.tencent.mm.protocal.MMBindQQ.Req a = new com.tencent.mm.protocal.MMBindQQ.Req();
        private final com.tencent.mm.protocal.MMBindQQ.Resp b = new com.tencent.mm.protocal.MMBindQQ.Resp();

        public MMReqRespBindQQ()
        {
        }
    }

}

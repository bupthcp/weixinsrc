// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConstantsStorage;

public class NetSceneGetUpdatePack extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetUpdatePack(int i, String s, int j, IOnSceneProgressEnd ionsceneprogressend)
    {
        c = ionsceneprogressend;
        g = s;
        e = i;
        f = FileOperation.a(g());
        Log.d("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("NetSceneGetUpdatePack : temp path = ").append(g()).append(" packOffset = ").append(f).toString());
        ((com.tencent.mm.protocal.MMGetUpdatePack.Req)d.f()).a(j);
    }

    private String g()
    {
        return (new StringBuilder()).append(ConstantsStorage.e).append(g).append(".temp").toString();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        com.tencent.mm.protocal.MMGetUpdatePack.Req req = (com.tencent.mm.protocal.MMGetUpdatePack.Req)d.f();
        req.c(f);
        req.b(e);
        return a(idispatcher, d, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(e >= 0)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        return securitycheckstatus;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        b(i);
        com.tencent.mm.protocal.MMGetUpdatePack.Resp resp = (com.tencent.mm.protocal.MMGetUpdatePack.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("onGYNetEnd : file dir = ").append(ConstantsStorage.a).toString());
        Log.d("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("onGYNetEnd : total len = ").append(resp.b()).toString());
        Log.d("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("onGYNetEnd : start pos = ").append(resp.d()).toString());
        Log.d("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("onGYNetEnd : data len = ").append(resp.e()).toString());
        if(resp.e() <= 0 || resp.f() == null)
        {
            Log.a("MicroMsg.NetSceneGetUpdatePack", "data is null");
            a.a(4, -1, "", this);
        } else
        if(resp.f().length != resp.e())
        {
            Log.a("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("data len not match with data buf, dataLen = ").append(resp.e()).append(" data buf len = ").append(resp.f().length).toString());
            a.a(4, -1, "", this);
        } else
        if(resp.d() < 0 || resp.d() + resp.e() > resp.b())
        {
            Log.a("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("startPos = ").append(resp.d()).append(" dataLen = ").append(resp.e()).append(" totalLen = ").append(resp.b()).toString());
            a.a(4, -1, "", this);
        } else
        if(resp.b() <= 0)
        {
            Log.a("MicroMsg.NetSceneGetUpdatePack", (new StringBuilder()).append("totalLen is invalid: totalLen = ").append(resp.b()).toString());
            a.a(4, -1, "", this);
        } else
        {
            FileOperation.a(ConstantsStorage.e, g, ".temp", resp.f());
            f = resp.e() + resp.d();
            e = resp.b();
            c.a(resp.d(), resp.b(), this);
            if(resp.d() + resp.e() >= resp.b())
            {
                FileOperation.a(ConstantsStorage.e, (new StringBuilder()).append(g).append(".temp").toString(), (new StringBuilder()).append(g).append(".apk").toString());
                a.a(0, 0, "", this);
            } else
            if(a(m(), a) < 0)
                a.a(3, -1, s, this);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 12;
    }

    protected final int c()
    {
        return 1000;
    }

    public final String d()
    {
        return (new StringBuilder()).append(ConstantsStorage.e).append(g).append(".apk").toString();
    }

    private IOnSceneEnd a;
    private final IOnSceneProgressEnd c;
    private final IReqResp d = new MMReqRespGetUpdatePack();
    private int e;
    private int f;
    private final String g;

    private class MMReqRespGetUpdatePack extends MMReqRespBase
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
            return 12;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getupdatepack";
        }

        public final int e()
        {
            return 1;
        }

        private final com.tencent.mm.protocal.MMGetUpdatePack.Req a = new com.tencent.mm.protocal.MMGetUpdatePack.Req();
        private final com.tencent.mm.protocal.MMGetUpdatePack.Resp b = new com.tencent.mm.protocal.MMGetUpdatePack.Resp();

        public MMReqRespGetUpdatePack()
        {
        }
    }

}

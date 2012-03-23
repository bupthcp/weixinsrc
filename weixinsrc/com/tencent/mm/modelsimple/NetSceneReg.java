// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.RoleStorage;

public class NetSceneReg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneReg(String s, String s1, String s2, int i1, String s3, String s4, String s5, 
            String s6, String s7, int j1)
    {
        k = true;
        l = false;
        Log.d("MicroMsg.NetSceneReg", (new StringBuilder()).append("NetSceneReg: username = ").append(s).append(" nickname = ").append(s2).toString());
        Log.d("MicroMsg.NetSceneReg", (new StringBuilder()).append("NetSceneReg: bindUin = ").append(i1).append("bindEmail = ").append(s3).append(" bindMobile = ").append(s4).toString());
        Log.d("MicroMsg.NetSceneReg", (new StringBuilder()).append("NetSceneReg: regMode = ").append(j1).append(" ticket: ").append(s7).toString());
        j = j1;
        boolean flag;
        if(2 != j1)
        {
            c = new MMReqRespReg2();
            com.tencent.mm.protocal.MMReg2.Req req1 = (com.tencent.mm.protocal.MMReg2.Req)c.f();
            req1.i(0);
            req1.a(s);
            req1.b(Util.m(s1));
            req1.i(s2);
            req1.b(i1);
            req1.j(s3);
            req1.k(s4);
            req1.f(s7);
            req1.c(j1);
            req1.l((new StringBuilder()).append("").append(Util.b()).toString());
            req1.m(LocaleUtil.a());
            req1.a(Util.a((Integer)MMCore.e().a(4)));
        } else
        {
            c = new MMReqRespReg();
            com.tencent.mm.protocal.MMReg.Req req = (com.tencent.mm.protocal.MMReg.Req)c.f();
            req.i(0);
            req.a(s);
            req.b(Util.m(s1));
            req.c(Util.n(s1));
            req.i(s2);
            req.b(i1);
            req.j(s3);
            req.k(s4);
            req.g(s5);
            req.h(s6);
            req.f(s7);
            req.c(0);
            req.l((new StringBuilder()).append("").append(Util.b()).toString());
            req.m(LocaleUtil.a());
            req.a(Util.a((Integer)MMCore.e().a(4)));
        }
        d = s;
        e = s1;
        f = s2;
        g = s3;
        h = s4;
        i = i1;
        if((s7 == null || s7.length() <= 0) && (s3 == null || s3.length() <= 0))
            flag = true;
        else
            flag = false;
        k = flag;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i1, int j1, int k1, String s, IReqResp ireqresp)
    {
        boolean flag;
        boolean flag1;
        flag = false;
        flag1 = true;
        if(j1 == 0 && k1 == 0) goto _L2; else goto _L1
_L1:
        a.a(j1, k1, s, this);
_L4:
        return;
_L2:
        b(i1);
        if(ireqresp.c() != 2)
            break; /* Loop/switch isn't completed */
        com.tencent.mm.protocal.MMReg.Resp resp1 = (com.tencent.mm.protocal.MMReg.Resp)ireqresp.b();
        if(resp1.e() != 0 && !k)
        {
            MMCore.f().a(resp1.e());
            MMCore.f().f().a(3, Util.m(e));
            MMCore.f().f().a(19, Util.n(e));
            MMCore.f().f().a(16, Integer.valueOf(flag1));
            resp1.c(d);
            resp1.d(f);
            resp1.f(g);
            resp1.g(h);
            resp1.d(i);
            resp1.e(flag);
            MMCore.f().a(resp1);
            MMCore.f().m().a(resp1.r(), 2);
            if(resp1.j() != 0)
                MMCore.f().m().a((new StringBuilder()).append("").append(new UIN(resp1.j())).append("@qqim").toString(), 3);
            Log.d("MicroMsg.NetSceneReg", (new StringBuilder()).append("resp return flag").append(resp1.E()).toString());
            if((1 & resp1.E()) != 0)
                flag = flag1;
            l = flag;
            MMCore.a(resp1);
            MMCore.e().a(flag1, Integer.valueOf(resp1.e()));
            MMCore.o().a(resp1.f(), resp1.e());
        }
_L5:
        a.a(j1, k1, s, this);
        if(true) goto _L4; else goto _L3
_L3:
        com.tencent.mm.protocal.MMReg2.Resp resp = (com.tencent.mm.protocal.MMReg2.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneReg", (new StringBuilder()).append("resp user:").append(resp.g()).append(" uin:").append(resp.e()).append(" mobile:").append(resp.l()).append(" nick:").append(resp.h()).toString());
        if(resp.e() != 0 && !k)
        {
            MMCore.f().a(resp.e());
            MMCore.f().f().a(3, Util.m(e));
            MMCore.f().f().a(19, Util.n(e));
            MMCore.f().f().a(16, Integer.valueOf(flag1));
            if(d != null && d.length() > 0 && j != flag1)
                resp.c(d);
            resp.d(f);
            resp.f(g);
            resp.g(h);
            resp.d(i);
            resp.e(flag);
            MMCore.f().a(resp);
            MMCore.f().m().a(resp.r(), 2);
            if(resp.j() != 0)
                MMCore.f().m().a((new StringBuilder()).append(resp.j()).append("@qqim").toString(), 3);
            MMCore.a(resp);
            MMCore.e().a(flag1, Integer.valueOf(resp.e()));
            MMCore.o().a(resp.f(), resp.e());
            Log.d("MicroMsg.NetSceneReg", (new StringBuilder()).append("resp return flag").append(resp.E()).toString());
            if((1 & resp.E()) == 0)
                flag1 = flag;
            l = flag1;
        }
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public final int b()
    {
        return 2;
    }

    public final boolean g()
    {
        return l;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final int i;
    private final int j;
    private boolean k;
    private boolean l;

    private class MMReqRespReg2 extends MMReqRespBase
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
            return 23;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/newreg";
        }

        private final com.tencent.mm.protocal.MMReg2.Req a = new com.tencent.mm.protocal.MMReg2.Req();
        private final com.tencent.mm.protocal.MMReg2.Resp b = new com.tencent.mm.protocal.MMReg2.Resp();

        public MMReqRespReg2()
        {
        }
    }


    private class MMReqRespReg extends MMReqRespBase
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
            return 2;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/reg";
        }

        private final com.tencent.mm.protocal.MMReg.Req a = new com.tencent.mm.protocal.MMReg.Req();
        private final com.tencent.mm.protocal.MMReg.Resp b = new com.tencent.mm.protocal.MMReg.Resp();

        public MMReqRespReg()
        {
        }
    }

}

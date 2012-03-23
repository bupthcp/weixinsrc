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

public class NetSceneAuth extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneAuth(String s, String s1, String s2, String s3)
    {
        d = "";
        e = "";
        com.tencent.mm.protocal.MMAuth.Req req = (com.tencent.mm.protocal.MMAuth.Req)c.f();
        req.i(0);
        req.a(s);
        d = Util.m(s1);
        e = Util.n(s1);
        req.b(d);
        req.c(e);
        req.d(d);
        req.e(e);
        req.h(s2);
        req.g(s3);
        req.l((new StringBuilder()).append("").append(Util.b()).toString());
        req.m(LocaleUtil.a());
        req.k(1);
        req.a(Util.a((Integer)MMCore.e().a(4)));
        req.n(MMCore.v());
        Log.d("MicroMsg.NetSceneAuth", (new StringBuilder()).append("psw=").append(req.c()).append(", psw2=").append(req.d()).append(", lang=").append(req.q()).toString());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if((j != 0 || k != 0) && (j != 4 || k != -16 && k != -17))
        {
            a.a(j, k, s, this);
        } else
        {
            com.tencent.mm.protocal.MMAuth.Resp resp = (com.tencent.mm.protocal.MMAuth.Resp)ireqresp.b();
            MMCore.f().a(resp.e());
            MMCore.f().f().a(3, d);
            MMCore.f().f().a(19, e);
            MMCore.f();
            AccountStorage.b(resp.D());
            MMCore.f().a(resp);
            RoleStorage rolestorage = MMCore.f().m();
            String s1 = resp.r();
            boolean flag;
            if(resp.s() == 1)
                flag = true;
            else
                flag = false;
            rolestorage.a(s1, flag, 2);
            if(resp.j() != 0)
                MMCore.f().m().a((new StringBuilder()).append("").append(new UIN(resp.j())).append("@qqim").toString(), 3);
            MMCore.a(resp);
            MMCore.e().a(1, Integer.valueOf(resp.e()));
            MMCore.o().a(resp.f(), resp.e());
            MMCore.o().a(resp.g(), d, e);
            a.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 1;
    }

    public final byte[] d()
    {
        return ((com.tencent.mm.protocal.MMAuth.Resp)c.b()).o();
    }

    public final String e()
    {
        return ((com.tencent.mm.protocal.MMAuth.Resp)c.b()).n();
    }

    public final String i_()
    {
        return ((com.tencent.mm.protocal.MMAuth.Resp)c.b()).u();
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespAuth();
    private String d;
    private String e;

    private class MMReqRespAuth extends MMReqRespBase
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
            return 1;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/auth";
        }

        private final com.tencent.mm.protocal.MMAuth.Req a = new com.tencent.mm.protocal.MMAuth.Req();
        private final com.tencent.mm.protocal.MMAuth.Resp b = new com.tencent.mm.protocal.MMAuth.Resp();

        public MMReqRespAuth()
        {
        }
    }

}

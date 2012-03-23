// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.network.IAccInfo;
import com.tencent.mm.network.IReqResp;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.storage.ConfigStorage;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelbase:
//            NetSceneBase, SceneInfo

public abstract class MMReqRespBase
    implements IReqResp
{

    public MMReqRespBase()
    {
    }

    private static void a(com.tencent.mm.protocal.MMBase.Req req)
    {
        int i = 0;
        if(MMCore.f().b())
            i = MMCore.f().a();
        req.q(MMCore.u());
        req.p(ConstantsProtocal.a);
        req.j(ConstantsProtocal.b);
        req.i(i);
    }

    protected final IReqResp a(NetSceneBase netscenebase)
    {
        b = netscenebase;
        return this;
    }

    public final IReqResp a(IAccInfo iaccinfo)
    {
        Log.d("MicroMsg.MMReqRespBase", (new StringBuilder()).append("build rr for autoauth, accInfo=").append(iaccinfo).toString());
        Assert.assertNotNull("acc info should not be null", iaccinfo);
        com.tencent.mm.modelsimple.NetSceneAuth.MMReqRespAuth mmreqrespauth = new com.tencent.mm.modelsimple.NetSceneAuth.MMReqRespAuth();
        com.tencent.mm.protocal.MMAuth.Req req = (com.tencent.mm.protocal.MMAuth.Req)mmreqrespauth.f();
        a(((com.tencent.mm.protocal.MMBase.Req) (req)));
        req.k(2);
        req.a(Util.a((Integer)MMCore.e().a(4)));
        AccountStorage accountstorage = MMCore.f();
        if(iaccinfo.g() != accountstorage.a())
            Log.b("MicroMsg.MMReqRespBase", "different uin while building auth rr");
        req.a(Util.h((String)accountstorage.f().a(2)));
        req.b(Util.h((String)accountstorage.f().a(3)));
        req.c(Util.h((String)accountstorage.f().a(19)));
        req.d(Util.h((String)accountstorage.f().a(32)));
        req.d(Util.h((String)accountstorage.f().a(33)));
        req.l((new StringBuilder()).append("").append(Util.b()).toString());
        req.m(LocaleUtil.a());
        req.n(MMCore.v());
        iaccinfo.a(req.b(), req.c(), req.d());
        Log.a("MicroMsg.MMReqRespBase", "getAuthReqResp ok");
        return mmreqrespauth;
    }

    protected abstract com.tencent.mm.protocal.MMBase.Req a();

    public final void a(String s)
    {
        if(b != null)
        {
            for(Iterator iterator = b.k_().iterator(); iterator.hasNext(); ((SceneInfo)iterator.next()).a(s));
        }
    }

    public int e()
    {
        return 0;
    }

    public final com.tencent.mm.protocal.MMBase.Req f()
    {
        if(a == null)
        {
            a = a();
            a(a);
        }
        return a;
    }

    private com.tencent.mm.protocal.MMBase.Req a;
    private NetSceneBase b;
}

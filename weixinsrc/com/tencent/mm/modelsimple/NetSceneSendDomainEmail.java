// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.RoleStorage;
import junit.framework.Assert;

public class NetSceneSendDomainEmail extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSendDomainEmail(String s, String s1)
    {
        boolean flag;
        if(s != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        ((com.tencent.mm.protocal.MMSendDomainEmail.Req)c.f()).a(s);
        ((com.tencent.mm.protocal.MMSendDomainEmail.Req)c.f()).b(s1);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMSendDomainEmail.Resp resp;
        com.tencent.mm.protocal.MMSendDomainEmail.Req req;
        b(i);
        resp = (com.tencent.mm.protocal.MMSendDomainEmail.Resp)ireqresp.b();
        req = (com.tencent.mm.protocal.MMSendDomainEmail.Req)ireqresp.f();
        Log.d("MicroMsg.NetSceneSendDomainEmail", (new StringBuilder()).append("req: ").append(req.toString()).toString());
        Log.d("MicroMsg.NetSceneSendDomainEmail", (new StringBuilder()).append("resp: ret:").append(resp.b_()).append(" msg[").append(resp.H()).append("] Str: ").append(resp.toString()).toString());
        if(resp.b_() == 0) goto _L2; else goto _L1
_L1:
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        String s1;
        s1 = req.c();
        if(s1 != null && s1.length() > 0)
            break; /* Loop/switch isn't completed */
        Log.a((new StringBuilder()).append("MicroMsg.DomainEmailLogic").append(CodeInfo.a()).toString(), "mailAddr is null");
_L5:
        a.a(j, k, s, this);
        if(true) goto _L4; else goto _L3
_L3:
        RoleStorage rolestorage = MMCore.f().m();
        com.tencent.mm.storage.RoleInfo roleinfo = rolestorage.c(s1);
        if(roleinfo != null)
            rolestorage.a(roleinfo);
        else
            rolestorage.a(s1, false, 1);
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public final int b()
    {
        return 20;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespSendDomainEmail();

    private class MMReqRespSendDomainEmail extends MMReqRespBase
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
            return 20;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/senddomainverifyemail";
        }

        private final com.tencent.mm.protocal.MMSendDomainEmail.Req a = new com.tencent.mm.protocal.MMSendDomainEmail.Req();
        private final com.tencent.mm.protocal.MMSendDomainEmail.Resp b = new com.tencent.mm.protocal.MMSendDomainEmail.Resp();

        public MMReqRespSendDomainEmail()
        {
        }
    }

}

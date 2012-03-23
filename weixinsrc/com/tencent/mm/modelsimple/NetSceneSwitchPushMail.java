// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

public class NetSceneSwitchPushMail extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSwitchPushMail(boolean flag, String s)
    {
        e = "";
        d = flag;
        e = Util.h(s);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = new MMReqRespSwitchPushMail();
        com.tencent.mm.protocal.MMSwitchPushMail.Req req = (com.tencent.mm.protocal.MMSwitchPushMail.Req)c.f();
        int i;
        if(d)
            i = 1;
        else
            i = 2;
        req.a(i);
        req.a(e);
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        if(j == 0 && k == 0)
        {
            com.tencent.mm.protocal.MMSwitchPushMail.Resp resp = (com.tencent.mm.protocal.MMSwitchPushMail.Resp)ireqresp.b();
            MMCore.f().f().a(17, Integer.valueOf(resp.b()));
        }
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 24;
    }

    public final boolean f()
    {
        return d;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private final boolean d;
    private String e;

    private class MMReqRespSwitchPushMail extends MMReqRespBase
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
            return 24;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/switchpushmail";
        }

        private final com.tencent.mm.protocal.MMSwitchPushMail.Req a = new com.tencent.mm.protocal.MMSwitchPushMail.Req();
        private final com.tencent.mm.protocal.MMSwitchPushMail.Resp b = new com.tencent.mm.protocal.MMSwitchPushMail.Resp();

        public MMReqRespSwitchPushMail()
        {
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelmulti.NewSyncMgr;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

public class NetSceneSynCheck extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSynCheck()
    {
        String s = (String)MMCore.f().f().a(8195);
        ((com.tencent.mm.protocal.MMSynCheck.Req)c.f()).a(Util.o(s));
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMSynCheck.Resp resp = (com.tencent.mm.protocal.MMSynCheck.Resp)ireqresp.b();
        Log.c("MicroMsg.NetSceneSynCheck", (new StringBuilder()).append("new syncCheck complete, selector=").append(resp.b()).toString());
        if(j == 0 && k == 0 && (7L & resp.b()) != 0L && MMCore.f().b() && !MMCore.w())
            NewSyncMgr.a(resp.b(), 3);
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 39;
    }

    public final long g_()
    {
        return 0x3a980L;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespSynCheck();

    private class MMReqRespSynCheck extends MMReqRespBase
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
            return 39;
        }

        public final String d()
        {
            return null;
        }

        public final int e()
        {
            return 1;
        }

        private final com.tencent.mm.protocal.MMSynCheck.Req a = new com.tencent.mm.protocal.MMSynCheck.Req();
        private final com.tencent.mm.protocal.MMSynCheck.Resp b = new com.tencent.mm.protocal.MMSynCheck.Resp();

        public MMReqRespSynCheck()
        {
        }
    }

}

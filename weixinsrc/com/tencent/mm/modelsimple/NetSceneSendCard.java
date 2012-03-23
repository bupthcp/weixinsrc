// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import junit.framework.Assert;

public class NetSceneSendCard extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSendCard(int i, String s)
    {
        c = new MMReqRespSendCard();
        com.tencent.mm.protocal.MMSendCard.Req req = (com.tencent.mm.protocal.MMSendCard.Req)c.f();
        req.a(ConfigStorageLogic.b());
        req.b((new StringBuilder()).append("").append(i).append(";").append(s).toString());
        Log.d("MicroMsg.NetSceneSendCard", (new StringBuilder()).append("content:").append(req.c()).toString());
        Assert.assertTrue("empty sendcard", true);
        req.a(64);
    }

    public NetSceneSendCard(String s)
    {
        c = new MMReqRespSendCard();
        com.tencent.mm.protocal.MMSendCard.Req req = (com.tencent.mm.protocal.MMSendCard.Req)c.f();
        req.a(ConfigStorageLogic.b());
        req.b(s);
        Log.d("MicroMsg.NetSceneSendCard", (new StringBuilder()).append("content:").append(s).toString());
        req.b(Util.a((Integer)MMCore.f().f().a(0x10401)));
        Assert.assertTrue("empty sendcard", true);
        req.a(128);
    }

    public NetSceneSendCard(String s, boolean flag, boolean flag1)
    {
        c = new MMReqRespSendCard();
        com.tencent.mm.protocal.MMSendCard.Req req = (com.tencent.mm.protocal.MMSendCard.Req)c.f();
        req.a(ConfigStorageLogic.b());
        req.b(s);
        Log.d("MicroMsg.NetSceneSendCard", (new StringBuilder()).append("content:").append(s).toString());
        req.b(Util.a((Integer)MMCore.f().f().a(0x10401)));
        boolean flag2;
        boolean flag3;
        byte byte0;
        int i;
        if(flag)
            flag2 = true;
        else
            flag2 = false;
        flag3 = false | (flag2 | false);
        if(flag1)
            byte0 = 4;
        else
            byte0 = 0;
        i = 8 | (byte0 | flag3);
        Assert.assertTrue("empty sendcard", true);
        req.a(i);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        a.a(j, k, ireqresp.b().H(), this);
    }

    public final int b()
    {
        return 26;
    }

    private IOnSceneEnd a;
    private final IReqResp c;

    private class MMReqRespSendCard extends MMReqRespBase
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
            return 26;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/sendcard";
        }

        private final com.tencent.mm.protocal.MMSendCard.Req a = new com.tencent.mm.protocal.MMSendCard.Req();
        private final com.tencent.mm.protocal.MMSendCard.Resp b = new com.tencent.mm.protocal.MMSendCard.Resp();

        public MMReqRespSendCard()
        {
        }
    }

}

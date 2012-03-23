// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfake;

import android.os.Handler;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import junit.framework.Assert;

public class NetSceneSendMsgFake extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSendMsgFake(String s, String s1)
    {
        boolean flag = true;
        super();
        d = new _cls1();
        a = new MsgInfo();
        a.d(flag);
        a.a(s);
        a.b(MsgInfoStorageLogic.c(s));
        a.e(flag);
        a.b(s1);
        a.c(ContactStorageLogic.G(s));
        long l = MMCore.f().i().a(a);
        if(l == -1L)
            flag = false;
        Assert.assertTrue(flag);
        Log.c("MicroMsg.NetSceneSendMsgFake", (new StringBuilder()).append("new msg inserted to db , local id = ").append(l).toString());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        Log.c("MicroMsg.NetSceneSendMsgFake", (new StringBuilder()).append("send local msg, msgId = ").append(a.b()).toString());
        d.sendEmptyMessageDelayed(0, 500L);
        return 999;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.c("MicroMsg.NetSceneSendMsgFake", (new StringBuilder()).append("recv local msg, msgId = ").append(a.b()).toString());
        a.a(74);
        a.d(2);
        a.b(MsgInfoStorageLogic.a(a.h(), System.currentTimeMillis() / 1000L));
        MMCore.f().i().a(a.b(), a);
        c.a(0, 0, s, this);
    }

    public final int b()
    {
        return 4;
    }

    private MsgInfo a;
    private IOnSceneEnd c;
    private Handler d;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            a.a(999, 0, 0, "", null);
        }

        private NetSceneSendMsgFake a;

        _cls1()
        {
            a = NetSceneSendMsgFake.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;

public class NetSceneSearchContact extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSearchContact(String s)
    {
        ((com.tencent.mm.protocal.MMSearchContact.Req)c.f()).a(s);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 5;
    }

    public final com.tencent.mm.protocal.MMSearchContact.Resp f()
    {
        return (com.tencent.mm.protocal.MMSearchContact.Resp)c.b();
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespSearchContact();

    private class MMReqRespSearchContact extends MMReqRespBase
    {

        public final com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 5;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/searchcontact";
        }

        private final com.tencent.mm.protocal.MMSearchContact.Req a = new com.tencent.mm.protocal.MMSearchContact.Req();
        private final com.tencent.mm.protocal.MMSearchContact.Resp b = new com.tencent.mm.protocal.MMSearchContact.Resp();

        public MMReqRespSearchContact()
        {
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetcontact;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import java.util.List;

public class NetSceneGetContact extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetContact(List list)
    {
        c = new MMReqRespGetContact();
        ((com.tencent.mm.protocal.MMGetContact.Req)c.f()).a(list);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 66;
    }

    protected final int c()
    {
        return 5;
    }

    public final com.tencent.mm.protocal.MMGetContact.Resp d()
    {
        return (com.tencent.mm.protocal.MMGetContact.Resp)c.b();
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespGetContact extends MMReqRespBase
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
            return 66;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getcontact";
        }

        private com.tencent.mm.protocal.MMGetContact.Req a;
        private com.tencent.mm.protocal.MMGetContact.Resp b;

        public MMReqRespGetContact()
        {
            a = new com.tencent.mm.protocal.MMGetContact.Req();
            b = new com.tencent.mm.protocal.MMGetContact.Resp();
        }
    }

}

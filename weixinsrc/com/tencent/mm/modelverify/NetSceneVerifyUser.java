// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelverify;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import java.util.List;

public class NetSceneVerifyUser extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneVerifyUser(int i, List list, List list1, String s)
    {
        com.tencent.mm.protocal.MMVerifyUser.Req req = (com.tencent.mm.protocal.MMVerifyUser.Req)c.f();
        req.a(i);
        req.a(s);
        req.a(list);
        req.b(list1);
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
        return 30;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespVerifyUser();

    private class MMReqRespVerifyUser extends MMReqRespBase
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
            return 30;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/verifyuser";
        }

        private final com.tencent.mm.protocal.MMVerifyUser.Req a = new com.tencent.mm.protocal.MMVerifyUser.Req();
        private final com.tencent.mm.protocal.MMVerifyUser.Resp b = new com.tencent.mm.protocal.MMVerifyUser.Resp();

        public MMReqRespVerifyUser()
        {
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneResetPwd extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneResetPwd(String s)
    {
        Log.d("MicroMsg.NetSceneResetPwd", (new StringBuilder()).append("resetInfo : ").append(s).append(" type : ").append(0).toString());
        ((com.tencent.mm.protocal.MMResetPwd.Req)c.f()).a(s);
        ((com.tencent.mm.protocal.MMResetPwd.Req)c.f()).a(0);
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
        return 34;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespResetPwd();

    private class MMReqRespResetPwd extends MMReqRespBase
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
            return 34;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getresetpwdurl";
        }

        public final int e()
        {
            return 1;
        }

        private final com.tencent.mm.protocal.MMResetPwd.Req a = new com.tencent.mm.protocal.MMResetPwd.Req();
        private final com.tencent.mm.protocal.MMResetPwd.Resp b = new com.tencent.mm.protocal.MMResetPwd.Resp();

        public MMReqRespResetPwd()
        {
        }
    }

}

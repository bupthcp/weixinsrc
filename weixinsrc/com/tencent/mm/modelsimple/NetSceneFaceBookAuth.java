// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protocal.protobuf.*;
import com.tencent.mm.storage.ConfigStorage;

public class NetSceneFaceBookAuth extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneFaceBookAuth(int i, String s)
    {
        d = i;
        c = new MMReqRespFaceBookAuth();
        com.tencent.mm.protocal.MMFaceBookAuth.Req req = (com.tencent.mm.protocal.MMFaceBookAuth.Req)c.f();
        if(Util.i(s))
            s = "";
        req.a.a(s);
        req.a.a(i);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneFaceBookAuth", (new StringBuilder()).append("onGYNetEnd errType:").append(j).append(" errCode:").append(k).toString());
        if(j != 0 || k != 0) goto _L2; else goto _L1
_L1:
        com.tencent.mm.protocal.MMFaceBookAuth.Resp resp;
        int l;
        resp = (com.tencent.mm.protocal.MMFaceBookAuth.Resp)ireqresp.b();
        l = resp.a.c().c();
        if(l == 0) goto _L4; else goto _L3
_L3:
        Log.a("MicroMsg.NetSceneFaceBookAuth", (new StringBuilder()).append("baseresponse.ret = ").append(l).toString());
        a.a(4, l, s, this);
_L6:
        return;
_L4:
        Log.d("MicroMsg.NetSceneFaceBookAuth", (new StringBuilder()).append("fbuserid = ").append(resp.a.d()).append(", fbusername = ").append(resp.a.e()).toString());
        MMCore.f().f().a(0x10121, (new StringBuilder()).append("").append(resp.a.d()).toString());
        AvatarLogic.a((new StringBuilder()).append("").append(resp.a.d()).toString());
        MMCore.f().f().a(0x10122, (new StringBuilder()).append("").append(resp.a.e()).toString());
_L2:
        a.a(j, k, s, this);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final int b()
    {
        return 84;
    }

    public final int f()
    {
        return d;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private int d;

    private class MMReqRespFaceBookAuth extends MMReqRespBase
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
            return 84;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/facebookauth";
        }

        private com.tencent.mm.protocal.MMFaceBookAuth.Req a;
        private com.tencent.mm.protocal.MMFaceBookAuth.Resp b;

        public MMReqRespFaceBookAuth()
        {
            a = new com.tencent.mm.protocal.MMFaceBookAuth.Req();
            b = new com.tencent.mm.protocal.MMFaceBookAuth.Resp();
        }
    }

}

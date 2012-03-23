// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelshake;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.modelshake:
//            NetSceneShakeImg

public class NetSceneShakeReport extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneShakeReport(float f1, float f2, int i, int j, String s, String s1)
    {
        com.tencent.mm.protocal.MMShakeReport.Req req = (com.tencent.mm.protocal.MMShakeReport.Req)c.f();
        req.a(0);
        req.a((new StringBuilder()).append("").append(f1).toString());
        req.b((new StringBuilder()).append("").append(f2).toString());
        req.b(i);
        req.c(s);
        req.d(s1);
        req.e(j);
        req.c(Util.a((Integer)MMCore.f().f().a(4107), 0));
        int k = Util.a((Integer)MMCore.f().f().a(4106));
        req.d(k);
        int l = k + 1;
        MMCore.f().f().a(4106, Integer.valueOf(l));
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        Log.d("MicroMsg.NetSceneShakeReport", "doScene");
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneShakeReport", (new StringBuilder()).append("onGYNetEnd errType:").append(j).append(" errCode:").append(k).toString());
        b(i);
        com.tencent.mm.protocal.MMShakeReport.Resp resp = (com.tencent.mm.protocal.MMShakeReport.Resp)ireqresp.b();
        com.tencent.mm.protocal.MMShakeReport.Req req = (com.tencent.mm.protocal.MMShakeReport.Req)ireqresp.f();
        e = resp.d();
        if(j == 0 && k == 0)
        {
            if(resp.e() != 0 && resp.e() != req.h() && !NetSceneShakeImg.e_() && resp.f() > 0)
            {
                NetSceneShakeImg netsceneshakeimg = new NetSceneShakeImg(resp.e(), resp.f());
                MMCore.g().b(netsceneshakeimg);
            }
            d = resp.b();
        }
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 51;
    }

    public final byte[] f()
    {
        return d;
    }

    public final int g()
    {
        return e;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespShakeReport();
    private byte d[];
    private int e;

    private class MMReqRespShakeReport extends MMReqRespBase
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
            return 51;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/shakereport";
        }

        private com.tencent.mm.protocal.MMShakeReport.Req a;
        private com.tencent.mm.protocal.MMShakeReport.Resp b;

        public MMReqRespShakeReport()
        {
            a = new com.tencent.mm.protocal.MMShakeReport.Req();
            b = new com.tencent.mm.protocal.MMShakeReport.Resp();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelvoice.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;

// Referenced classes of package com.tencent.mm.modelbottle:
//            BottleInfo, BottleLogic, BottleInfoStorage

public class NetSceneOpenBottle extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneOpenBottle(String s, int i)
    {
        d = "";
        e = 0;
        f = 0;
        g = null;
        h = "";
        c = new MMReqRespOpenBottle();
        d = s;
        e = i;
    }

    private int g()
    {
        com.tencent.mm.protocal.MMOpenBottle.Req req = (com.tencent.mm.protocal.MMOpenBottle.Req)c.f();
        com.tencent.mm.protocal.MMOpenBottle.Resp resp = (com.tencent.mm.protocal.MMOpenBottle.Resp)c.b();
        BottleInfo bottleinfo = new BottleInfo();
        bottleinfo.c(req.c());
        bottleinfo.a(0);
        bottleinfo.b(2);
        bottleinfo.b(BottleLogic.a(req.b()));
        bottleinfo.a(Util.d());
        bottleinfo.a(MD5.a(req.b().getBytes()));
        if(e == 3)
        {
            bottleinfo.c(h);
            bottleinfo.d(resp.b());
        } else
        {
            bottleinfo.c(new String(resp.f()));
        }
        MMCore.f().H().a(bottleinfo);
        return 0;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        com.tencent.mm.protocal.MMOpenBottle.Req req;
        a = ionsceneend;
        req = (com.tencent.mm.protocal.MMOpenBottle.Req)c.f();
        req.a(e);
        req.a(d);
        if(e != 1) goto _L2; else goto _L1
_L1:
        req.b(0);
        req.c(0);
_L6:
        int i = a(idispatcher, c, ((IOnGYNetEnd) (this)));
_L4:
        return i;
_L2:
        if(e == 3)
            continue; /* Loop/switch isn't completed */
        Log.a("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("doScene Error Msg type").append(e).toString());
        i = -1;
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMOpenBottle.Req req = (com.tencent.mm.protocal.MMOpenBottle.Req)ireqresp.f();
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(req.c() == 1)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        else
        if(req.c() != 3)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
        if(req.e() == 0 && req.d() == 0)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        else
        if(req.e() <= req.d())
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        return securitycheckstatus;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("onGYNetEnd errtype:").append(j).append(" errCode:").append(k).toString());
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("ERR: onGYNetEnd errtype:").append(j).append(" errCode:").append(k).toString());
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMOpenBottle.Req req = (com.tencent.mm.protocal.MMOpenBottle.Req)ireqresp.f();
        com.tencent.mm.protocal.MMOpenBottle.Resp resp = (com.tencent.mm.protocal.MMOpenBottle.Resp)ireqresp.b();
        if(e == 1)
        {
            g();
            MsgInfo msginfo1 = new MsgInfo();
            msginfo1.a(req.b());
            msginfo1.b(new String(resp.f()));
            msginfo1.b(Util.d());
            msginfo1.e(0);
            msginfo1.d(3);
            msginfo1.c(BottleLogic.c(req.c()));
            MMCore.f().i().a(msginfo1);
            Log.d("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("onGYNetEnd :").append(msginfo1.i()).toString());
            a.a(j, k, s, this);
        } else
        {
            if(Util.i(h))
            {
                h = VoiceStorage.a(d);
                g = new AmrFileOperator(VoiceLogic.d(h));
                f = 0;
            }
            if(resp.e() < resp.d() + resp.f().length)
            {
                Log.a("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("onGYNetEnd tot:").append(resp.e()).append(" start:").append(resp.d()).append(" len:").append(resp.f().length).toString());
                a.a(3, -1, s, this);
            } else
            if(resp.d() != f)
            {
                Log.a("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("onGYNetEnd start:").append(resp.d()).append(" off:").append(f).toString());
                a.a(3, -1, s, this);
            } else
            {
                int l = g.a(resp.f(), resp.f().length, resp.d());
                if(l != resp.f().length + resp.d())
                {
                    Log.a("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("onGYNetEnd start:").append(resp.d()).append(" len:").append(resp.f().length).append(" writeRet:").append(l).toString());
                    a.a(3, -1, s, this);
                } else
                {
                    f = l;
                    if(resp.e() > f)
                    {
                        if(a(m(), a) == -1)
                            a.a(3, -1, "doScene failed", this);
                    } else
                    {
                        g();
                        MsgInfo msginfo = new MsgInfo();
                        msginfo.a(req.b());
                        msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a("bottle", resp.b(), false));
                        msginfo.c(h);
                        msginfo.b(Util.d());
                        msginfo.e(0);
                        msginfo.d(3);
                        msginfo.c(BottleLogic.c(req.c()));
                        MMCore.f().i().a(msginfo);
                        Log.d("MicroMsg.NetSceneOpenBottle", (new StringBuilder()).append("voice :").append(resp.b()).append(" file:").append(h).toString());
                        a.a(j, k, s, this);
                    }
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 48;
    }

    protected final int c()
    {
        return 10;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private String d;
    private int e;
    private int f;
    private AmrFileOperator g;
    private String h;

    private class MMReqRespOpenBottle extends MMReqRespBase
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
            return 48;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/openbottle";
        }

        private com.tencent.mm.protocal.MMOpenBottle.Req a;
        private com.tencent.mm.protocal.MMOpenBottle.Resp b;

        public MMReqRespOpenBottle()
        {
            a = new com.tencent.mm.protocal.MMOpenBottle.Req();
            b = new com.tencent.mm.protocal.MMOpenBottle.Resp();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelvoice.AmrFileOperator;
import com.tencent.mm.modelvoice.VoiceLogic;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelbottle:
//            BottleInfo, BottleLogic, BottleInfoStorage

public class NetSceneThrowBottle extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneThrowBottle(String s)
    {
        d = -1;
        f = 0;
        c = new MMReqRespThrowBottle();
        if(!Util.i(s))
        {
            d = 1;
            com.tencent.mm.protocal.MMThrowBottle.Req req = (com.tencent.mm.protocal.MMThrowBottle.Req)c.f();
            req.b(0);
            req.a(d);
            req.c(0);
            req.d(s.getBytes().length);
            req.e(0);
            req.a(s.getBytes());
            req.a(MD5.a((new StringBuilder()).append(s).append(Util.d()).toString().getBytes()));
        }
    }

    public NetSceneThrowBottle(String s, int i)
    {
        d = -1;
        f = 0;
        c = new MMReqRespThrowBottle();
        if(!Util.i(s) && i > 0)
        {
            d = 3;
            com.tencent.mm.protocal.MMThrowBottle.Req req = (com.tencent.mm.protocal.MMThrowBottle.Req)c.f();
            req.e(i);
            req.a(s);
            req.b(0);
            req.a(d);
        }
    }

    private int a(int i)
    {
        BottleInfo bottleinfo = new BottleInfo();
        bottleinfo.c(i);
        com.tencent.mm.protocal.MMThrowBottle.Req req = (com.tencent.mm.protocal.MMThrowBottle.Req)c.f();
        com.tencent.mm.protocal.MMThrowBottle.Resp resp = (com.tencent.mm.protocal.MMThrowBottle.Resp)c.b();
        bottleinfo.a(resp.g().size());
        bottleinfo.b(1);
        String s;
        if(i == 3)
        {
            bottleinfo.c(req.g());
            bottleinfo.d(req.h());
        } else
        {
            bottleinfo.c(new String(req.d()));
        }
        s = "";
        for(int j = 0; j < resp.g().size();)
        {
            String s2 = (new StringBuilder()).append(s).append((String)resp.g().get(j)).toString();
            j++;
            s = s2;
        }

        bottleinfo.a(MD5.a(s.getBytes()));
        bottleinfo.a(Util.d());
        for(int k = 0; k < resp.g().size(); k++)
        {
            String s1 = BottleLogic.a((String)resp.g().get(k));
            if(!Util.i(s1))
            {
                bottleinfo.b(s1);
                MMCore.f().H().a(bottleinfo);
            }
        }

        return 0;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        if(d != 1) goto _L2; else goto _L1
_L1:
        d = 0 - d;
_L4:
        int i = a(idispatcher, c, ((IOnGYNetEnd) (this)));
_L3:
        return i;
_L2:
        com.tencent.mm.protocal.MMThrowBottle.Req req;
        com.tencent.mm.modelvoice.AmrFileOperator.ReadRes readres;
        if(d != 3)
            break MISSING_BLOCK_LABEL_422;
        req = (com.tencent.mm.protocal.MMThrowBottle.Req)c.f();
        req.a(3);
        req.b(0);
        if(e == null)
        {
            e = new AmrFileOperator(VoiceLogic.d(req.g()));
            f = 0;
            req.d(AmrFileOperator.a(VoiceLogic.d(req.g())));
        }
        readres = e.a(f, 6000);
        if(readres == null)
        {
            Log.a("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("doScene Read Voice file Failed :").append(req.g()).toString());
            e.a();
            i = -1;
        } else
        {
label0:
            {
                Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("doScene READ file[").append(req.g()).append("] read ret:").append(readres.d).append(" readlen:").append(readres.b).append(" newOff:").append(readres.c).append(" netOff:").append(f).append(" line:").append(CodeInfo.b()).toString());
                if(readres.d >= 0 && readres.b != 0)
                    break label0;
                Log.a("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("Err doScene READ file[").append(req.g()).append("] read ret:").append(readres.d).append(" readlen:").append(readres.b).append(" newOff:").append(readres.c).append(" netOff:").append(f).toString());
                e.a();
                i = -1;
            }
        }
          goto _L3
        byte abyte0[] = new byte[readres.b];
        System.arraycopy(readres.a, 0, abyte0, 0, readres.b);
        req.a(abyte0);
        req.c(f);
          goto _L4
        Log.a("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("doScene Error Msg type: ").append(d).toString());
        i = -1;
          goto _L3
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMThrowBottle.Req req = (com.tencent.mm.protocal.MMThrowBottle.Req)ireqresp.f();
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(req.b() == 1)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        else
        if(req.b() != 3)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
        if(req.f() == 0 || req.f() <= req.e() || Util.i(req.g()) || Util.b(req.d()))
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        return securitycheckstatus;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMThrowBottle.Req req;
        com.tencent.mm.protocal.MMThrowBottle.Resp resp;
        b(i);
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("onGYNetEnd errtype:").append(j).append(" errCode:").append(k).toString());
        req = (com.tencent.mm.protocal.MMThrowBottle.Req)ireqresp.f();
        resp = (com.tencent.mm.protocal.MMThrowBottle.Resp)ireqresp.b();
        if(j == 4)
            switch(k)
            {
            default:
                BottleLogic.b(resp.f());
                BottleLogic.a(resp.e());
                break;

            case -56: 
                break;
            }
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("ERR: onGYNetEnd errtype:").append(j).append(" errCode:").append(k).toString());
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("getStartPos ").append(resp.b()).toString());
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("getTotalLen ").append(resp.d()).toString());
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("getThrowCount ").append(resp.e()).toString());
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("getPickCount ").append(resp.f()).toString());
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("getDistance ").append(resp.h()).toString());
        Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("getBottleList ").append(resp.g().size()).toString());
        for(int l = 0; l < resp.g().size(); l++)
            Log.d("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("bott id:").append((String)resp.g().get(l)).toString());

        if(req.b() == 1)
        {
            a.a(j, k, s, this);
            a(1);
        } else
        {
            f = f + req.d().length;
            if(f >= req.f())
            {
                BottleLogic.b(resp.f());
                BottleLogic.a(resp.e());
                a(3);
                a.a(j, k, s, this);
            } else
            if(a(m(), a) == -1)
                a.a(3, -1, "doScene failed", this);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        Log.a("MicroMsg.NetSceneThrowBottle", (new StringBuilder()).append("setSecurityCheckError:").append(securitycheckerror).append(" type:").append(d).toString());
    }

    public final int b()
    {
        return 50;
    }

    protected final int c()
    {
        return 10;
    }

    public final int d()
    {
        return ((com.tencent.mm.protocal.MMThrowBottle.Resp)c.b()).h();
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private int d;
    private AmrFileOperator e;
    private int f;

    private class MMReqRespThrowBottle extends MMReqRespBase
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
            return 50;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/throwbottle";
        }

        private com.tencent.mm.protocal.MMThrowBottle.Req a;
        private com.tencent.mm.protocal.MMThrowBottle.Resp b;

        public MMReqRespThrowBottle()
        {
            a = new com.tencent.mm.protocal.MMThrowBottle.Req();
            b = new com.tencent.mm.protocal.MMThrowBottle.Resp();
        }
    }

}

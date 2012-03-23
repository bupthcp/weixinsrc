// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvideo:
//            VideoLogic, VideoInfo, VideoInfoStorage

public class NetSceneDownloadVideo extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDownloadVideo(String s)
    {
        boolean flag = false;
        super();
        e = null;
        f = ((flag) ? 1 : 0);
        g = flag;
        h = new MTimerHandler(new _cls1(), flag);
        if(s != null)
            flag = true;
        Assert.assertTrue(flag);
        Log.d("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("NetSceneDownloadVideo:  file:").append(s).toString());
        d = s;
    }

    static IDispatcher a(NetSceneDownloadVideo netscenedownloadvideo)
    {
        return netscenedownloadvideo.m();
    }

    static IOnSceneEnd b(NetSceneDownloadVideo netscenedownloadvideo)
    {
        return netscenedownloadvideo.a;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int j = -1;
        a = ionsceneend;
        e = VideoLogic.e(d);
        if(e == null)
        {
            Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: Get INFO FAILED :").append(d).toString());
            f = -10000 + (0 - CodeInfo.b());
        } else
        if(e.j() != 112)
        {
            Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: STATUS: ").append(e.j()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("]").toString());
            f = -10000 + (0 - CodeInfo.b());
        } else
        {
            Log.d("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("start doScene  [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").append(" filesize:").append(e.f()).append(" file:").append(e.g()).append(" netTimes:").append(e.o()).toString());
            if(!VideoLogic.a(d))
            {
                Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: NET TIMES: ").append(e.o()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
                VideoLogic.b(d);
                f = -10000 + (0 - CodeInfo.b());
            } else
            if(e.d() <= 0)
            {
                Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: MSGSVRID: ").append(e.d()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
                VideoLogic.b(d);
                f = -10000 + (0 - CodeInfo.b());
            } else
            if(e.f() < 0 || e.g() <= e.f() || e.g() <= 0)
            {
                Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: fileSize:").append(e.f()).append(" total:").append(e.g()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
                VideoLogic.b(d);
                f = -10000 + (0 - CodeInfo.b());
            } else
            {
                c = new MMReqRespDownloadVideo();
                com.tencent.mm.protocal.MMDownloadVideo.Req req = (com.tencent.mm.protocal.MMDownloadVideo.Req)c.f();
                req.a(e.d());
                req.c(e.f());
                req.b(e.g());
                int k;
                if(NetService.b(MMCore.c()))
                    k = 1;
                else
                    k = 2;
                req.d(k);
                j = a(idispatcher, c, ((IOnGYNetEnd) (this)));
            }
        }
        return j;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMDownloadVideo.Req req = (com.tencent.mm.protocal.MMDownloadVideo.Req)ireqresp.f();
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(req.b() <= 0 || req.d() < 0 || req.c() <= 0 || req.c() <= req.d())
        {
            Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: SECURITY CHECK FAILED [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
            VideoLogic.b(d);
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        {
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        }
        return securitycheckstatus;
    }

    public final void a(int j, int k, int l, String s, IReqResp ireqresp)
    {
        b(j);
        if(!g) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("onGYNetEnd Call Stop by Service  [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        a.a(k, l, s, this);
_L30:
        return;
_L2:
        com.tencent.mm.protocal.MMDownloadVideo.Resp resp;
        com.tencent.mm.protocal.MMDownloadVideo.Req req;
        resp = (com.tencent.mm.protocal.MMDownloadVideo.Resp)ireqresp.b();
        req = (com.tencent.mm.protocal.MMDownloadVideo.Req)ireqresp.f();
        e = VideoLogic.e(d);
        if(e != null) goto _L4; else goto _L3
_L3:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd Get INFO FAILED :").append(d).toString());
        f = -10000 + (0 - CodeInfo.b());
        a.a(k, l, s, this);
          goto _L5
_L4:
        if(e.j() != 113) goto _L7; else goto _L6
_L6:
        Log.b("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("onGYNetEnd STATUS PAUSE [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        a.a(k, l, s, this);
          goto _L5
_L7:
        if(e.j() == 112) goto _L9; else goto _L8
_L8:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd STATUS ERR: status:").append(e.j()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        a.a(k, l, s, this);
          goto _L5
_L9:
        if(k != 4 || l == 0 || l == -13 || l == -6) goto _L11; else goto _L10
_L10:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd SERVER FAILED errtype:").append(k).append(" errCode:").append(l).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L11:
        if(k == 0 && l == 0) goto _L13; else goto _L12
_L12:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd SERVER FAILED (SET PAUSE) errtype:").append(k).append(" errCode:").append(l).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        e.h(113);
        VideoLogic.a(e);
        a.a(k, l, s, this);
          goto _L5
_L13:
        if(!Util.b(resp.f())) goto _L15; else goto _L14
_L14:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd Recv BUF ZERO length  [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L15:
        if(resp.e() == req.d()) goto _L17; else goto _L16
_L16:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd OFFSET ERROR respStartPos:").append(resp.e()).append(" reqStartPos:").append(req.d()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L17:
        if(resp.d() == req.c()) goto _L19; else goto _L18
_L18:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd respTotal:").append(resp.d()).append(" reqTotal:").append(req.c()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L19:
        if(req.c() >= resp.e()) goto _L21; else goto _L20
_L20:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd respTotal:").append(resp.d()).append(" respStartPos:").append(req.d()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L21:
        if(resp.b() == req.b()) goto _L23; else goto _L22
_L22:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd respMsgId:").append(resp.b()).append(" reqMsgId:").append(req.b()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L23:
        int i1;
        Log.d("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("onGYNetEnd respBuf:").append(resp.f().length).append(" reqStartPos:").append(req.d()).append(" totallen:").append(req.c()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        i1 = VideoInfoStorage.a(MMCore.f().p().d(d), req.d(), resp.f());
        if(i1 >= 0) goto _L25; else goto _L24
_L24:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd WRITEFILE RET:").append(i1).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L25:
        if(i1 <= e.g()) goto _L27; else goto _L26
_L26:
        Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd WRITEFILE newOffset:").append(i1).append(" totalLen:").append(e.g()).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
        VideoLogic.b(d);
        a.a(k, l, s, this);
          goto _L5
_L27:
        String s1;
        VideoInfo videoinfo;
        s1 = d;
        videoinfo = VideoLogic.e(s1);
        if(videoinfo != null) goto _L29; else goto _L28
_L28:
        int j1;
        Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" getinfo failed: ").append(s1).toString());
        j1 = 0 - CodeInfo.b();
_L31:
        if(j1 < 0)
        {
            Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("ERR: onGYNetEnd updateAfterRecv Ret:").append(j1).append(" newOffset :").append(i1).append(" [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("] ").toString());
            a.a(k, l, s, this);
        } else
        if(j1 == 1)
        {
            Log.a("MicroMsg.NetSceneDownloadVideo", (new StringBuilder()).append("!!!FIN [").append(d).append(",").append(e.d()).append(",").append(e.q()).append(",").append(e.p()).append("]").toString());
            a.a(k, l, s, this);
        } else
        if(g)
            a.a(k, l, s, this);
        else
            h.a(0L);
_L5:
        if(true) goto _L30; else goto _L29
_L29:
        videoinfo.d(i1);
        videoinfo.b(Util.c());
        videoinfo.a(1040);
        if(videoinfo.g() > 0 && i1 >= videoinfo.g())
        {
            MsgInfo msginfo = new MsgInfo();
            msginfo.b(videoinfo.d());
            msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VideoContent.a(videoinfo.q(), videoinfo.m(), false));
            msginfo.a(videoinfo.p());
            Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("set msg content :").append(msginfo.i()).toString());
            msginfo.a(256);
            MMCore.f().i().a(videoinfo.d(), msginfo);
            videoinfo.h(199);
            videoinfo.a(0x100 | videoinfo.b());
            Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("END!!! ").append(CodeInfo.a()).append(" updateRecv  file:").append(s1).append(" newsize:").append(i1).append(" total:").append(videoinfo.g()).append(" status:").append(videoinfo.j()).append(" netTimes:").append(videoinfo.o()).toString());
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("updateRecv ").append(CodeInfo.a()).append(" file:").append(s1).append(" newsize:").append(i1).append(" total:").append(videoinfo.g()).append(" status:").append(videoinfo.j()).toString());
        if(!VideoLogic.a(videoinfo))
            j1 = 0 - CodeInfo.b();
          goto _L31
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        VideoLogic.b(d);
    }

    public final int b()
    {
        return 40;
    }

    protected final int c()
    {
        return 160;
    }

    public final int g()
    {
        return f;
    }

    public final void h()
    {
        g = true;
    }

    public final String i()
    {
        return d;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private String d;
    private VideoInfo e;
    private int f;
    private boolean g;
    private MTimerHandler h;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(a.a(NetSceneDownloadVideo.a(a), NetSceneDownloadVideo.b(a)) == -1)
                NetSceneDownloadVideo.b(a).a(3, -1, "doScene failed", a);
            return false;
        }

        private NetSceneDownloadVideo a;

        _cls1()
        {
            a = NetSceneDownloadVideo.this;
            super();
        }
    }


    private class MMReqRespDownloadVideo extends MMReqRespBase
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
            return 40;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/downloadvideo";
        }

        private com.tencent.mm.protocal.MMDownloadVideo.Req a;
        private com.tencent.mm.protocal.MMDownloadVideo.Resp b;

        public MMReqRespDownloadVideo()
        {
            a = new com.tencent.mm.protocal.MMDownloadVideo.Req();
            b = new com.tencent.mm.protocal.MMDownloadVideo.Resp();
        }
    }

}

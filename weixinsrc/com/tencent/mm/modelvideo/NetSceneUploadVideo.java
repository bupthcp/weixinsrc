// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvideo:
//            VideoLogic, VideoInfo, VideoInfoStorage

public class NetSceneUploadVideo extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadVideo(String s)
    {
        boolean flag = true;
        super();
        g = 0;
        h = false;
        j = false;
        k = null;
        l = 2500;
        m = 0;
        n = new MTimerHandler(new _cls1(), flag);
        if(s == null)
            flag = false;
        Assert.assertTrue(flag);
        Log.d("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("NetSceneUploadVideo:  file:").append(s).toString());
        d = s;
        i = VideoLogic.e(s);
        if(i != null)
        {
            int i1;
            if(i.r() > 0)
                i1 = 2500;
            else
                i1 = 160;
            e = i1;
        } else
        {
            e = 0;
        }
        k = new com.tencent.mm.algorithm.CodeInfo.TestTime();
    }

    static int a(NetSceneUploadVideo netsceneuploadvideo, int i1)
    {
        netsceneuploadvideo.g = i1;
        return i1;
    }

    static IDispatcher a(NetSceneUploadVideo netsceneuploadvideo)
    {
        return netsceneuploadvideo.m();
    }

    static IOnSceneEnd b(NetSceneUploadVideo netsceneuploadvideo)
    {
        return netsceneuploadvideo.a;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        boolean flag;
        flag = true;
        a = ionsceneend;
        i = VideoLogic.e(d);
        if(i != null && (i.j() == 104 || i.j() == 103)) goto _L2; else goto _L1
_L1:
        int i1;
        Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("Get info Failed file:").append(d).toString());
        g = 0 - (10000 + CodeInfo.b());
        i1 = -1;
_L8:
        return i1;
_L2:
        StringBuilder stringbuilder = (new StringBuilder()).append("doscene file:").append(d).append(" stat:").append(i.j()).append(" [").append(i.h()).append(",").append(i.i()).append("] [").append(i.e()).append(",").append(i.g()).append("]  netTimes:").append(i.o()).append(" times:");
        int j1 = m;
        m = j1 + 1;
        Log.d("MicroMsg.NetSceneUploadVideo", stringbuilder.append(j1).toString());
        if(i.r() != flag) goto _L4; else goto _L3
_L3:
        j = flag;
_L6:
        com.tencent.mm.protocal.MMUploadVideo.Req req;
        VideoInfoStorage.ReadRes readres;
        c = new MMReqRespUploadVideo();
        req = (com.tencent.mm.protocal.MMUploadVideo.Req)c.f();
        req.b(ConfigStorageLogic.b());
        req.c(i.p());
        req.a(d);
        if(j)
            req.f(2);
        req.e(i.m());
        req.a(i.i());
        req.c(i.g());
        VideoInfoStorage.ReadRes readres1;
        if(!NetService.b(MMCore.c()))
            flag = 2;
        req.g(flag);
        req.h(2);
        byte abyte1[];
        if(i.j() == 103)
        {
            readres1 = VideoInfoStorage.a(MMCore.f().p().e(d), i.h());
            if(readres1 == null || readres1.d < 0 || readres1.b == 0)
            {
                VideoLogic.b(d);
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("doScene READ THUMB[").append(d).append("]  Error ").toString());
                g = 0 - (10000 + CodeInfo.b());
                i1 = -1;
            } else
            {
label0:
                {
                    Log.d("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("doScene READ THUMB[").append(d).append("] read ret:").append(readres1.d).append(" readlen:").append(readres1.b).append(" newOff:").append(readres1.c).append(" netOff:").append(i.h()).toString());
                    if(readres1.c >= i.h())
                        break label0;
                    Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("Err doScene READ THUMB[").append(d).append("] newOff:").append(readres1.c).append(" OldtOff:").append(i.h()).toString());
                    VideoLogic.b(d);
                    g = 0 - (10000 + CodeInfo.b());
                    i1 = -1;
                }
            }
        } else
        {
            readres = VideoInfoStorage.a(MMCore.f().p().d(d), i.e());
            if(readres == null || readres.d < 0 || readres.b == 0)
            {
                VideoLogic.b(d);
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("doScene READ VIDEO[").append(d).append("]  Error ").toString());
                g = 0 - (10000 + CodeInfo.b());
                i1 = -1;
            } else
            {
                Log.d("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("doScene READ VIDEO[").append(d).append("] read ret:").append(readres.d).append(" readlen:").append(readres.b).append(" newOff:").append(readres.c).append(" netOff:").append(i.e()).toString());
                if(readres.c < i.e())
                {
                    Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("Err doScene READ VIDEO[").append(d).append("] newOff:").append(readres.c).append(" OldtOff:").append(i.e()).toString());
                    VideoLogic.b(d);
                    g = 0 - (10000 + CodeInfo.b());
                    i1 = -1;
                } else
                if(!j && readres.c >= 0xfa000)
                {
                    Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("Err doScene READ VIDEO[").append(d).append("]").append(" maxsize:").append(0xfa000).toString());
                    VideoLogic.b(d);
                    g = 0 - (10000 + CodeInfo.b());
                    i1 = -1;
                } else
                {
label1:
                    {
                        if(!j || readres.c < 0x989680)
                            break label1;
                        Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("Err doScene READ VIDEO[").append(d).append("]").append(" maxsize:").append(0x989680).toString());
                        VideoLogic.b(d);
                        g = 0 - (10000 + CodeInfo.b());
                        i1 = -1;
                    }
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(600L + i.k() >= Util.c())
            continue; /* Loop/switch isn't completed */
        Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("create time check error:").append(d).toString());
        VideoLogic.b(d);
        g = 0 - (10000 + CodeInfo.b());
        i1 = -1;
        continue; /* Loop/switch isn't completed */
        if(VideoLogic.a(d)) goto _L6; else goto _L5
_L5:
        Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("checkVoiceNetTimes Failed file:").append(d).toString());
        VideoLogic.b(d);
        g = 0 - (10000 + CodeInfo.b());
        i1 = -1;
        continue; /* Loop/switch isn't completed */
        abyte1 = new byte[readres1.b];
        System.arraycopy(readres1.a, 0, abyte1, 0, readres1.b);
        req.b(i.h());
        req.a(abyte1);
_L9:
        i1 = a(idispatcher, c, ((IOnGYNetEnd) (this)));
        if(true) goto _L8; else goto _L7
_L7:
        byte abyte0[] = new byte[readres.b];
        System.arraycopy(readres.a, 0, abyte0, 0, readres.b);
        req.d(i.e());
        req.b(i.h());
        req.b(abyte0);
          goto _L9
        if(true) goto _L8; else goto _L10
_L10:
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMUploadVideo.Req req = (com.tencent.mm.protocal.MMUploadVideo.Req)ireqresp.f();
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(Util.i(req.b()) || req.n() <= 0 || Util.i(req.c()) || Util.i(req.d()) || req.m() <= 0 || req.f() > req.e() || req.f() < 0 || req.i() > req.h() || req.i() < 0 || req.i() == req.h() && req.f() == req.e() || req.e() <= 0 || req.h() <= 0 || Util.b(req.g()) && Util.b(req.j()))
        {
            Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: Security Check Failed file:").append(d).append(" user:").append(req.d()).toString());
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        {
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        }
        return securitycheckstatus;
    }

    public final void a(int i1, int j1, int k1, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMUploadVideo.Resp resp;
        com.tencent.mm.protocal.MMUploadVideo.Req req;
        Log.d("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("onGYNetEnd  errtype:").append(j1).append(" errCode:").append(k1).append("  file:").append(d).append(" user:").append(i.p()).toString());
        b(i1);
        if(h)
        {
            Log.d("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("onGYNetEnd Call Stop by Service   file:").append(d).append(" user:").append(i.p()).toString());
            a.a(j1, k1, s, this);
        } else
        {
            resp = (com.tencent.mm.protocal.MMUploadVideo.Resp)ireqresp.b();
            req = (com.tencent.mm.protocal.MMUploadVideo.Req)ireqresp.f();
            i = VideoLogic.e(d);
            if(i == null)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: onGYNetEnd Get INFO FAILED :").append(d).toString());
                g = -10000 + (0 - CodeInfo.b());
                a.a(j1, k1, s, this);
            } else
            if(i.j() == 105)
            {
                Log.b("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("onGYNetEnd STATUS PAUSE [").append(d).append(",").append(i.d()).append(",").append(i.q()).append(",").append(i.p()).append("] ").toString());
                a.a(j1, k1, s, this);
            } else
            if(i.j() != 104 && i.j() != 103)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: onGYNetEnd STATUS ERR: status:").append(i.j()).append(" [").append(d).append(",").append(i.d()).append(",").append(i.q()).append(",").append(i.p()).append("] ").toString());
                a.a(j1, k1, s, this);
            } else
            if(j1 == 4 && k1 == -22)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: onGYNetEnd BLACK  errtype:").append(j1).append(" errCode:").append(k1).append("  file:").append(d).append(" user:").append(i.p()).toString());
                VideoInfo videoinfo1 = VideoLogic.e(d);
                if(videoinfo1 != null)
                {
                    MsgInfo msginfo1 = MMCore.f().i().a(videoinfo1.n());
                    msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.VideoContent.a(videoinfo1.q(), videoinfo1.m(), false));
                    msginfo1.d(2);
                    msginfo1.a(264);
                    MMCore.f().i().a(videoinfo1.n(), msginfo1);
                    videoinfo1.h(197);
                    videoinfo1.b(Util.c());
                    videoinfo1.a(1280);
                    VideoLogic.a(videoinfo1);
                }
                a.a(j1, k1, s, this);
            } else
            if(j1 == 4 && k1 != 0 && k1 != -13 && k1 != -6)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: onGYNetEnd SERVER FAILED errtype:").append(j1).append(" errCode:").append(k1).append("  file:").append(d).append(" user:").append(i.p()).toString());
                VideoLogic.b(d);
                a.a(j1, k1, s, this);
            } else
            if(j1 != 0 || k1 != 0)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: onGYNetEnd FAILED (WILL RETRY) errtype:").append(j1).append(" errCode:").append(k1).append("  file:").append(d).append(" user:").append(i.p()).toString());
                a.a(j1, k1, s, this);
            } else
            if(!Util.b(req.g()) && req.f() != resp.e() - req.g().length)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("onGYNetEnd Err Thumb Pos:[").append(req.f()).append(",").append(req.g().length).append(",").append(resp.e()).append("] file:").append(d).append(" user:").append(req.d()).toString());
                VideoLogic.b(d);
                a.a(j1, k1, s, this);
            } else
            {
label0:
                {
                    if(Util.b(req.j()) || req.i() == resp.f() - req.j().length)
                        break label0;
                    Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("onGYNetEnd Err Thumb Pos:[").append(req.i()).append(",").append(req.j().length).append(",").append(resp.f()).append("] file:").append(d).append(" user:").append(req.d()).toString());
                    VideoLogic.b(d);
                    a.a(j1, k1, s, this);
                }
            }
        }
_L1:
        return;
        int l1;
        boolean flag;
        i.b(Util.c());
        i.b(resp.d());
        i.a(1028);
        l1 = i.j();
        if(l1 == 103)
        {
            i.f(req.f() + req.g().length);
            i.a(0x40 | i.b());
            if(i.h() < i.i())
                break MISSING_BLOCK_LABEL_1820;
            i.h(104);
            i.a(0x100 | i.b());
            flag = false;
        } else
        {
label1:
            {
                if(l1 != 104)
                    break label1;
                i.c(req.i() + req.j().length);
                i.a(8 | i.b());
                if(i.e() < i.g())
                    break MISSING_BLOCK_LABEL_1820;
                i.h(199);
                i.a(0x100 | i.b());
                VideoInfo videoinfo = i;
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(videoinfo.p());
                msginfo.b(videoinfo.d());
                msginfo.d(2);
                msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VideoContent.a(videoinfo.q(), videoinfo.m(), false));
                msginfo.a(266);
                MMCore.f().i().a(videoinfo.n(), msginfo);
                flag = true;
            }
        }
_L2:
        VideoLogic.a(i);
        if(h)
            a.a(j1, k1, s, this);
        else
        if(!flag)
        {
            n.a(10L);
        } else
        {
            if(i.d() <= 0)
            {
                Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("ERR: finish video invaild MSGSVRID :").append(i.d()).append(" file:").append(d).append(" toUser:").append(i.p()).toString());
                VideoLogic.b(d);
            }
            long l2;
            if(k != null)
                l2 = k.b();
            else
                l2 = 0L;
            Log.d("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("!!!FIN: file:").append(d).append(" toUser:").append(i.p()).append(" msgsvrid:").append(i.d()).append(" thumbsize:").append(i.i()).append(" videosize:").append(i.g()).append(" useTime:").append(l2).toString());
            a.a(j1, k1, s, this);
        }
          goto _L1
        Log.a("MicroMsg.NetSceneUploadVideo", (new StringBuilder()).append("onGYNetEnd ERROR STATUS:").append(l1).append(" file:").append(d).append(" user:").append(req.d()).toString());
        VideoLogic.b(d);
        a.a(j1, k1, s, this);
          goto _L1
        flag = false;
          goto _L2
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        VideoLogic.b(d);
    }

    public final int b()
    {
        return 41;
    }

    protected final int c()
    {
        return e;
    }

    public final String f()
    {
        return d;
    }

    public final int g()
    {
        return g;
    }

    protected final long g_()
    {
        return 0x1b7740L;
    }

    public final void h()
    {
        h = true;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private String d;
    private final int e;
    private final long f = 0x1b7740L;
    private int g;
    private boolean h;
    private VideoInfo i;
    private boolean j;
    private com.tencent.mm.algorithm.CodeInfo.TestTime k;
    private int l;
    private int m;
    private MTimerHandler n;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(a.a(NetSceneUploadVideo.a(a), NetSceneUploadVideo.b(a)) == -1)
            {
                NetSceneUploadVideo.a(a, 0 - (10000 + CodeInfo.b()));
                NetSceneUploadVideo.b(a).a(3, -1, "doScene failed", a);
            }
            return false;
        }

        private NetSceneUploadVideo a;

        _cls1()
        {
            a = NetSceneUploadVideo.this;
            super();
        }
    }


    private class MMReqRespUploadVideo extends MMReqRespBase
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
            return 41;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/uploadvideo";
        }

        private com.tencent.mm.protocal.MMUploadVideo.Req a;
        private com.tencent.mm.protocal.MMUploadVideo.Resp b;

        public MMReqRespUploadVideo()
        {
            a = new com.tencent.mm.protocal.MMUploadVideo.Req();
            b = new com.tencent.mm.protocal.MMUploadVideo.Resp();
        }
    }

}

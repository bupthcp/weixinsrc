// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.model;

import com.tencent.mm.algorithm.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelvideo.VideoInfoStorage;
import com.tencent.mm.modelvoice.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.plugin.masssend.model:
//            MasSendInfo, MasSendInfoStorage

public class NetSceneMasSend extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneMasSend(MasSendInfo massendinfo, boolean flag)
    {
        d = null;
        e = null;
        f = 0;
        g = 0;
        h = false;
        d = massendinfo;
        massendinfo.a(Util.d());
        com.tencent.mm.protocal.MMMassSend.Req req;
        MassSendRequest masssendrequest;
        int i;
        if(massendinfo.j() == 43)
        {
            massendinfo.a(104);
            massendinfo.h(VideoInfoStorage.f(MMCore.f().p().e(massendinfo.f())));
            massendinfo.f(VideoInfoStorage.f(MMCore.f().p().d(massendinfo.f())));
            g = 120;
            if(massendinfo.q() == 2)
                g = 2500;
        } else
        if(massendinfo.j() == 34)
        {
            g = 40;
            massendinfo.a(104);
            massendinfo.f(AmrFileOperator.a(VoiceLogic.d(massendinfo.f())));
            massendinfo.h(0);
        } else
        if(massendinfo.j() == 3)
        {
            g = 40;
            massendinfo.a(104);
            massendinfo.h(0);
            massendinfo.f(FileOperation.a((new StringBuilder()).append(MMCore.f().M()).append(massendinfo.f()).toString()));
        } else
        if(massendinfo.j() == 1)
        {
            g = 1;
            massendinfo.a(104);
            massendinfo.f(massendinfo.f().getBytes().length);
            massendinfo.h(0);
        } else
        {
            Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("error msgtype:").append(massendinfo.j()).toString());
            Assert.assertTrue((new StringBuilder()).append("error msgtype:").append(massendinfo.j()).toString(), false);
        }
        c = new MMReqRespMasSend();
        req = (com.tencent.mm.protocal.MMMassSend.Req)c.f();
        req.a.b(MD5.a(massendinfo.h().getBytes()));
        req.a.i(massendinfo.i());
        req.a.a(massendinfo.h());
        massendinfo.a((new StringBuilder()).append("").append(Util.d()).toString());
        req.a.c(massendinfo.c());
        req.a.a(massendinfo.j());
        req.a.b(massendinfo.k());
        masssendrequest = req.a;
        if(flag)
            i = 1;
        else
            i = 0;
        masssendrequest.j(i);
        e = new com.tencent.mm.algorithm.CodeInfo.TestTime();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int i;
        int j;
        i = 8000;
        j = 0;
        a = ionsceneend;
        if(!h) goto _L2; else goto _L1
_L1:
        int k;
        Log.d("MicroMsg.NetSceneMasSend", "isCancel");
        f = 0 - (10000 + CodeInfo.b());
        k = -1;
_L8:
        return k;
_L2:
        com.tencent.mm.protocal.MMMassSend.Req req;
        com.tencent.mm.modelvideo.VideoInfoStorage.ReadRes readres1;
        g = -1 + g;
        if(g < 0)
        {
            Log.d("MicroMsg.NetSceneMasSend", "MAX_SEND_TIMES");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(d == null)
        {
            Log.d("MicroMsg.NetSceneMasSend", "MasSendInfo is null");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(Util.i(d.h()))
        {
            Log.d("MicroMsg.NetSceneMasSend", "MasSendInfo.toList is null");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(d.i() == 0)
        {
            Log.d("MicroMsg.NetSceneMasSend", "getTolistCount is 0");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(d.m() <= 0)
        {
            Log.d("MicroMsg.NetSceneMasSend", "getDataLen is 0");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(d.d() == 103 && d.o() <= 0)
        {
            Log.d("MicroMsg.NetSceneMasSend", "getThumbTotalLen is 0");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(d.d() != 103 && d.d() != 104)
        {
            Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("msg type :").append(d.j()).toString());
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        req = (com.tencent.mm.protocal.MMMassSend.Req)c.f();
        if(d.j() != 43)
            break MISSING_BLOCK_LABEL_1518;
        String s1 = d.f();
        if(Util.i(s1))
        {
            Log.d("MicroMsg.NetSceneMasSend", "MasSendInfo.fileName is null");
            f = 0 - (10000 + CodeInfo.b());
            k = -1;
        } else
        {
            req.a.a(new SKBuiltinBuffer_t());
            req.a.c(j);
            req.a.b(new SKBuiltinBuffer_t());
            req.a.f(j);
            req.a.g(2);
            req.a.b(d.k());
            MassSendRequest masssendrequest = req.a;
            int i1;
            com.tencent.mm.modelvideo.VideoInfoStorage.ReadRes readres2;
            if(d.q() > 0)
                i1 = 2;
            else
                i1 = j;
            masssendrequest.h(i1);
            req.a.e(d.o());
            req.a.d(d.m());
            byte abyte3[];
            SKBuiltinBuffer_t skbuiltinbuffer_t4;
            if(d.d() == 103)
            {
                readres2 = VideoInfoStorage.a(MMCore.f().p().e(s1), d.n());
                if(readres2 == null || readres2.d < 0 || readres2.b == 0)
                {
                    Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("doScene READ THUMB[").append(s1).append("]  Error ").toString());
                    f = 0 - (10000 + CodeInfo.b());
                    k = -1;
                } else
                {
label0:
                    {
                        Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("doScene READ THUMB[").append(s1).append("] read ret:").append(readres2.d).append(" readlen:").append(readres2.b).append(" newOff:").append(readres2.c).append(" netOff:").append(d.n()).toString());
                        if(readres2.c >= d.n())
                            break label0;
                        Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ THUMB[").append(s1).append("] newOff:").append(readres2.c).append(" OldtOff:").append(d.n()).toString());
                        f = 0 - (10000 + CodeInfo.b());
                        k = -1;
                    }
                }
            } else
            {
                readres1 = VideoInfoStorage.a(MMCore.f().p().d(s1), d.l());
                if(readres1 == null || readres1.d < 0 || readres1.b == 0)
                {
                    Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("doScene READ VIDEO[").append(s1).append("]  Error ").toString());
                    f = 0 - (10000 + CodeInfo.b());
                    k = -1;
                } else
                {
                    Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("doScene READ VIDEO[").append(s1).append("] read ret:").append(readres1.d).append(" readlen:").append(readres1.b).append(" newOff:").append(readres1.c).append(" netOff:").append(d.l()).toString());
                    if(readres1.c < d.l())
                    {
                        Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ VIDEO[").append(s1).append("] newOff:").append(readres1.c).append(" OldtOff:").append(d.l()).toString());
                        f = 0 - (10000 + CodeInfo.b());
                        k = -1;
                    } else
                    if(req.a.i() != 2 && readres1.c >= 0xfa000)
                    {
                        Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ VIDEO[").append(s1).append("]").append(" maxsize:").append(0xfa000).toString());
                        f = 0 - (10000 + CodeInfo.b());
                        k = -1;
                    } else
                    {
label1:
                        {
                            if(req.a.i() != 2 || readres1.c < 0x989680)
                                break label1;
                            Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ VIDEO[").append(s1).append("]").append(" maxsize:").append(0x989680).toString());
                            f = 0 - (10000 + CodeInfo.b());
                            k = -1;
                        }
                    }
                }
            }
        }
        if(k != 0)
            continue; /* Loop/switch isn't completed */
_L6:
        k = a(idispatcher, c, ((IOnGYNetEnd) (this)));
        continue; /* Loop/switch isn't completed */
        abyte3 = new byte[readres2.b];
        System.arraycopy(readres2.a, j, abyte3, j, readres2.b);
        req.a.f(d.n());
        skbuiltinbuffer_t4 = new SKBuiltinBuffer_t();
        skbuiltinbuffer_t4.a(ByteString.a(abyte3));
        skbuiltinbuffer_t4.a(abyte3.length);
        req.a.b(skbuiltinbuffer_t4);
_L4:
        k = j;
        break MISSING_BLOCK_LABEL_429;
        byte abyte2[] = new byte[readres1.b];
        System.arraycopy(readres1.a, j, abyte2, j, readres1.b);
        req.a.c(d.l());
        req.a.f(d.n());
        SKBuiltinBuffer_t skbuiltinbuffer_t3 = new SKBuiltinBuffer_t();
        skbuiltinbuffer_t3.a(ByteString.a(abyte2));
        skbuiltinbuffer_t3.a(abyte2.length);
        req.a.a(skbuiltinbuffer_t3);
        if(true) goto _L4; else goto _L3
_L3:
        if(d.j() == 34)
        {
            req.a.g(j);
            req.a.h(j);
            req.a.a((new SKBuiltinBuffer_t()).a(j));
            req.a.c(j);
            req.a.b((new SKBuiltinBuffer_t()).a(j));
            req.a.f(j);
            req.a.e(j);
            req.a.d(d.m());
            AmrFileOperator amrfileoperator = VoiceLogic.b(d.f());
            if(amrfileoperator == null)
            {
                f = 0 - (10000 + CodeInfo.b());
                Log.d("MicroMsg.NetSceneMasSend", "fileop is null");
                j = -1;
            } else
            {
                com.tencent.mm.modelvoice.AmrFileOperator.ReadRes readres = amrfileoperator.a(d.l(), i);
                if(readres == null)
                {
                    f = 0 - (10000 + CodeInfo.b());
                    Log.d("MicroMsg.NetSceneMasSend", "readRes is null");
                    j = -1;
                } else
                if(readres.d < 0)
                {
                    Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ file[").append(d.f()).append("] read ret:").append(readres.d).append(" readlen:").append(readres.b).append(" newOff:").append(readres.c).append(" netOff:").append(d.l()).toString());
                    f = 0 - (10000 + CodeInfo.b());
                    j = -1;
                } else
                if(readres.c < d.l() || readres.c >= VoiceRecorder.a)
                {
                    Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ offseterror file[").append(d.f()).append("] read ret:").append(readres.d).append(" readlen:").append(readres.b).append(" newOff:").append(readres.c).append(" netOff:").append(d.l()).toString());
                    f = 0 - (10000 + CodeInfo.b());
                    j = -1;
                } else
                if(d.m() <= 0)
                {
                    Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("Err doScene READ datalen file[").append(d.f()).append("] read totalLen:").append(d.m()).toString());
                    f = 10000 + CodeInfo.b();
                    j = -1;
                } else
                {
                    byte abyte1[] = new byte[readres.b];
                    System.arraycopy(readres.a, j, abyte1, j, readres.b);
                    SKBuiltinBuffer_t skbuiltinbuffer_t2 = (new SKBuiltinBuffer_t()).a(ByteString.a(abyte1)).a(abyte1.length);
                    req.a.a(skbuiltinbuffer_t2);
                    req.a.b(d.k());
                    req.a.c(d.l());
                }
            }
            if(j != 0)
            {
                k = -1;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if(d.j() == 3)
        {
            if(Util.i(d.f()))
            {
                Log.d("MicroMsg.NetSceneMasSend", "getFilename is null");
                f = 0 - (10000 + CodeInfo.b());
                j = -1;
            } else
            {
                req.a.g(j);
                req.a.h(j);
                req.a.a((new SKBuiltinBuffer_t()).a(j));
                req.a.c(j);
                req.a.b((new SKBuiltinBuffer_t()).a(j));
                req.a.f(j);
                req.a.e(j);
                req.a.b(j);
                req.a.e(d.o());
                req.a.d(d.m());
                String s = (new StringBuilder()).append(MMCore.f().M()).append(d.f()).toString();
                int l = d.m() - d.l();
                SKBuiltinBuffer_t skbuiltinbuffer_t;
                byte abyte0[];
                if(l <= i)
                    i = l;
                abyte0 = FileOperation.a(s, d.l(), i);
                if(Util.b(abyte0))
                {
                    Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("doScene READ data[").append(d.f()).append("]  Error ").toString());
                    f = 0 - (10000 + CodeInfo.b());
                    j = -1;
                } else
                {
                    req.a.c(d.l());
                    req.a.f(d.n());
                    SKBuiltinBuffer_t skbuiltinbuffer_t1 = new SKBuiltinBuffer_t();
                    skbuiltinbuffer_t1.a(ByteString.a(abyte0));
                    skbuiltinbuffer_t1.a(abyte0.length);
                    req.a.a(skbuiltinbuffer_t1);
                }
            }
            if(j != 0)
            {
                k = -1;
                continue; /* Loop/switch isn't completed */
            }
        } else
        {
label2:
            {
                if(d.j() != 1)
                    break label2;
                skbuiltinbuffer_t = (new SKBuiltinBuffer_t()).a(ByteString.a(d.f().getBytes())).a(d.m());
                req.a.a(skbuiltinbuffer_t);
                req.a.d(d.m());
                req.a.b(j);
                req.a.c(j);
                req.a.b((new SKBuiltinBuffer_t()).a(j));
                req.a.f(j);
                req.a.e(j);
                req.a.g(j);
                req.a.h(j);
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
        Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("error msgtype:").append(d.j()).toString());
        f = 0 - (10000 + CodeInfo.b());
        k = -1;
        if(true) goto _L8; else goto _L7
_L7:
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a()
    {
        h = true;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("onGYNetEnd  errtype:").append(j).append(" errCode:").append(k).toString());
        b(i);
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("ERR: onGYNetEnd FAILED errtype:").append(j).append(" errCode:").append(k).toString());
        f = -10000 + (0 - CodeInfo.b());
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        if(d == null)
        {
            Log.a("MicroMsg.NetSceneMasSend", "ERR: onGYNetEnd Get INFO FAILED :");
            f = -10000 + (0 - CodeInfo.b());
            a.a(j, k, s, this);
            continue; /* Loop/switch isn't completed */
        }
        if(d.d() != 104 && d.d() != 103)
        {
            Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("ERR: onGYNetEnd STATUS ERR: status:").append(d.d()).toString());
            f = -10000 + (0 - CodeInfo.b());
            a.a(j, k, s, this);
            continue; /* Loop/switch isn't completed */
        }
        com.tencent.mm.protocal.MMMassSend.Resp resp = (com.tencent.mm.protocal.MMMassSend.Resp)ireqresp.b();
        com.tencent.mm.protocal.MMMassSend.Req req = (com.tencent.mm.protocal.MMMassSend.Req)ireqresp.f();
        if(req.a.f() > 0 && req.a.h() != null && req.a.h().d() != null && !Util.b(req.a.h().d().b()) && req.a.g() != resp.a.e() - req.a.h().c())
        {
            Log.a("MicroMsg.NetSceneMasSend", "onGYNetEnd Err Thumb ");
            f = -10000 + (0 - CodeInfo.b());
            a.a(3, -1, "doScene failed", this);
            continue; /* Loop/switch isn't completed */
        }
        if(req.a.e() > 0 && req.a.c() != null && req.a.c().d() != null && !Util.b(req.a.c().d().b()) && req.a.d() != resp.a.d() - req.a.c().c())
        {
            Log.a("MicroMsg.NetSceneMasSend", "onGYNetEnd Err Data ");
            f = -10000 + (0 - CodeInfo.b());
            a.a(3, -1, "doScene failed", this);
            continue; /* Loop/switch isn't completed */
        }
        d.b(Util.c());
        int l = d.d();
        if(l == 103)
        {
            d.g(req.a.g() + req.a.h().c());
            if(d.n() >= d.o())
                d.a(199);
        } else
        {
label0:
            {
                if(l != 104)
                    break label0;
                d.e(req.a.d() + req.a.c().c());
                if(d.l() >= d.m())
                    if(d.o() > 0)
                        d.a(103);
                    else
                        d.a(199);
            }
        }
        if(d.d() != 199)
        {
            if(a(m(), a) == -1)
            {
                f = 0 - (10000 + CodeInfo.b());
                a.a(3, -1, "doScene failed", this);
            }
        } else
        {
            MMCore.f().u().a(d);
            long l1;
            if(e != null)
                l1 = e.b();
            else
                l1 = 0L;
            Log.d("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("!!!FIN: useTime:").append(l1).toString());
            a.a(j, k, s, this);
        }
        continue; /* Loop/switch isn't completed */
        Log.a("MicroMsg.NetSceneMasSend", (new StringBuilder()).append("onGYNetEnd ERROR STATUS:").append(l).toString());
        f = -10000 + (0 - CodeInfo.b());
        a.a(3, -1, "doScene failed", this);
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
    }

    public final int b()
    {
        return 85;
    }

    protected final int c()
    {
        return 2500;
    }

    public final int d()
    {
        return ((com.tencent.mm.protocal.MMMassSend.Resp)c.b()).a.f();
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private MasSendInfo d;
    private com.tencent.mm.algorithm.CodeInfo.TestTime e;
    private int f;
    private int g;
    private boolean h;

    private class MMReqRespMasSend extends MMReqRespBase
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
            return 85;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/masssend";
        }

        private com.tencent.mm.protocal.MMMassSend.Req a;
        private com.tencent.mm.protocal.MMMassSend.Resp b;

        public MMReqRespMasSend()
        {
            a = new com.tencent.mm.protocal.MMMassSend.Req();
            b = new com.tencent.mm.protocal.MMMassSend.Resp();
        }
    }

}

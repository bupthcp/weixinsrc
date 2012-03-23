// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.MTimerHandler;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvoice:
//            VoiceLogic, VoiceInfo, AmrFileOperator, VoiceRecorder

public class NetSceneUploadVoice extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadVoice(String s)
    {
        boolean flag = true;
        super();
        f = 0;
        g = 0;
        h = false;
        i = 0;
        j = new MTimerHandler(new _cls1(), flag);
        if(s == null)
            flag = false;
        Assert.assertTrue(flag);
        Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("NetSceneUploadVoice:  file:").append(s).toString());
        d = s;
    }

    static int a(NetSceneUploadVoice netsceneuploadvoice, int k)
    {
        netsceneuploadvoice.f = k;
        return k;
    }

    static String a(NetSceneUploadVoice netsceneuploadvoice)
    {
        return netsceneuploadvoice.d;
    }

    static IOnSceneEnd b(NetSceneUploadVoice netsceneuploadvoice)
    {
        return netsceneuploadvoice.a;
    }

    static long c(NetSceneUploadVoice netsceneuploadvoice)
    {
        return netsceneuploadvoice.e;
    }

    static IDispatcher d(NetSceneUploadVoice netsceneuploadvoice)
    {
        return netsceneuploadvoice.m();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        VoiceInfo voiceinfo;
        int k;
        a = ionsceneend;
        h = false;
        if(d == null)
        {
            Log.a("MicroMsg.NetSceneUploadVoice", "doScene:  filename null!");
            f = 10000 + CodeInfo.b();
            k = -1;
        } else
        {
            voiceinfo = VoiceLogic.j(d);
            if(voiceinfo == null || !voiceinfo.b())
            {
                Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Get info Failed file:").append(d).toString());
                f = 10000 + CodeInfo.b();
                k = -1;
            } else
            {
label0:
                {
                    Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("doScene file:").append(d).append(" netTimes:").append(voiceinfo.r()).toString());
                    if(VoiceLogic.a(d))
                        break label0;
                    Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("checkVoiceNetTimes Failed file:").append(d).toString());
                    VoiceLogic.i(d);
                    f = 10000 + CodeInfo.b();
                    k = -1;
                }
            }
        }
_L3:
        return k;
        AmrFileOperator.ReadRes readres = new AmrFileOperator.ReadRes();
        if(voiceinfo.o() != 8) goto _L2; else goto _L1
_L1:
        AmrFileOperator.ReadRes readres2;
        int l;
        Log.e("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append(d).append(" cancelFlag = 1").toString());
        i = 0;
        VoiceLogic.g(voiceinfo.h());
        readres2 = readres;
        l = 1;
_L4:
        int i1 = voiceinfo.g();
        AmrFileOperator amrfileoperator;
        AmrFileOperator.ReadRes readres1;
        int j1;
        com.tencent.mm.protocal.MMUploadVoice.Req req;
        if(i1 == 0)
            j1 = 20 * ((-6 + g) / 32);
        else
            j1 = i1;
        c = new MMReqRespUploadVoice();
        req = (com.tencent.mm.protocal.MMUploadVoice.Req)c.f();
        req.a.a(ConfigStorageLogic.b());
        req.a.b(voiceinfo.i());
        req.a.a(voiceinfo.l());
        req.a.c(voiceinfo.j());
        req.a.d(j1);
        req.a.e(i);
        req.a.c(voiceinfo.k());
        req.a.f(l);
        if(l != 1)
        {
            SKBuiltinBuffer_t skbuiltinbuffer_t1 = (new SKBuiltinBuffer_t()).a(ByteString.a(readres2.a)).a(readres2.b);
            req.a.a(skbuiltinbuffer_t1);
            req.a.b(readres2.b);
        } else
        {
            SKBuiltinBuffer_t skbuiltinbuffer_t = (new SKBuiltinBuffer_t()).a(ByteString.a(new byte[1])).a(1);
            req.a.a(skbuiltinbuffer_t);
            req.a.b(1);
        }
        Log.e("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("cancelFlag:").append(l).append(" endFlag:").append(i).append(" svrId:").append(voiceinfo.k()).toString());
        Log.e("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("doscene msgId:").append(req.a.e()).append(" user:").append(req.a.c()).append(" offset:").append(req.a.d()).append(" dataLen:").append(req.a.f().c()).append(" endFlag:").append(req.a.g()).toString());
        Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("doScene MsgId:").append(voiceinfo.k()).append(" file:").append(d).append(" readBytes:").append(readres2.b).append(" neTTTOff:").append(voiceinfo.l()).append(" neWWWOff:").append(g).append(" endFlag:").append(i).append(" cancelFlag:").append(l).append(" status:").append(voiceinfo.o()).toString());
        e = System.currentTimeMillis();
        k = a(idispatcher, c, ((IOnGYNetEnd) (this)));
          goto _L3
_L2:
        if(voiceinfo.o() == 3)
            h = true;
        amrfileoperator = VoiceLogic.b(d);
        if(amrfileoperator == null)
        {
            f = 10000 + CodeInfo.b();
            k = -1;
        } else
        {
            readres1 = amrfileoperator.a(voiceinfo.l(), 6000);
            if(readres1 == null)
            {
                f = 10000 + CodeInfo.b();
                k = -1;
            } else
            {
                Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("doScene READ file[").append(d).append("] read ret:").append(readres1.d).append(" readlen:").append(readres1.b).append(" newOff:").append(readres1.c).append(" netOff:").append(voiceinfo.l()).append(" line:").append(CodeInfo.b()).toString());
                if(readres1.d < 0)
                {
                    Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Err doScene READ file[").append(d).append("] read ret:").append(readres1.d).append(" readlen:").append(readres1.b).append(" newOff:").append(readres1.c).append(" netOff:").append(voiceinfo.l()).toString());
                    VoiceLogic.i(d);
                    f = 10000 + CodeInfo.b();
                    k = -1;
                } else
                {
                    g = readres1.c;
                    if(g < voiceinfo.l() || g >= VoiceRecorder.a)
                    {
                        Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Err doScene READ file[").append(d).append("] newOff:").append(g).append(" OldtOff:").append(voiceinfo.l()).toString());
                        VoiceLogic.i(d);
                        f = 10000 + CodeInfo.b();
                        k = -1;
                    } else
                    {
                        i = 0;
                        if(readres1.b == 0 && !h)
                        {
                            Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("doScene:  file:").append(d).append(" No Data temperature , will be retry").toString());
                            VoiceLogic.i(d);
                            f = 10000 + CodeInfo.b();
                            k = -1;
                        } else
                        {
                            if(!h)
                                break MISSING_BLOCK_LABEL_1473;
                            if(voiceinfo.n() <= 0)
                            {
                                Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Err doScene READ file[").append(d).append("] read totalLen:").append(voiceinfo.n()).toString());
                                VoiceLogic.i(d);
                                f = 10000 + CodeInfo.b();
                                k = -1;
                            } else
                            {
label1:
                                {
                                    if(voiceinfo.n() <= g || readres1.b >= 6000)
                                        break label1;
                                    Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Err doScene READ file[").append(d).append("] readlen:").append(readres1.b).append(" newOff:").append(readres1.c).append(" netOff:").append(voiceinfo.l()).append(" totalLen:").append(voiceinfo.n()).toString());
                                    VoiceLogic.i(d);
                                    f = 10000 + CodeInfo.b();
                                    k = -1;
                                }
                            }
                        }
                    }
                }
            }
        }
          goto _L3
        if(voiceinfo.n() <= g)
            i = 1;
        readres2 = readres1;
        l = 0;
          goto _L4
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMUploadVoice.Req req = (com.tencent.mm.protocal.MMUploadVoice.Req)ireqresp.f();
        Log.e("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("check msgId:").append(req.a.e()).append(" offset:").append(req.a.d()).append(" dataLen:").append(req.a.f().c()).append(" endFlag:").append(req.a.g()).toString());
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(req.a.e() == 0 && req.a.d() != 0 || (req.a.f() == null || req.a.f().c() == 0) && req.a.g() != 1 && req.a.h() != 1)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        return securitycheckstatus;
    }

    public final void a(int k, int l, int i1, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMUploadVoice.Req req;
        com.tencent.mm.protocal.MMUploadVoice.Resp resp;
        Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append(" errtype:").append(l).append(" errCode:").append(i1).toString());
        b(k);
        req = (com.tencent.mm.protocal.MMUploadVoice.Req)ireqresp.f();
        resp = (com.tencent.mm.protocal.MMUploadVoice.Resp)ireqresp.b();
        if(l != 4 || i1 != -22) goto _L2; else goto _L1
_L1:
        VoiceInfo voiceinfo1 = VoiceLogic.j(d);
        if(voiceinfo1 != null)
        {
            if(voiceinfo1.o() == 3)
            {
                MsgInfo msginfo1 = MMCore.f().i().a(voiceinfo1.f());
                msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo1.e(), voiceinfo1.g(), false));
                msginfo1.d(2);
                msginfo1.a(264);
                MMCore.f().i().a(voiceinfo1.f(), msginfo1);
            }
            voiceinfo1.h(97);
            voiceinfo1.b(System.currentTimeMillis() / 1000L);
            voiceinfo1.a(320);
            VoiceLogic.a(voiceinfo1);
        }
        a.a(l, i1, s, this);
_L12:
        return;
_L2:
        if(l != 4 || i1 == 0 || i1 == -13 || i1 == -6) goto _L4; else goto _L3
_L3:
        VoiceLogic.i(d);
        a.a(l, i1, s, this);
          goto _L5
_L4:
        if(l == 0 && i1 == 0) goto _L7; else goto _L6
_L6:
        Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append(" errType:").append(l).append(" errCode:").append(i1).toString());
        a.a(l, i1, s, this);
          goto _L5
_L7:
        Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd msgId:").append(resp.a.f()).append(" toUser:").append(req.a.c()).toString());
        if(resp.a.f() > 0 || ContactStorageLogic.t(req.a.c())) goto _L9; else goto _L8
_L8:
        Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append(" getMsgId:").append(resp.a.f()).append(" netoff:").append(resp.a.c()).toString());
        VoiceLogic.i(d);
        a.a(l, i1, s, this);
          goto _L5
_L9:
        String s1;
        int j1;
        int k1;
        String s2;
        int l1;
        s1 = d;
        j1 = g;
        k1 = resp.a.f();
        s2 = resp.a.e();
        l1 = i;
        if(s1 != null) goto _L11; else goto _L10
_L10:
        byte byte0 = -1;
_L13:
        Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd updateAfterSend:").append(byte0).append(" file:").append(d).append(" MsgSvrId:").append(resp.a.f()).append(" clientId:").append(resp.a.e()).append(" neWWOff:").append(g).append(" neTTTT:").append(resp.a.d()).toString());
        VoiceInfo voiceinfo;
        MsgInfo msginfo;
        if(byte0 < 0)
        {
            VoiceLogic.i(d);
            Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append("UpdateAfterSend Ret:").append(byte0).toString());
            a.a(l, i1, s, this);
        } else
        if(byte0 == 1)
        {
            Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd finish file:").append(d).toString());
            a.a(l, i1, s, this);
        } else
        {
            long l2;
            if(h)
                l2 = 0L;
            else
                l2 = 500L;
            Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append(" delay:").append(l2).toString());
            j.a(l2);
        }
_L5:
        if(true) goto _L12; else goto _L11
_L11:
        Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("UpdateAfterSend file:[").append(s1).append("] newOff:").append(j1).append(" SvrID:").append(k1).append(" clientID:").append(s2).toString());
        voiceinfo = VoiceLogic.j(s1);
        if(voiceinfo == null)
        {
            byte0 = -1;
        } else
        {
            voiceinfo.e(j1);
            voiceinfo.b(System.currentTimeMillis() / 1000L);
            voiceinfo.a(264);
            if(voiceinfo.j().length() <= 0 && s2 != null)
            {
                voiceinfo.d(s2);
                voiceinfo.a(0x200 | voiceinfo.c());
            }
            if(voiceinfo.k() == 0 && k1 != 0)
            {
                voiceinfo.d(k1);
                voiceinfo.a(4 | voiceinfo.c());
            }
            byte0 = 0;
            if(voiceinfo.n() <= j1 && voiceinfo.o() == 3 && l1 == 1)
            {
                voiceinfo.h(99);
                voiceinfo.a(0x40 | voiceinfo.c());
                msginfo = new MsgInfo();
                msginfo.a(voiceinfo.i());
                msginfo.b(voiceinfo.k());
                msginfo.d(2);
                msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo.e(), voiceinfo.g(), false));
                msginfo.a(266);
                MMCore.f().i().a(voiceinfo.f(), msginfo);
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("END!!! updateSend  file:").append(s1).append(" total:").append(voiceinfo.n()).append(" status:").append(voiceinfo.o()).append(" netTimes:").append(voiceinfo.r()).toString());
                byte0 = 1;
                VoiceLogic.c(s1);
            }
            if(!VoiceLogic.a(voiceinfo))
                byte0 = -4;
        }
          goto _L13
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        VoiceLogic.i(d);
    }

    public final int b()
    {
        return 21;
    }

    protected final int c()
    {
        return 60;
    }

    public final String f()
    {
        return d;
    }

    public final int g()
    {
        return f;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private String d;
    private long e;
    private int f;
    private int g;
    private boolean h;
    private int i;
    private MTimerHandler j;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag;
            VoiceInfo voiceinfo;
            flag = false;
            voiceinfo = VoiceLogic.j(NetSceneUploadVoice.a(a));
            if(voiceinfo != null && voiceinfo.b()) goto _L2; else goto _L1
_L1:
            Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Get info Failed file:").append(NetSceneUploadVoice.a(a)).toString());
            NetSceneUploadVoice.a(a, 10000 + CodeInfo.b());
            NetSceneUploadVoice.b(a).a(3, -1, "doScene failed", a);
_L4:
            return flag;
_L2:
            if(3 != voiceinfo.o() && 8 != voiceinfo.o())
            {
                long l = System.currentTimeMillis();
                if(l / 1000L - voiceinfo.q() > 30L)
                {
                    Log.a("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("Error ModifyTime in Read file:").append(NetSceneUploadVoice.a(a)).toString());
                    NetSceneUploadVoice.a(a, 10000 + CodeInfo.b());
                    NetSceneUploadVoice.b(a).a(3, -1, "doScene failed", a);
                    continue; /* Loop/switch isn't completed */
                }
                if(l - NetSceneUploadVoice.c(a) < 2000L)
                {
                    Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("TimerExpired :").append(NetSceneUploadVoice.a(a)).append(" but last send time:").append(l - NetSceneUploadVoice.c(a)).toString());
                    flag = true;
                    continue; /* Loop/switch isn't completed */
                }
                AmrFileOperator.ReadRes readres = VoiceLogic.b(NetSceneUploadVoice.a(a)).a(voiceinfo.l(), 6000);
                Log.d("MicroMsg.NetSceneUploadVoice", (new StringBuilder()).append("pusher doscene:").append(NetSceneUploadVoice.a(a)).append(" readByte:").append(readres.b).append(" stat:").append(voiceinfo.o()).toString());
                if(readres.b < 2000)
                {
                    flag = true;
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(a.a(NetSceneUploadVoice.d(a), NetSceneUploadVoice.b(a)) == -1)
            {
                NetSceneUploadVoice.a(a, 10000 + CodeInfo.b());
                NetSceneUploadVoice.b(a).a(3, -1, "doScene failed", a);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private NetSceneUploadVoice a;

        _cls1()
        {
            a = NetSceneUploadVoice.this;
            super();
        }
    }


    private class MMReqRespUploadVoice extends MMReqRespBase
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
            return 21;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/uploadvoice";
        }

        private com.tencent.mm.protocal.MMUploadVoice.Req a;
        private com.tencent.mm.protocal.MMUploadVoice.Resp b;

        public MMReqRespUploadVoice()
        {
            a = new com.tencent.mm.protocal.MMUploadVoice.Req();
            b = new com.tencent.mm.protocal.MMUploadVoice.Resp();
        }
    }

}

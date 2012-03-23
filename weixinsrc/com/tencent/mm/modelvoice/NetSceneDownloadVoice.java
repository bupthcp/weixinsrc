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
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvoice:
//            IOnVoiceMsgReceivedNotify, VoiceLogic, VoiceInfo, AmrFileOperator

public class NetSceneDownloadVoice extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDownloadVoice(String s)
    {
        boolean flag = false;
        super();
        g = ((flag) ? 1 : 0);
        h = flag;
        i = flag;
        j = new MTimerHandler(new _cls1(), flag);
        if(s != null)
            flag = true;
        Assert.assertTrue(flag);
        Log.d("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("NetSceneDownloadVoice:  file:").append(s).toString());
        d = s;
    }

    static IDispatcher a(NetSceneDownloadVoice netscenedownloadvoice)
    {
        return netscenedownloadvoice.m();
    }

    public static void a(IOnNewMsgNotify ionnewmsgnotify)
    {
        if(e == null)
            e = ionnewmsgnotify;
    }

    public static void a(IOnVoiceMsgReceivedNotify ionvoicemsgreceivednotify)
    {
        if(!f.contains(ionvoicemsgreceivednotify))
            f.add(ionvoicemsgreceivednotify);
    }

    static IOnSceneEnd b(NetSceneDownloadVoice netscenedownloadvoice)
    {
        return netscenedownloadvoice.a;
    }

    public static void b(IOnVoiceMsgReceivedNotify ionvoicemsgreceivednotify)
    {
        f.remove(ionvoicemsgreceivednotify);
    }

    private void g()
    {
        String s = d;
        com.tencent.mm.storage.MsgInfo msginfo;
        if(s == null)
        {
            msginfo = null;
        } else
        {
            VoiceInfo voiceinfo = VoiceLogic.j(s);
            if(voiceinfo == null)
                msginfo = null;
            else
                msginfo = MMCore.f().i().a(voiceinfo.f());
        }
        if(msginfo != null)
        {
            if(e != null)
                e.a(msginfo);
            for(Iterator iterator = f.iterator(); iterator.hasNext(); ((IOnVoiceMsgReceivedNotify)iterator.next()).a(msginfo));
        }
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int k = -1;
        a = ionsceneend;
        if(d == null)
        {
            Log.a("MicroMsg.NetSceneDownloadVoice", "doScene:  filename null!");
            g = 10000 + CodeInfo.b();
        } else
        {
            VoiceInfo voiceinfo = VoiceLogic.j(d);
            if(voiceinfo == null || !voiceinfo.a())
            {
                Log.a("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("Get info Failed file:").append(d).toString());
                g = 10000 + CodeInfo.b();
            } else
            {
                Log.d("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("doScene file:").append(d).append(" netTimes:").append(voiceinfo.r()).toString());
                if(!VoiceLogic.a(d))
                {
                    Log.a("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("checkVoiceNetTimes Failed file:").append(d).toString());
                    VoiceLogic.i(d);
                    g = 10000 + CodeInfo.b();
                } else
                {
                    int l = voiceinfo.l() - voiceinfo.m();
                    if(l <= 0)
                    {
                        if(voiceinfo.o() == 5)
                        {
                            i = true;
                            Log.a("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("doScene file:").append(d).append(" Net:").append(voiceinfo.l()).append(" Local:").append(voiceinfo.m()).toString());
                            g = 10000 + CodeInfo.b();
                        } else
                        {
                            VoiceLogic.b(d, voiceinfo.m());
                            g = 10000 + CodeInfo.b();
                        }
                    } else
                    {
                        if(voiceinfo.n() == voiceinfo.l())
                            h = true;
                        c = new MMReqRespDownloadVoice();
                        com.tencent.mm.protocal.MMDownloadVoice.Req req = (com.tencent.mm.protocal.MMDownloadVoice.Req)c.f();
                        req.a.a(voiceinfo.j());
                        req.a.a(voiceinfo.k());
                        req.a.c(l);
                        req.a.b(voiceinfo.m());
                        k = a(idispatcher, c, ((IOnGYNetEnd) (this)));
                    }
                }
            }
        }
        return k;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMDownloadVoice.Req req = (com.tencent.mm.protocal.MMDownloadVoice.Req)ireqresp.f();
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(req.a.c() == 0 || req.a.f() == null || req.a.f().length() == 0 || req.a.e() <= 0 || req.a.d() < 0)
        {
            VoiceLogic.i(d);
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        {
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        }
        return securitycheckstatus;
    }

    public final void a(int k, int l, int i1, String s, IReqResp ireqresp)
    {
        b(k);
        Log.d("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append(" + id:").append(k).append(" errtype:").append(l).append(" errCode:").append(i1).toString());
        com.tencent.mm.protocal.MMDownloadVoice.Resp resp = (com.tencent.mm.protocal.MMDownloadVoice.Resp)ireqresp.b();
        if(resp.a.f() == 1)
        {
            Log.e("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append(d).append(" cancelFlag = 1").toString());
            VoiceLogic.f(d);
        } else
        if(i1 == -22)
        {
            VoiceLogic.i(d);
            a.a(l, i1, s, this);
        } else
        if(l == 4 && i1 != 0 && i1 != -13 && i1 != -6)
        {
            VoiceLogic.i(d);
            a.a(l, i1, s, this);
        } else
        if(l != 0 || i1 != 0)
        {
            Log.a("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("onGYNetEnd  errType:").append(l).append(" errCode:").append(i1).append(" resp:").append(resp.b_()).toString());
            a.a(l, i1, s, this);
        } else
        {
            Log.d("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append(" Recv:").append(resp.a.d().c()).append(" fileOff:").append(resp.a.c()).toString());
            byte abyte0[] = resp.a.d().d().b();
            if(abyte0 == null || abyte0.length == 0)
            {
                Log.a("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd Recv Buf ZERO length ");
                VoiceLogic.i(d);
                a.a(l, i1, s, this);
            } else
            {
                int j1 = VoiceLogic.b(d).a(abyte0, abyte0.length, resp.a.c());
                if(j1 < 0)
                {
                    Log.a("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("onGYNetEnd Write Failed File:").append(d).append(" ret:").append(j1).toString());
                    VoiceLogic.i(d);
                    a.a(l, i1, s, this);
                } else
                {
                    Log.d("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("OnRecvEnd : file:").append(d).append(" filesize:").append(j1).toString());
                    int k1 = VoiceLogic.b(d, j1);
                    if(k1 < 0)
                    {
                        Log.a("MicroMsg.NetSceneDownloadVoice", (new StringBuilder()).append("onGYNetEnd file:").append(d).append("updateAfterRecv Ret:").append(k1).toString());
                        a.a(l, i1, s, this);
                    } else
                    if(k1 == 1)
                    {
                        g();
                        a.a(l, i1, s, this);
                    } else
                    {
                        long l1 = 1000L;
                        if(h)
                            l1 = 0L;
                        j.a(l1);
                    }
                }
            }
        }
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        VoiceLogic.i(d);
    }

    public final int b()
    {
        return 22;
    }

    protected final int c()
    {
        return 100;
    }

    public final int d()
    {
        return g;
    }

    public final String f()
    {
        return d;
    }

    private static IOnNewMsgNotify e = null;
    private static List f = new ArrayList();
    private IOnSceneEnd a;
    private IReqResp c;
    private String d;
    private int g;
    private boolean h;
    private boolean i;
    private MTimerHandler j;


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(a.a(NetSceneDownloadVoice.a(a), NetSceneDownloadVoice.b(a)) == -1)
                NetSceneDownloadVoice.b(a).a(3, -1, "doScene failed", a);
            return false;
        }

        private NetSceneDownloadVoice a;

        _cls1()
        {
            a = NetSceneDownloadVoice.this;
            super();
        }
    }


    private class MMReqRespDownloadVoice extends MMReqRespBase
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
            return 22;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/downloadvoice";
        }

        private com.tencent.mm.protocal.MMDownloadVoice.Req a;
        private com.tencent.mm.protocal.MMDownloadVoice.Resp b;

        public MMReqRespDownloadVoice()
        {
            a = new com.tencent.mm.protocal.MMDownloadVoice.Req();
            b = new com.tencent.mm.protocal.MMDownloadVoice.Resp();
        }
    }

}

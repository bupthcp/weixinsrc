// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Handler;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.NetService;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import java.io.IOException;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.modelvoip:
//            v2protocal, NetSceneVoipAnswer, NetSceneVoipShutDown, NetSceneVoipSync, 
//            NetSceneVoipInvite, NetSceneVoipCancelInvite, AudioPlayer, AudioRecorder

public class VoipService
    implements IOnSceneEnd
{

    public VoipService()
    {
        b = null;
        c = null;
        d = false;
        e = false;
        f = false;
        g = new MTimerHandler(new _cls1(), true);
        h = new _cls2();
        i = null;
        j = null;
        k = null;
    }

    static v2protocal a(VoipService voipservice)
    {
        return voipservice.a;
    }

    private void a(com.tencent.mm.protocal.MMVoipSync.Resp resp)
    {
        if(resp.a.e() != 0)
            a.c = resp.a.e();
        if(resp.a.h() != 0)
            a.e = resp.a.h();
        if(resp.a.i() != 0L)
            a.f = resp.a.i();
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" roomid:").append(a.c).append(" memberid:").append(a.e).append(" key").append(a.f).toString());
        i = resp.a.f().d().b();
    }

    static void b(VoipService voipservice)
    {
        voipservice.d();
    }

    private void b(com.tencent.mm.protocal.MMVoipSync.Resp resp)
    {
        LinkedList linkedlist;
        a.d = resp.a.d();
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd caller:").append(a.d).toString());
        linkedlist = resp.a.g().d();
        if(linkedlist != null && linkedlist.size() != 0) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd cmdlistnull").toString());
_L10:
        return;
_L2:
        int l;
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd cmdlist size:").append(linkedlist.size()).toString());
        l = 0;
_L6:
        CmdItem cmditem;
        if(l >= linkedlist.size())
            continue; /* Loop/switch isn't completed */
        cmditem = (CmdItem)linkedlist.get(l);
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd item:").append(l).append(" cmdId:").append(cmditem.c()).toString());
        if(cmditem.c() != 1) goto _L4; else goto _L3
_L3:
        VoipStatusItem voipstatusitem;
        try
        {
            voipstatusitem = VoipStatusItem.a(cmditem.d().d().b());
        }
        catch(IOException ioexception1)
        {
            a();
            CodeInfo.b();
            d();
            continue; /* Loop/switch isn't completed */
        }
        if(voipstatusitem.c() == 6)
            a(resp);
        a(resp);
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd statItem.getStatus():").append(voipstatusitem.c()).toString());
        if(voipstatusitem.c() == 6)
        {
            e();
            if(a.c == 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" roomId == 0 ").toString());
                CodeInfo.b();
                d();
                CodeInfo.b();
            } else
            {
                g.a(30000L);
                NetSceneVoipAnswer netscenevoipanswer = new NetSceneVoipAnswer(a.c, a.a, a.b);
                MMCore.g().b(netscenevoipanswer);
                f = true;
            }
            Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd item:").append(l).append(" statItem.getStatus():").append(voipstatusitem.c()).append(" be invited by:").append(a.d).toString());
        } else
        if(voipstatusitem.c() == 1)
        {
            Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" syncOnSceneEnd item:").append(l).toString());
            e();
        } else
        if(voipstatusitem.c() == 2)
        {
            a();
            e();
        } else
        if(voipstatusitem.c() == 3)
        {
            a();
            e();
        } else
        if(voipstatusitem.c() == 4)
        {
            a();
            e();
        }
_L8:
        l++;
        if(true) goto _L6; else goto _L5
_L5:
_L4:
        if(cmditem.c() != 2) goto _L8; else goto _L7
_L7:
        a(resp);
        VoipRelayData voiprelaydata = VoipRelayData.a(cmditem.d().d().b());
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append("relayData.getType():").append(voiprelaydata.c()).append(" len:").append(voiprelaydata.d().c()).toString());
        IOException ioexception;
        if(voiprelaydata.c() == 2)
        {
            a.h = voiprelaydata.d().d().b();
            int k1 = a.setconfigconnect();
            if(k1 < 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append("protocal contact failed ret:").append(k1).toString());
                CodeInfo.b();
                d();
                a();
            }
        } else
        if(voiprelaydata.c() == 3)
        {
            a.i = voiprelaydata.d().d().b();
            int j1 = a.exchangecabinfo();
            if(j1 < 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append("protocal exchangecabinfo failed ret:").append(j1).toString());
                CodeInfo.b();
                d();
                a();
            }
        } else
        if(voiprelaydata.c() == 1)
        {
            a.j = voiprelaydata.d().d().b();
            int i1 = a.handlecommand();
            if(i1 < 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append("protocal handlecommand failed ret:").append(i1).toString());
                CodeInfo.b();
                d();
                a();
            }
        }
          goto _L8
        ioexception;
        a();
        CodeInfo.b();
        d();
        if(true) goto _L10; else goto _L9
_L9:
    }

    static void c(VoipService voipservice)
    {
        voipservice.e();
    }

    private void d()
    {
        if(c == null)
            Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(":uiCallback == null").toString());
    }

    private void e()
    {
        if(c == null)
            Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(":uiCallback == null").toString());
    }

    private void f()
    {
        g.a();
        c();
        a.a();
    }

    public final int a()
    {
        f();
        int l;
        if(a.c == 0)
        {
            Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" roomId == 0 ").toString());
            l = 0xfffcf2c0 - CodeInfo.b();
        } else
        {
            NetSceneVoipShutDown netscenevoipshutdown = new NetSceneVoipShutDown(a.c);
            MMCore.g().b(netscenevoipshutdown);
            l = 0;
        }
        return l;
    }

    public final int a(CmdList cmdlist)
    {
        int l;
        l = 0;
        if(cmdlist == null)
        {
            cmdlist = new CmdList();
            cmdlist.a(l);
            cmdlist.a(new LinkedList());
        }
        if(Util.b(i))
            i = "".getBytes();
        if(v2protocal.a(a)) goto _L2; else goto _L1
_L1:
        a.g = MMCore.f().a();
        if(a.a(NetService.b(MMCore.c())) >= 0) goto _L2; else goto _L3
_L3:
        CodeInfo.b();
        d();
        l = 0xfffcf2c0 - CodeInfo.b();
_L5:
        return l;
_L2:
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" doSync:").append(a.c).append(" cmdList:").append(cmdlist.c()).append(" key:").append(i.length).toString());
        NetSceneVoipSync netscenevoipsync = new NetSceneVoipSync(a.c, cmdlist, i);
        MMCore.g().b(netscenevoipsync);
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final void a(int l, int i1, String s, NetSceneBase netscenebase)
    {
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" type:").append(netscenebase.b()).append(" errType:").append(l).append(" errCode:").append(i1).toString());
        if(netscenebase.b() != 70) goto _L2; else goto _L1
_L1:
        d = false;
        if(l == 0 || i1 == 0) goto _L4; else goto _L3
_L3:
        a();
        Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" type:").append(netscenebase.b()).append(" errType:").append(l).append(" errCode:").append(i1).toString());
        CodeInfo.b();
        d();
_L6:
        return;
_L4:
        a.c = ((NetSceneVoipInvite)netscenebase).f().a.d();
        if(e)
            if(d)
            {
                Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" isCalling:").append(d).append(" isCancelCall:").append(e).toString());
                e = true;
            } else
            {
                f();
                NetSceneVoipCancelInvite netscenevoipcancelinvite = new NetSceneVoipCancelInvite(a.c);
                MMCore.g().b(netscenevoipcancelinvite);
                e = false;
            }
        continue; /* Loop/switch isn't completed */
_L2:
        if(netscenebase.b() == 72)
        {
            if(l != 0 && i1 != 0)
            {
                a();
                CodeInfo.b();
                d();
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" type:").append(netscenebase.b()).append(" errType:").append(l).append(" errCode:").append(i1).toString());
            } else
            if(f)
                e();
        } else
        if(netscenebase.b() == 74)
            if(l != 0 && i1 != 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" type:").append(netscenebase.b()).append(" errType:").append(l).append(" errCode:").append(i1).toString());
                a();
                CodeInfo.b();
                d();
            } else
            {
                b(((NetSceneVoipSync)netscenebase).f());
            }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final void b()
    {
        Log.d("MicroMsg.V2Protocol", "startdev");
        j = new AudioPlayer();
        j.b();
        j.a(b);
        j.a(new _cls3());
        j.c();
        k = new AudioRecorder();
        k.b();
        k.a(b);
        k.f = new _cls4();
        AudioRecorder audiorecorder = k;
        if(audiorecorder.b && !audiorecorder.c)
        {
            audiorecorder.c = true;
            audiorecorder.d = true;
            audiorecorder.start();
            if(audiorecorder.a.getState() != 0)
                audiorecorder.a.startRecording();
        }
    }

    public final void c()
    {
        Log.d("MicroMsg.V2Protocol", "stopdev");
        if(j != null)
        {
            j.d();
            j.a();
            j = null;
        }
        if(k != null)
        {
            k.a();
            AudioRecorder audiorecorder = k;
            if(audiorecorder.b)
            {
                audiorecorder.a.release();
                audiorecorder.a = null;
                audiorecorder.e = null;
                audiorecorder.c = false;
                audiorecorder.d = false;
            }
            k = null;
        }
    }

    protected void finalize()
    {
        super.finalize();
    }

    private v2protocal a;
    private Context b;
    private VoipCallbacks c;
    private boolean d;
    private boolean e;
    private boolean f;
    private MTimerHandler g;
    private Handler h;
    private byte i[];
    private AudioPlayer j;
    private AudioRecorder k;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(VoipService.a(a).c == 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append(" roomId == 0 ").toString());
            } else
            {
                NetSceneVoipHeartBeat netscenevoipheartbeat = new NetSceneVoipHeartBeat(VoipService.a(a).c);
                MMCore.g().b(netscenevoipheartbeat);
            }
            return true;
        }

        private VoipService a;

        _cls1()
        {
            a = VoipService.this;
            super();
        }
    }


    private class _cls2 extends Handler
    {

        public void handleMessage(Message message)
        {
            byte abyte0[] = (byte[])message.obj;
            StringBuilder stringbuilder = (new StringBuilder()).append("arg1:").append(message.arg1).append(" arg2:").append(message.arg2).append(" msg.data len:");
            int l;
            CmdItem cmditem;
            SKBuiltinBuffer_t skbuiltinbuffer_t;
            CmdList cmdlist;
            if(abyte0 != null)
                l = abyte0.length;
            else
                l = -1;
            Log.d("MicroMsg.V2Protocol", stringbuilder.append(l).toString());
            if(message.arg1 != 1) goto _L2; else goto _L1
_L1:
            cmditem = new CmdItem();
            cmditem.a(message.arg2);
            skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            skbuiltinbuffer_t.a(ByteString.a(abyte0));
            skbuiltinbuffer_t.a(abyte0.length);
            cmditem.a(skbuiltinbuffer_t);
            cmdlist = new CmdList();
            cmdlist.a(1);
            cmdlist.a(cmditem);
            a.a(cmdlist);
_L4:
            return;
_L2:
            if(message.arg1 == 2)
            {
                VoipService voipservice1 = a;
                CodeInfo.b();
                VoipService.b(voipservice1);
                a.a();
            } else
            if(message.arg1 == 3)
            {
                VoipService.c(a);
                a.b();
            } else
            if(message.arg1 == 4)
            {
                VoipService.c(a);
                a.c();
            } else
            if(message.arg1 == 5)
            {
                VoipService voipservice = a;
                CodeInfo.b();
                VoipService.b(voipservice);
                a.a();
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private VoipService a;

        _cls2()
        {
            a = VoipService.this;
            super();
        }
    }


    private class _cls3
        implements AudioPlayDevCallBack
    {

        public final int a(byte abyte0[])
        {
            byte byte0 = 0;
            int l = VoipService.a(a).playcallback();
            if(l < 0)
            {
                Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append(CodeInfo.a()).append("protocal.playcallback ret:").append(l).toString());
                byte0 = -1;
            } else
            {
                System.arraycopy(VoipService.a(a).l, byte0, abyte0, byte0, 320);
            }
            return byte0;
        }

        private VoipService a;

        _cls3()
        {
            a = VoipService.this;
            super();
        }
    }


    private class _cls4
        implements AudioRecDevCallBack
    {

        public final int a(byte abyte0[])
        {
            VoipService.a(a).k = new byte[320];
            System.arraycopy(abyte0, 0, VoipService.a(a).k, 0, 320);
            VoipService.a(a).recordcallback();
            return 0;
        }

        private VoipService a;

        _cls4()
        {
            a = VoipService.this;
            super();
        }
    }

}

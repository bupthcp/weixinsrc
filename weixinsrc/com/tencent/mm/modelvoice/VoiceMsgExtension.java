// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvoice:
//            VoiceInfo, VoiceStorage, VoiceLogic, IOnVoiceMsgReceivedNotify

public class VoiceMsgExtension
    implements IMessageExtension
{

    public VoiceMsgExtension()
    {
    }

    public static void a(IOnVoiceMsgReceivedNotify ionvoicemsgreceivednotify)
    {
        if(!a.contains(ionvoicemsgreceivednotify))
            a.add(ionvoicemsgreceivednotify);
    }

    private static MsgInfo b(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        MsgInfo msginfo;
        boolean flag = false;
        boolean flag1;
        if(cmdaddmsg != null)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        if(cmdaddmsg.g() != null)
            flag = true;
        Assert.assertTrue(flag);
        Log.e("MicroMsg.VoiceMessageExtension", (new StringBuilder()).append("parseVoiceMsg srvId:").append(cmdaddmsg.c()).toString());
        msginfo = new MsgInfo();
        if(!cmdaddmsg.d().equals(ConfigStorageLogic.b())) goto _L2; else goto _L1
_L1:
        return msginfo;
_L2:
        VoiceInfo voiceinfo;
        Map map;
        voiceinfo = new VoiceInfo();
        voiceinfo.c(cmdaddmsg.d());
        voiceinfo.a(cmdaddmsg.k());
        voiceinfo.d(cmdaddmsg.c());
        String s = cmdaddmsg.g();
        if(ContactStorageLogic.b(cmdaddmsg.d()))
        {
            s = MsgInfoStorageLogic.b(s);
            Log.e("MicroMsg.VoiceMessageExtension", (new StringBuilder()).append("chatroom voicemsg, new content=").append(s).toString());
        }
        map = Util.b(s, "msg");
        if(map == null)
            continue; /* Loop/switch isn't completed */
        int i;
        int j;
        boolean flag2;
        voiceinfo.e(Integer.valueOf((String)map.get(".msg.voicemsg.$length")).intValue());
        voiceinfo.d((String)map.get(".msg.voicemsg.$clientmsgid"));
        i = Integer.valueOf((String)map.get(".msg.voicemsg.$endflag")).intValue();
        j = Integer.valueOf((String)map.get(".msg.voicemsg.$cancelflag")).intValue();
        voiceinfo.c(Integer.valueOf((String)map.get(".msg.voicemsg.$voicelength")).intValue());
        voiceinfo.a((String)map.get(".msg.voicemsg.$fromusername"));
        flag2 = voiceinfo.e().equals(ConfigStorageLogic.b());
        Exception exception;
        if(!flag2)
            if(j == 1)
            {
                Log.e("MicroMsg.VoiceMessageExtension", (new StringBuilder()).append("cancelFlag = 1 srvId:").append(cmdaddmsg.c()).toString());
                VoiceInfo voiceinfo1 = MMCore.f().o().a(voiceinfo.k());
                if(voiceinfo1 != null)
                    VoiceLogic.f(voiceinfo1.h());
                msginfo = null;
            } else
            {
                if(i == 1)
                {
                    Log.e("MicroMsg.VoiceMessageExtension", (new StringBuilder()).append("endFlag = 1 srvId:").append(cmdaddmsg.c()).toString());
                    voiceinfo.g(voiceinfo.l());
                }
                voiceinfo.a(5806);
                if(cmdaddmsg.j() != null)
                    Log.d("MicroMsg.VoiceMessageExtension", (new StringBuilder()).append("Voice Buf Len:").append(cmdaddmsg.j().length).append(" srvId:").append(cmdaddmsg.c()).toString());
                MsgInfo msginfo1;
                if(VoiceLogic.a(voiceinfo, cmdaddmsg.j(), cmdaddmsg.h()) > 0)
                {
                    MsgInfo msginfo2 = MMCore.f().i().a(voiceinfo.i(), voiceinfo.k());
                    for(Iterator iterator = a.iterator(); iterator.hasNext(); ((IOnVoiceMsgReceivedNotify)iterator.next()).a(MMCore.f().i().a(voiceinfo.i(), voiceinfo.k())));
                    msginfo1 = msginfo2;
                } else
                {
                    msginfo1 = msginfo;
                }
                msginfo = msginfo1;
            }
        continue; /* Loop/switch isn't completed */
        exception;
        Log.a("MicroMsg.VoiceMessageExtension", "parsing voice msg xml failed");
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void b(IOnVoiceMsgReceivedNotify ionvoicemsgreceivednotify)
    {
        a.remove(ionvoicemsgreceivednotify);
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        return b(cmdaddmsg);
    }

    private static Set a = new HashSet();

}

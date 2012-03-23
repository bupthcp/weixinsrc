// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvideo:
//            VideoInfo, VideoInfoStorage, VideoLogic

public class VideoMsgExtension
    implements IMessageExtension
{

    public VideoMsgExtension()
    {
    }

    private static MsgInfo b(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        int i;
        MsgInfo msginfo;
        i = 1;
        boolean flag;
        boolean flag1;
        if(cmdaddmsg != null)
            flag = i;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(cmdaddmsg.g() != null)
            flag1 = i;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        msginfo = new MsgInfo();
        if(!cmdaddmsg.d().equals(ConfigStorageLogic.b())) goto _L2; else goto _L1
_L1:
        return msginfo;
_L2:
        VideoInfo videoinfo;
        Map map;
        videoinfo = new VideoInfo();
        videoinfo.b(cmdaddmsg.d());
        videoinfo.a(cmdaddmsg.k());
        videoinfo.b(cmdaddmsg.c());
        Log.d("MicroMsg.VideoMsgExtension", (new StringBuilder()).append("parseVideoMsgXML content:").append(cmdaddmsg.g()).toString());
        map = Util.b(cmdaddmsg.g(), "msg");
        if(map == null)
            continue; /* Loop/switch isn't completed */
        String s;
        boolean flag2;
        videoinfo.e(Integer.valueOf((String)map.get(".msg.videomsg.$length")).intValue());
        videoinfo.i(Integer.valueOf((String)map.get(".msg.videomsg.$playlength")).intValue());
        videoinfo.c((String)map.get(".msg.videomsg.$fromusername"));
        s = (String)map.get(".msg.videomsg.$type");
        flag2 = Util.i(s);
        if(flag2) goto _L4; else goto _L3
_L3:
        int i1 = Integer.valueOf(s).intValue();
        int j = i1;
_L6:
        Log.d("MicroMsg.VideoMsgExtension", (new StringBuilder()).append("video msg exportType :").append(j).toString());
        boolean flag3;
        if(j != 44)
            i = 0;
        videoinfo.l(i);
        flag3 = videoinfo.q().equals(ConfigStorageLogic.b());
        if(!flag3)
        {
            String s1 = VideoInfoStorage.c(videoinfo.q());
            videoinfo.a(s1);
            VideoInfoStorage.a(MMCore.f().p().e(s1), 0, cmdaddmsg.j());
            int k = cmdaddmsg.h();
            Exception exception;
            MsgInfo msginfo2;
            Exception exception1;
            if(MMCore.f().p().a(videoinfo.d()) != null)
            {
                Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("msg id : ").append(videoinfo.d()).append(" already exist!").toString());
                CodeInfo.b();
            } else
            {
                MsgInfo msginfo1 = new MsgInfo();
                msginfo1.b(videoinfo.d());
                msginfo1.c(videoinfo.c());
                msginfo1.d(k);
                msginfo1.b(MsgInfoStorageLogic.a(videoinfo.p(), videoinfo.k()));
                msginfo1.a(videoinfo.p());
                msginfo1.c(43);
                msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.VideoContent.a(videoinfo.q(), 0L, false));
                videoinfo.j((int)MsgInfoStorageLogic.b(msginfo1));
                videoinfo.b(Util.c());
                videoinfo.k(0);
                videoinfo.h(111);
                Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("Insert fileName[").append(videoinfo.c()).append("] size:").append(videoinfo.g()).append(" svrid:").append(videoinfo.d()).append(" timelen:").append(videoinfo.m()).append(" user:").append(videoinfo.p()).append(" human:").append(videoinfo.q()).toString());
                if(!MMCore.f().p().a(videoinfo))
                {
                    Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("Insert Error fileName:").append(videoinfo.c()).toString());
                    CodeInfo.b();
                }
            }
            if(VideoLogic.e(s1) != null)
            {
                int l = VideoLogic.e(s1).n();
                msginfo2 = MMCore.f().i().a(l);
            } else
            {
                msginfo2 = msginfo;
            }
            msginfo = msginfo2;
        }
        continue; /* Loop/switch isn't completed */
        exception1;
_L4:
        j = 0;
        if(true) goto _L6; else goto _L5
_L5:
        exception;
        Log.a("MicroMsg.VideoMsgExtension", "parsing voice msg xml failed");
        if(true) goto _L1; else goto _L7
_L7:
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        return b(cmdaddmsg);
    }
}

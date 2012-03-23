// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.*;

// Referenced classes of package com.tencent.mm.modelvideo:
//            VideoInfo, VideoInfoStorage

public class VideoLogic
{

    private VideoLogic()
    {
    }

    public static boolean a(VideoInfo videoinfo)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(videoinfo != null && (videoinfo.c() != null && videoinfo.c().length() > 0 || videoinfo.b() != -1))
            flag = MMCore.f().p().b(videoinfo);
        return flag;
    }

    public static boolean a(String s)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        VideoInfo videoinfo = e(s);
        if(videoinfo != null && videoinfo.o() < 160)
        {
            videoinfo.k(1 + videoinfo.o());
            videoinfo.a(16384);
            flag = a(videoinfo);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(String s, int i, String s1, String s2)
    {
        boolean flag = false;
        VideoInfo videoinfo = new VideoInfo();
        videoinfo.a(s);
        videoinfo.i(i);
        videoinfo.b(s1);
        videoinfo.c(ConfigStorageLogic.b());
        videoinfo.a(Util.c());
        videoinfo.b(Util.c());
        videoinfo.d(s2);
        if(!Util.i(s2))
            videoinfo.l(1);
        int j = VideoInfoStorage.f(MMCore.f().p().d(s));
        if(j <= 0)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("get Video size failed :").append(s).toString());
        } else
        {
            videoinfo.e(j);
            String s3 = MMCore.f().p().e(s);
            int k = VideoInfoStorage.f(s3);
            if(k <= 0)
            {
                Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("get Thumb size failed :").append(s3).append(" size:").append(k).toString());
            } else
            {
                videoinfo.g(k);
                Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("init record file:").append(s).append(" thumbsize:").append(videoinfo.i()).append(" videosize:").append(videoinfo.g()).toString());
                videoinfo.h(102);
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(videoinfo.p());
                msginfo.c(43);
                msginfo.e(1);
                msginfo.c(s);
                msginfo.d(1);
                msginfo.b(MsgInfoStorageLogic.c(videoinfo.p()));
                videoinfo.j((int)MsgInfoStorageLogic.b(msginfo));
                flag = MMCore.f().p().a(videoinfo);
            }
        }
        return flag;
    }

    public static int b(VideoInfo videoinfo)
    {
        int i;
        if(videoinfo.g() == 0)
        {
            i = 0;
        } else
        {
            Log.e("MicroMsg.VideoLogic", (new StringBuilder()).append("net offset:").append(videoinfo.e()).toString());
            i = (100 * videoinfo.f()) / videoinfo.g();
        }
        return i;
    }

    public static boolean b(String s)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        VideoInfo videoinfo = e(s);
        if(videoinfo == null)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("Set error failed file:").append(s).toString());
        } else
        {
            videoinfo.h(198);
            videoinfo.b(System.currentTimeMillis() / 1000L);
            videoinfo.a(1280);
            flag = a(videoinfo);
            Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("setError file:").append(s).append(" msgid:").append(videoinfo.n()).append(" old stat:").append(videoinfo.j()).toString());
            if(videoinfo != null && videoinfo.n() != 0)
            {
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(videoinfo.n());
                msginfo.d(5);
                msginfo.a(videoinfo.p());
                msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VideoContent.a(videoinfo.q(), -1L, true));
                msginfo.a(264);
                MMCore.f().i().a(msginfo.b(), msginfo);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int c(String s)
    {
        VideoInfo videoinfo = e(s);
        int j;
        if(videoinfo == null)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" getinfo failed: ").append(s).toString());
            j = 0 - CodeInfo.b();
        } else
        if(videoinfo.j() != 102 && videoinfo.j() != 105)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" get status failed: ").append(s).append(" status:").append(videoinfo.j()).toString());
            j = 0 - CodeInfo.b();
        } else
        {
            int i = videoinfo.j();
            if(videoinfo.j() != 102 && videoinfo.i() == videoinfo.h())
                videoinfo.h(104);
            else
                videoinfo.h(103);
            Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append(CodeInfo.a()).append("startSend file:").append(s).append(" status:[").append(i).append("->").append(videoinfo.j()).append("]").toString());
            videoinfo.c(Util.c());
            videoinfo.b(Util.c());
            videoinfo.a(3328);
            if(!a(videoinfo))
            {
                Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" update failed: ").append(s).toString());
                j = 0 - CodeInfo.b();
            } else
            {
                MMCore.j().d();
                MMCore.j().a();
                j = 0;
            }
        }
        return j;
    }

    public static int d(String s)
    {
        VideoInfo videoinfo = e(s);
        int i;
        if(videoinfo == null)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" getinfo failed: ").append(s).toString());
            i = 0 - CodeInfo.b();
        } else
        if(videoinfo.j() != 111 && videoinfo.j() != 113)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" get status failed: ").append(s).append(" status:").append(videoinfo.j()).toString());
            i = 0 - CodeInfo.b();
        } else
        {
            videoinfo.h(112);
            videoinfo.c(Util.c());
            videoinfo.b(Util.c());
            videoinfo.a(3328);
            if(!a(videoinfo))
            {
                Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" update failed: ").append(s).toString());
                i = 0 - CodeInfo.b();
            } else
            {
                MMCore.j().c();
                MMCore.j().a();
                i = 0;
            }
        }
        return i;
    }

    public static VideoInfo e(String s)
    {
        VideoInfo videoinfo;
        if(Util.i(s))
            videoinfo = null;
        else
            videoinfo = MMCore.f().p().a(s);
        return videoinfo;
    }

    public static String f(String s)
    {
        String s1 = (new StringBuilder()).append(ConstantsStorage.d).append(Util.d()).append(".mp4").toString();
        if(!FilesCopy.a(s, s1))
            s1 = null;
        return s1;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.SurfaceHolder;
import b.a.ad;
import b.a.e;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.ui.MMActivity;

// Referenced classes of package com.tencent.mm.modelvideo:
//            YuvReocrder, PcmRecorder, RecordParams, VideoInfoStorage, 
//            vprotocal, VideoLogic, VideoInfo

public class SceneVideo
{

    public SceneVideo()
    {
        j = new MTimerHandler(new _cls1(), true);
    }

    static int a(SceneVideo scenevideo, int i1)
    {
        scenevideo.g = i1;
        return i1;
    }

    static RecordParams a(SceneVideo scenevideo)
    {
        return scenevideo.b;
    }

    static ThreadPackVideo b(SceneVideo scenevideo)
    {
        return scenevideo.i;
    }

    static OnProgressListener c(SceneVideo scenevideo)
    {
        return scenevideo.h;
    }

    public final int a()
    {
        c.a();
        d.c();
        return 0;
    }

    public final int a(String s, boolean flag)
    {
        int i1 = 1;
        f = s;
        RecordParams recordparams = new RecordParams();
        recordparams.a = 10;
        recordparams.d = 0;
        recordparams.e = 288;
        recordparams.f = 224;
        recordparams.b = 288;
        recordparams.c = 224;
        recordparams.g = i1;
        recordparams.h = 4;
        recordparams.i = "/sdcard/1.yuv";
        recordparams.m = "/sdcard/1.mp4";
        recordparams.j = "/sdcard/1.pcm";
        recordparams.l = "/sdcard/1.x264";
        recordparams.n = 0;
        recordparams.o = 0;
        recordparams.p = 0;
        b = recordparams;
        e = VideoInfoStorage.c(s);
        b.m = MMCore.f().p().d(e);
        b.k = MMCore.f().p().e(e);
        b.j = (new StringBuilder()).append(MMCore.f().p().b()).append("temp.pcm").toString();
        b.i = (new StringBuilder()).append(MMCore.f().p().b()).append("temp.yuv").toString();
        b.l = (new StringBuilder()).append(MMCore.f().p().b()).append("temp.vid").toString();
        b.p = ad.a();
        RecordParams recordparams1 = b;
        if(!flag)
            i1 = 0;
        recordparams1.d = i1;
        b.o = 0;
        c = new YuvReocrder();
        d = new PcmRecorder();
        a = new vprotocal();
        return 0;
    }

    public final Bitmap a(Context context)
    {
        String s = b.k;
        Bitmap bitmap;
        if(s == null || s.length() <= 0)
        {
            bitmap = null;
        } else
        {
            Bitmap bitmap1 = b.a.e.a(s.trim(), MMActivity.k());
            if(bitmap1 != null)
            {
                int i1 = bitmap1.getWidth();
                int j1 = bitmap1.getHeight();
                int k1 = b.a.e.a(context, 224F);
                float f1 = (float)i1 / (float)k1;
                bitmap = Bitmap.createScaledBitmap(bitmap1, k1, (int)((float)j1 / f1), true);
                bitmap1.recycle();
            } else
            {
                bitmap = bitmap1;
            }
        }
        return bitmap;
    }

    public final void a(long l1)
    {
        b.n = c.a(l1);
        d.b();
        vprotocal.b(b);
        YuvReocrder.a(b.k, b.f, b.e);
    }

    public final void a(OnProgressListener onprogresslistener)
    {
        i = new ThreadPackVideo();
        i.start();
        h = onprogresslistener;
        j.a(200L);
    }

    public final boolean a(SurfaceHolder surfaceholder, boolean flag)
    {
        boolean flag1;
        if(c.a(surfaceholder, b, flag) != 0)
        {
            flag1 = false;
        } else
        {
            d.a(b.j);
            flag1 = true;
        }
        return flag1;
    }

    public final int b()
    {
        return b.b;
    }

    public final int c()
    {
        return b.c;
    }

    public final void d()
    {
        VideoLogic.a(e, b.o, f, null);
        VideoLogic.c(e);
    }

    public final void e()
    {
        String s = e;
        int i1 = b.o;
        String s1 = f;
        VideoInfo videoinfo = new VideoInfo();
        videoinfo.a(s);
        videoinfo.i(i1);
        videoinfo.b(s1);
        videoinfo.c(ConfigStorageLogic.b());
        videoinfo.a(Util.c());
        videoinfo.b(Util.c());
        videoinfo.d(i1);
        videoinfo.c(i1);
        int j1 = VideoInfoStorage.f(MMCore.f().p().d(s));
        if(j1 <= 0)
        {
            Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("get Video size failed :").append(s).toString());
        } else
        {
            videoinfo.e(j1);
            String s2 = MMCore.f().p().e(s);
            int k1 = VideoInfoStorage.f(s2);
            if(k1 <= 0)
            {
                Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("get Thumb size failed :").append(s2).append(" size:").append(k1).toString());
            } else
            {
                videoinfo.g(k1);
                Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("init record file:").append(s).append(" thumbsize:").append(videoinfo.i()).append(" videosize:").append(videoinfo.g()).toString());
                videoinfo.h(199);
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(videoinfo.p());
                msginfo.c(43);
                msginfo.e(1);
                msginfo.c(s);
                msginfo.d(2);
                msginfo.b(MsgInfoStorageLogic.c(videoinfo.p()));
                videoinfo.j((int)MsgInfoStorageLogic.b(msginfo));
                MMCore.f().p().a(videoinfo);
            }
        }
    }

    public final int f()
    {
        return g;
    }

    public final int g()
    {
        return b.o;
    }

    public final String h()
    {
        return e;
    }

    public final String i()
    {
        return VideoLogic.f(MMCore.f().p().d(e));
    }

    public final void j()
    {
        d.a();
        c.b();
    }

    public final void k()
    {
        b.n = c.a(-1L);
        d.b();
    }

    public final void l()
    {
        vprotocal.a();
        h = null;
        j.a();
        if(i != null && i.isAlive())
            i.join();
_L2:
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private vprotocal a;
    private RecordParams b;
    private YuvReocrder c;
    private PcmRecorder d;
    private String e;
    private String f;
    private int g;
    private OnProgressListener h;
    private ThreadPackVideo i;
    private MTimerHandler j;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            int i1 = -1;
            int j1 = vprotocal.b();
            boolean flag;
            if(j1 >= 0 && SceneVideo.a(a).n > 0)
                if(j1 <= SceneVideo.a(a).n && SceneVideo.b(a).isAlive())
                    i1 = (j1 * 90) / SceneVideo.a(a).n;
                else
                if(j1 >= SceneVideo.a(a).n && !SceneVideo.b(a).isAlive())
                    i1 = 100;
            Log.d("MicroMsg.SceneVideo", (new StringBuilder()).append("progress now: ").append(j1).append(" sum:").append(SceneVideo.a(a).n).append(" thr:").append(SceneVideo.b(a).isAlive()).append(" ").append(i1).toString());
            if(SceneVideo.c(a) != null)
                SceneVideo.c(a).a(i1);
            if(i1 >= 0 && i1 < 100)
                flag = true;
            else
                flag = false;
            return flag;
        }

        private SceneVideo a;

        _cls1()
        {
            a = SceneVideo.this;
            super();
        }

        private class OnProgressListener
        {

            public abstract void a(int i1);
        }

    }


    private class ThreadPackVideo extends Thread
    {

        public void run()
        {
            Log.d("MicroMsg.SceneVideo", "click stop");
            Log.d("MicroMsg.SceneVideo", (new StringBuilder()).append("YuvReocrder ").append(SceneVideo.a(a).a).append(" rotate:").append(SceneVideo.a(a).d).toString());
            if(vprotocal.a(SceneVideo.a(a)) >= SceneVideo.a(a).n)
            {
                vprotocal.a(SceneVideo.a(a).m, SceneVideo.a(a).j, SceneVideo.a(a).l, SceneVideo.a(a).a);
                SceneVideo.a(a, (int)(new File(SceneVideo.a(a).m)).length());
            }
        }

        private SceneVideo a;

        ThreadPackVideo()
        {
            this((byte)0);
        }

        private ThreadPackVideo(byte byte0)
        {
            a = SceneVideo.this;
            super();
        }
    }

}

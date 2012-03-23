// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.video;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.*;
import android.widget.MediaController;
import b.a.e;
import com.tencent.mm.platformtools.Log;
import java.io.IOException;

public class VideoView extends SurfaceView
    implements android.widget.MediaController.MediaPlayerControl
{

    public VideoView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        a = context;
        d();
    }

    public VideoView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        d = null;
        e = null;
        r = new _cls1();
        s = new _cls2();
        t = new _cls3();
        u = new _cls4();
        v = new _cls5();
        w = new _cls6();
        a = context;
        d();
    }

    static int a(VideoView videoview)
    {
        return videoview.g;
    }

    static int a(VideoView videoview, int i1)
    {
        videoview.g = i1;
        return i1;
    }

    static SurfaceHolder a(VideoView videoview, SurfaceHolder surfaceholder)
    {
        videoview.d = surfaceholder;
        return surfaceholder;
    }

    static int b(VideoView videoview)
    {
        return videoview.h;
    }

    static int b(VideoView videoview, int i1)
    {
        videoview.h = i1;
        return i1;
    }

    static int c(VideoView videoview, int i1)
    {
        videoview.n = i1;
        return i1;
    }

    static boolean c(VideoView videoview)
    {
        videoview.f = true;
        return true;
    }

    static int d(VideoView videoview, int i1)
    {
        videoview.i = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnPreparedListener d(VideoView videoview)
    {
        return videoview.m;
    }

    private void d()
    {
        g = 0;
        h = 0;
        getHolder().addCallback(w);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    static int e(VideoView videoview, int i1)
    {
        videoview.j = i1;
        return i1;
    }

    static MediaPlayer e(VideoView videoview)
    {
        return videoview.e;
    }

    private void e()
    {
        if(b != null && d != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        a.sendBroadcast(intent);
        if(e != null)
        {
            e.reset();
            e.release();
            e = null;
        }
        e = new MediaPlayer();
        e.setOnPreparedListener(s);
        e.setOnVideoSizeChangedListener(r);
        f = false;
        Log.e("MicroMsg.VideoView", "reset duration to -1 in openVideo");
        c = -1;
        e.setOnCompletionListener(t);
        e.setOnErrorListener(u);
        e.setOnBufferingUpdateListener(v);
        n = 0;
        e.setDataSource(b);
        e.setDisplay(d);
        e.setAudioStreamType(3);
        e.setScreenOnWhilePlaying(true);
        e.prepareAsync();
        h = e.getVideoHeight();
        g = e.getVideoWidth();
        if(e == null || k == null)
            continue; /* Loop/switch isn't completed */
        k.setMediaPlayer(this);
        if(!(getParent() instanceof View)) goto _L4; else goto _L3
_L3:
        Object obj = (View)getParent();
_L6:
        k.setAnchorView(((View) (obj)));
        k.setEnabled(f);
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        continue; /* Loop/switch isn't completed */
_L4:
        obj = this;
        if(true) goto _L6; else goto _L5
_L5:
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if(true) goto _L1; else goto _L7
_L7:
    }

    static MediaController f(VideoView videoview)
    {
        return videoview.k;
    }

    private void f()
    {
        if(k.isShowing())
            k.hide();
        else
            k.show();
    }

    static boolean g(VideoView videoview)
    {
        return videoview.p;
    }

    static boolean h(VideoView videoview)
    {
        videoview.p = false;
        return false;
    }

    static int i(VideoView videoview)
    {
        return videoview.i;
    }

    static int j(VideoView videoview)
    {
        return videoview.j;
    }

    static int k(VideoView videoview)
    {
        return videoview.q;
    }

    static int l(VideoView videoview)
    {
        videoview.q = 0;
        return 0;
    }

    static android.media.MediaPlayer.OnCompletionListener m(VideoView videoview)
    {
        return videoview.l;
    }

    static android.media.MediaPlayer.OnErrorListener n(VideoView videoview)
    {
        return videoview.o;
    }

    static boolean o(VideoView videoview)
    {
        return videoview.f;
    }

    static void p(VideoView videoview)
    {
        videoview.e();
    }

    static MediaPlayer q(VideoView videoview)
    {
        videoview.e = null;
        return null;
    }

    public final void a()
    {
        int i1 = b.a.e.a(a, 224F);
        int j1 = b.a.e.a(a, 288F);
        Log.e("checked", (new StringBuilder()).append("video size before:").append(i1).append("   ").append(j1).toString());
        Log.e("checked", (new StringBuilder()).append("layout size before:").append(getWidth()).append("   ").append(getHeight()).toString());
        int k1 = getWidth();
        int l1 = getHeight();
        if(k1 <= 0)
            k1 = i1;
        if(l1 <= 0)
            l1 = j1;
        if(i1 > k1)
        {
            float f3 = (1F * (float)i1) / (float)k1;
            j1 = (int)((float)j1 / f3);
            int i2;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            float f1;
            float f2;
            if(j1 > l1)
            {
                float f4 = (1F * (float)j1) / (float)l1;
                i1 = (int)((float)k1 / f4);
                j1 = l1;
            } else
            {
                i1 = k1;
            }
        }
        if(j1 > l1)
        {
            f1 = (1F * (float)j1) / (float)l1;
            i2 = (int)((float)i1 / f1);
            if(i2 > k1)
            {
                f2 = (1F * (float)i2) / (float)k1;
                l1 = (int)((float)l1 / f2);
                i2 = k1;
            }
        } else
        {
            l1 = j1;
            i2 = i1;
        }
        layoutparams = new android.widget.RelativeLayout.LayoutParams(i2, l1);
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        invalidate();
        Log.e("checked", (new StringBuilder()).append("video size after:").append(e.getVideoWidth()).append("   ").append(e.getVideoHeight()).toString());
        Log.e("checked", (new StringBuilder()).append("layout size after:").append(getWidth()).append("   ").append(getHeight()).toString());
    }

    public final void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        l = oncompletionlistener;
    }

    public final void a(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        o = onerrorlistener;
    }

    public final void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        m = onpreparedlistener;
    }

    public final void a(String s1)
    {
        b = s1;
        p = false;
        q = 0;
        e();
        requestLayout();
        invalidate();
    }

    public final void b()
    {
        if(e != null)
        {
            e.stop();
            e.release();
            e = null;
        }
    }

    public final int c()
    {
        int i1;
        if(e == null)
            i1 = 0;
        else
            i1 = e.getDuration() - e.getCurrentPosition();
        return i1;
    }

    public boolean canPause()
    {
        return false;
    }

    public boolean canSeekBackward()
    {
        return false;
    }

    public boolean canSeekForward()
    {
        return false;
    }

    public int getBufferPercentage()
    {
        int i1;
        if(e != null)
            i1 = n;
        else
            i1 = 0;
        return i1;
    }

    public int getCurrentPosition()
    {
        int i1;
        if(e != null && f)
            i1 = e.getCurrentPosition();
        else
            i1 = 0;
        return i1;
    }

    public int getDuration()
    {
        int i1;
        if(e != null && f)
        {
            if(c > 0)
            {
                i1 = c;
            } else
            {
                c = e.getDuration();
                i1 = c;
            }
        } else
        {
            c = -1;
            i1 = c;
        }
        return i1;
    }

    public boolean isPlaying()
    {
        boolean flag;
        if(e != null && f)
            flag = e.isPlaying();
        else
            flag = false;
        return flag;
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if(!f || i1 == 4 || i1 == 24 || i1 == 25 || i1 == 82 || i1 == 5 || i1 == 6 || e == null || k == null) goto _L2; else goto _L1
_L1:
        if(i1 != 79 && i1 != 85) goto _L4; else goto _L3
_L3:
        boolean flag;
        if(e.isPlaying())
        {
            pause();
            k.show();
        } else
        {
            start();
            k.hide();
        }
        flag = true;
_L6:
        return flag;
_L4:
        if(i1 == 86 && e.isPlaying())
        {
            pause();
            k.show();
        } else
        {
            f();
        }
_L2:
        flag = super.onKeyDown(i1, keyevent);
        if(true) goto _L6; else goto _L5
_L5:
    }

    protected void onMeasure(int i1, int j1)
    {
        setMeasuredDimension(getDefaultSize(g, i1), getDefaultSize(h, j1));
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if(f && e != null && k != null)
            f();
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        if(f && e != null && k != null)
            f();
        return false;
    }

    public void pause()
    {
        if(e != null && f && e.isPlaying())
            e.pause();
        p = false;
    }

    public void seekTo(int i1)
    {
        if(e != null && f)
            e.seekTo(i1);
        else
            q = i1;
    }

    public void start()
    {
        if(e != null && f)
        {
            e.start();
            p = false;
        } else
        {
            p = true;
        }
    }

    private Context a;
    private String b;
    private int c;
    private SurfaceHolder d;
    private MediaPlayer e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private MediaController k;
    private android.media.MediaPlayer.OnCompletionListener l;
    private android.media.MediaPlayer.OnPreparedListener m;
    private int n;
    private android.media.MediaPlayer.OnErrorListener o;
    private boolean p;
    private int q;
    private android.media.MediaPlayer.OnVideoSizeChangedListener r;
    private android.media.MediaPlayer.OnPreparedListener s;
    private android.media.MediaPlayer.OnCompletionListener t;
    private android.media.MediaPlayer.OnErrorListener u;
    private android.media.MediaPlayer.OnBufferingUpdateListener v;
    private android.view.SurfaceHolder.Callback w;

    private class _cls1
        implements android.media.MediaPlayer.OnVideoSizeChangedListener
    {

        public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
        {
            VideoView.a(a, mediaplayer.getVideoWidth());
            VideoView.b(a, mediaplayer.getVideoHeight());
            Log.e("checked", (new StringBuilder()).append("on size change size:( ").append(VideoView.a(a)).append(" , ").append(VideoView.b(a)).append(" )").toString());
        }

        private VideoView a;

        _cls1()
        {
            a = VideoView.this;
            super();
        }
    }


    private class _cls2
        implements android.media.MediaPlayer.OnPreparedListener
    {

        public void onPrepared(MediaPlayer mediaplayer)
        {
            VideoView.c(a);
            if(VideoView.d(a) != null)
                VideoView.d(a).onPrepared(com.tencent.mm.ui.video.VideoView.e(a));
            if(VideoView.f(a) != null)
                VideoView.f(a).setEnabled(true);
            VideoView.a(a, mediaplayer.getVideoWidth());
            VideoView.b(a, mediaplayer.getVideoHeight());
            a.a();
            if(VideoView.a(a) == 0 || VideoView.b(a) == 0) goto _L2; else goto _L1
_L1:
            if(VideoView.g(a))
            {
                com.tencent.mm.ui.video.VideoView.e(a).start();
                VideoView.h(a);
            }
            if(VideoView.i(a) != VideoView.a(a) || VideoView.j(a) != VideoView.b(a)) goto _L4; else goto _L3
_L3:
            if(VideoView.k(a) != 0)
            {
                com.tencent.mm.ui.video.VideoView.e(a).seekTo(VideoView.k(a));
                VideoView.l(a);
            }
            if(!VideoView.g(a)) goto _L6; else goto _L5
_L5:
            if(VideoView.f(a) != null)
                VideoView.f(a).show();
_L4:
            return;
_L6:
            if(!a.isPlaying() && (VideoView.k(a) != 0 || a.getCurrentPosition() > 0) && VideoView.f(a) != null)
                VideoView.f(a).show(0);
            continue; /* Loop/switch isn't completed */
_L2:
            if(VideoView.k(a) != 0)
            {
                com.tencent.mm.ui.video.VideoView.e(a).seekTo(VideoView.k(a));
                VideoView.l(a);
            }
            if(VideoView.g(a))
            {
                com.tencent.mm.ui.video.VideoView.e(a).start();
                VideoView.h(a);
            }
            if(true) goto _L4; else goto _L7
_L7:
        }

        private VideoView a;

        _cls2()
        {
            a = VideoView.this;
            super();
        }
    }


    private class _cls3
        implements android.media.MediaPlayer.OnCompletionListener
    {

        public void onCompletion(MediaPlayer mediaplayer)
        {
            if(VideoView.f(a) != null)
                VideoView.f(a).hide();
            if(VideoView.m(a) != null)
                VideoView.m(a).onCompletion(com.tencent.mm.ui.video.VideoView.e(a));
        }

        private VideoView a;

        _cls3()
        {
            a = VideoView.this;
            super();
        }
    }


    private class _cls4
        implements android.media.MediaPlayer.OnErrorListener
    {

        public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
        {
            Log.d("MicroMsg.VideoView", (new StringBuilder()).append("Error: ").append(i1).append(",").append(j1).toString());
            if(VideoView.f(a) != null)
                VideoView.f(a).hide();
            if(VideoView.n(a) == null || !VideoView.n(a).onError(com.tencent.mm.ui.video.VideoView.e(a), i1, j1))
                a.getWindowToken();
            return true;
        }

        private VideoView a;

        _cls4()
        {
            a = VideoView.this;
            super();
        }
    }


    private class _cls5
        implements android.media.MediaPlayer.OnBufferingUpdateListener
    {

        public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
        {
            VideoView.c(a, i1);
        }

        private VideoView a;

        _cls5()
        {
            a = VideoView.this;
            super();
        }
    }


    private class _cls6
        implements android.view.SurfaceHolder.Callback
    {

        public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
        {
            VideoView.d(a, j1);
            com.tencent.mm.ui.video.VideoView.e(a, k1);
            if(com.tencent.mm.ui.video.VideoView.e(a) != null && VideoView.o(a) && VideoView.a(a) == j1 && VideoView.b(a) == k1)
            {
                if(VideoView.k(a) != 0)
                {
                    com.tencent.mm.ui.video.VideoView.e(a).seekTo(VideoView.k(a));
                    VideoView.l(a);
                }
                com.tencent.mm.ui.video.VideoView.e(a).start();
                if(VideoView.f(a) != null)
                    VideoView.f(a).show();
            }
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            VideoView.a(a, surfaceholder);
            VideoView.p(a);
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            VideoView.a(a, null);
            if(VideoView.f(a) != null)
                VideoView.f(a).hide();
            if(com.tencent.mm.ui.video.VideoView.e(a) != null)
            {
                com.tencent.mm.ui.video.VideoView.e(a).reset();
                com.tencent.mm.ui.video.VideoView.e(a).release();
                VideoView.q(a);
            }
        }

        private VideoView a;

        _cls6()
        {
            a = VideoView.this;
            super();
        }
    }

}

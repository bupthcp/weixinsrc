// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.video;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.ImageButton;
import android.widget.TextView;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelvideo.VideoInfoStorage;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.ui.MMActivity;

// Referenced classes of package com.tencent.mm.ui.video:
//            VideoView

public class VideoPlayerUI extends MMActivity
{

    public VideoPlayerUI()
    {
        a = null;
        b = null;
        i = new MTimerHandler(new _cls8(), true);
    }

    static void a(VideoPlayerUI videoplayerui)
    {
        videoplayerui.a.start();
        videoplayerui.i.a(200L);
    }

    public static boolean a(String s, Context context)
    {
        Intent intent = (new Intent("android.intent.action.VIEW")).addFlags(0x10000000);
        intent.setDataAndType(Uri.parse((new StringBuilder()).append("file://").append(MMCore.f().p().d(s)).toString()), "video/*");
        boolean flag;
        if(!Util.a(context, intent))
        {
            flag = false;
        } else
        {
            context.startActivity(intent);
            flag = true;
        }
        return flag;
    }

    static ImageButton b(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.b;
    }

    private void b()
    {
        a.pause();
        b.setVisibility(0);
        i.a();
    }

    static VideoView c(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.a;
    }

    static void d(VideoPlayerUI videoplayerui)
    {
        videoplayerui.b();
    }

    static int e(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.g;
    }

    static TextView f(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.e;
    }

    static int g(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.f;
    }

    static TextView h(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.d;
    }

    static MTimerHandler i(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.i;
    }

    static String j(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.h;
    }

    static TextView k(VideoPlayerUI videoplayerui)
    {
        return videoplayerui.c;
    }

    protected final int a()
    {
        return 0x7f0300ff;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0325);
        String s = getIntent().getExtras().getString("VideoPlayer_File_nam");
        f = getIntent().getIntExtra("VideoRecorder_VideoSize", 0);
        g = getIntent().getIntExtra("VideoRecorder_VideoLength", 0);
        h = MMCore.f().p().d(s);
        Log.d("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append(CodeInfo.c()).append(" initView").toString());
        b = (ImageButton)findViewById(0x7f0702b0);
        b.setOnClickListener(new _cls1());
        Log.d("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append(CodeInfo.c()).append(" initView").toString());
        a = (VideoView)findViewById(0x7f0702b3);
        a.a(new _cls2());
        a.setOnTouchListener(new _cls3());
        Log.d("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append(CodeInfo.c()).append(" initView :").append(h).toString());
        if(h != null)
        {
            a.b();
            a.a(h);
        }
        Log.d("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append(CodeInfo.c()).append(" initView").toString());
        a.a(new _cls4());
        a.a(new _cls5());
        a(0x7f0a0017, new _cls6());
        b(new _cls7());
        c = (TextView)findViewById(0x7f0702b4);
        e = (TextView)findViewById(0x7f0702b5);
        d = (TextView)findViewById(0x7f0702b6);
    }

    protected void onDestroy()
    {
        if(a.isPlaying())
            a.b();
        super.onDestroy();
    }

    protected void onPause()
    {
        b();
        super.onPause();
    }

    private VideoView a;
    private ImageButton b;
    private TextView c;
    private TextView d;
    private TextView e;
    private int f;
    private int g;
    private String h;
    private MTimerHandler i;

    private class _cls8
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            Log.e("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append("video time left:").append(Util.b(VideoPlayerUI.c(a).c() / 1000)).toString());
            VideoPlayerUI.k(a).setText(Util.b(VideoPlayerUI.c(a).c() / 1000));
            return true;
        }

        private VideoPlayerUI a;

        _cls8()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            VideoPlayerUI.a(a);
            VideoPlayerUI.b(a).setVisibility(8);
        }

        private VideoPlayerUI a;

        _cls1()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls2
        implements android.media.MediaPlayer.OnErrorListener
    {

        public boolean onError(MediaPlayer mediaplayer, int l, int i1)
        {
            VideoPlayerUI.c(a).b();
            MMAlert.a(a, 0x7f0a0324, 0x7f0a0155);
            return false;
        }

        private VideoPlayerUI a;

        _cls2()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if(VideoPlayerUI.c(a).isPlaying())
                VideoPlayerUI.d(a);
            return false;
        }

        private VideoPlayerUI a;

        _cls3()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls4
        implements android.media.MediaPlayer.OnPreparedListener
    {

        public void onPrepared(MediaPlayer mediaplayer)
        {
            Log.d("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append(CodeInfo.c()).append(" onPrepared").toString());
            Log.d("MicorMsg.VideoPlayerActivity", (new StringBuilder()).append(CodeInfo.c()).append(" onPrepared").toString());
            VideoPlayerUI.a(a);
            VideoPlayerUI.b(a).setVisibility(8);
            VideoPlayerUI.f(a).setText(Util.b(VideoPlayerUI.e(a)));
            VideoPlayerUI.h(a).setText(Util.b(VideoPlayerUI.g(a)));
        }

        private VideoPlayerUI a;

        _cls4()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls5
        implements android.media.MediaPlayer.OnCompletionListener
    {

        public void onCompletion(MediaPlayer mediaplayer)
        {
            VideoPlayerUI.b(a).setVisibility(0);
            VideoPlayerUI.i(a).a();
        }

        private VideoPlayerUI a;

        _cls5()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = VideoLogic.f(VideoPlayerUI.j(a));
            if(Util.i(s))
            {
                Toast.makeText(a, a.getString(0x7f0a0323), 1).show();
            } else
            {
                VideoPlayerUI videoplayerui = a;
                VideoPlayerUI videoplayerui1 = a;
                Object aobj[] = new Object[1];
                aobj[0] = s;
                Toast.makeText(videoplayerui, videoplayerui1.getString(0x7f0a0322, aobj), 1).show();
                a.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse((new StringBuilder()).append("file://").append(Environment.getExternalStorageDirectory()).toString())));
            }
        }

        private VideoPlayerUI a;

        _cls6()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private VideoPlayerUI a;

        _cls7()
        {
            a = VideoPlayerUI.this;
            super();
        }
    }

}

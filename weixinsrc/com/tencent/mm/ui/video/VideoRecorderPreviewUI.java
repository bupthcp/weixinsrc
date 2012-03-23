// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.video;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.*;
import b.a.ad;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelvideo.VideoInfoStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMAlert;

// Referenced classes of package com.tencent.mm.ui.video:
//            VideoView

public class VideoRecorderPreviewUI extends Activity
{

    public VideoRecorderPreviewUI()
    {
        e = null;
    }

    static String a(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.i;
    }

    private void a()
    {
        MMAlert.a(this, getString(0x7f0a0329), getString(0x7f0a0010), new _cls4(), new _cls5());
    }

    static Button b(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.f;
    }

    static void c(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        videorecorderpreviewui.a();
    }

    static boolean d(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.k;
    }

    static String e(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.j;
    }

    static VideoView f(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.b;
    }

    static ImageButton g(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.e;
    }

    static TextView h(VideoRecorderPreviewUI videorecorderpreviewui)
    {
        return videorecorderpreviewui.d;
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag = true;
        super.onCreate(bundle);
        requestWindowFeature(flag);
        String s;
        if(ad.b())
            flag = false;
        a = flag;
        if(a)
        {
            setContentView(0x7f0300fd);
        } else
        {
            getWindow().setFlags(1024, 1024);
            setRequestedOrientation(0);
            setContentView(0x7f0300fe);
        }
        j = getIntent().getStringExtra("VideoRecorder_ToUser");
        i = getIntent().getStringExtra("VideoRecorder_FileName");
        k = getIntent().getBooleanExtra("VideoRecorder_NeedResult", false);
        e = (ImageButton)findViewById(0x7f0702b0);
        e.setOnClickListener(new _cls6());
        b = (VideoView)findViewById(0x7f0702a8);
        b.a(new _cls7());
        b.setOnTouchListener(new _cls8());
        b.a(new _cls9());
        b.a(new _cls10());
        s = MMCore.f().p().d(i);
        if(s != null)
        {
            b.b();
            b.a(s);
        }
        f = (Button)findViewById(0x7f070090);
        f.setOnClickListener(new _cls1());
        g = (Button)findViewById(0x7f07008d);
        g.setOnClickListener(new _cls2());
        h = (Button)findViewById(0x7f07008f);
        h.setOnClickListener(new _cls3());
        d = (TextView)findViewById(0x7f0702b2);
        c = (TextView)findViewById(0x7f0702b1);
        c.setText(Util.b(getIntent().getIntExtra("VideoRecorder_VideoSize", -1)));
    }

    public boolean onKeyDown(int l, KeyEvent keyevent)
    {
        boolean flag;
        if(l == 4)
        {
            a();
            flag = true;
        } else
        {
            flag = super.onKeyDown(l, keyevent);
        }
        return flag;
    }

    public void onStart()
    {
        super.onStart();
        if(a)
            setRequestedOrientation(1);
        else
            setRequestedOrientation(0);
    }

    private boolean a;
    private VideoView b;
    private TextView c;
    private TextView d;
    private ImageButton e;
    private Button f;
    private Button g;
    private Button h;
    private String i;
    private String j;
    private boolean k;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
            a.finish();
            VideoRecorderPreviewUI.f(a).b();
        }

        private VideoRecorderPreviewUI a;

        _cls4()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
        }

        private VideoRecorderPreviewUI a;

        _cls5()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            VideoRecorderPreviewUI.f(a).start();
            VideoRecorderPreviewUI.g(a).setVisibility(8);
        }

        private VideoRecorderPreviewUI a;

        _cls6()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls7
        implements android.media.MediaPlayer.OnErrorListener
    {

        public boolean onError(MediaPlayer mediaplayer, int l, int i1)
        {
            VideoRecorderPreviewUI.f(a).b();
            MMAlert.a(a, 0x7f0a0324, 0x7f0a0155);
            return false;
        }

        private VideoRecorderPreviewUI a;

        _cls7()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if(VideoRecorderPreviewUI.f(a).isPlaying())
            {
                VideoRecorderPreviewUI.f(a).pause();
                VideoRecorderPreviewUI.g(a).setVisibility(0);
            }
            return false;
        }

        private VideoRecorderPreviewUI a;

        _cls8()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls9
        implements android.media.MediaPlayer.OnPreparedListener
    {

        public void onPrepared(MediaPlayer mediaplayer)
        {
            Log.d("MicroMsg.VideoRecorderPreviewUI", (new StringBuilder()).append(CodeInfo.c()).append(" onPrepared").toString());
            Log.d("MicroMsg.VideoRecorderPreviewUI", (new StringBuilder()).append(CodeInfo.c()).append(" onPrepared").toString());
            int l = a.getIntent().getIntExtra("VideoRecorder_VideoLength", 0);
            VideoRecorderPreviewUI.h(a).setText(Util.b(l / 1000));
            VideoRecorderPreviewUI.f(a).start();
            VideoRecorderPreviewUI.g(a).setVisibility(8);
        }

        private VideoRecorderPreviewUI a;

        _cls9()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls10
        implements android.media.MediaPlayer.OnCompletionListener
    {

        public void onCompletion(MediaPlayer mediaplayer)
        {
            VideoRecorderPreviewUI.g(a).setVisibility(0);
        }

        private VideoRecorderPreviewUI a;

        _cls10()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = VideoLogic.f(MMCore.f().p().d(VideoRecorderPreviewUI.a(a)));
            if(Util.i(s))
            {
                Toast.makeText(a, a.getString(0x7f0a0323), 1).show();
            } else
            {
                VideoRecorderPreviewUI videorecorderpreviewui = a;
                VideoRecorderPreviewUI videorecorderpreviewui1 = a;
                Object aobj[] = new Object[1];
                aobj[0] = s;
                Toast.makeText(videorecorderpreviewui, videorecorderpreviewui1.getString(0x7f0a0322, aobj), 1).show();
            }
            VideoRecorderPreviewUI.b(a).setEnabled(false);
        }

        private VideoRecorderPreviewUI a;

        _cls1()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            VideoRecorderPreviewUI.c(a);
        }

        private VideoRecorderPreviewUI a;

        _cls2()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(VideoRecorderPreviewUI.d(a))
            {
                Intent intent = new Intent();
                intent.putExtra("VideoRecorder_FileName", VideoRecorderPreviewUI.a(a));
                intent.putExtra("VideoRecorder_VideoLength", a.getIntent().getIntExtra("VideoRecorder_VideoLength", 0));
                a.setResult(-1, intent);
                a.finish();
            } else
            {
                int l = a.getIntent().getIntExtra("VideoRecorder_VideoLength", -1);
                if(l == -1)
                {
                    Toast.makeText(a, a.getString(0x7f0a032d), 0).show();
                } else
                {
                    VideoLogic.a(VideoRecorderPreviewUI.a(a), l, VideoRecorderPreviewUI.e(a), null);
                    VideoLogic.c(VideoRecorderPreviewUI.a(a));
                }
                VideoRecorderUI.a().finish();
                ChattingUI.e = true;
                a.finish();
            }
        }

        private VideoRecorderPreviewUI a;

        _cls3()
        {
            a = VideoRecorderPreviewUI.this;
            super();
        }
    }

}

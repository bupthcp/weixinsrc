// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.video;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import b.a.ad;
import com.tencent.mm.modelvideo.SceneVideo;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.skin.MMSkinFactory;
import java.util.Locale;

public class VideoRecorderUI extends Activity
    implements android.view.SurfaceHolder.Callback
{

    public VideoRecorderUI()
    {
        a = null;
        b = null;
        c = null;
        e = null;
        h = false;
        i = false;
        n = -1L;
        s = null;
        x = 0;
        B = false;
        C = true;
        F = new MTimerHandler(new _cls1(), true);
        G = new MTimerHandler(new _cls12(), false);
    }

    static TextView A(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.m;
    }

    static PopupWindow B(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.p;
    }

    static TextView C(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.q;
    }

    static TextView D(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.v;
    }

    static TextView E(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.w;
    }

    static MTimerHandler F(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.G;
    }

    static ImageButton G(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.s;
    }

    static Button H(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.k;
    }

    static ImageButton I(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.z;
    }

    static int a(VideoRecorderUI videorecorderui, int i1)
    {
        videorecorderui.x = i1;
        return i1;
    }

    static long a(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.n;
    }

    static long a(VideoRecorderUI videorecorderui, long l1)
    {
        videorecorderui.n = l1;
        return l1;
    }

    static PopupWindow a(VideoRecorderUI videorecorderui, PopupWindow popupwindow)
    {
        videorecorderui.p = popupwindow;
        return popupwindow;
    }

    static TextView a(VideoRecorderUI videorecorderui, TextView textview)
    {
        videorecorderui.q = textview;
        return textview;
    }

    public static VideoRecorderUI a()
    {
        return A;
    }

    static TextView b(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.u;
    }

    private void b()
    {
        if(h)
            MMAlert.a(this, getString(0x7f0a0329), getString(0x7f0a0010), new _cls8(), new _cls9());
        else
            finish();
    }

    static TextView c(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.l;
    }

    private void c()
    {
        u.setText(Util.b(0));
        k.setEnabled(true);
        h = false;
        o.setVisibility(0);
        a.setVisibility(0);
        t.setImageDrawable(a(0x7f020254));
        m.setVisibility(0);
        l.setVisibility(8);
        j.setVisibility(4);
        f.setVisibility(4);
        s.setVisibility(8);
        t.setVisibility(0);
        u.setVisibility(0);
        u.setText(Util.b(0));
        w.setVisibility(8);
        v.setVisibility(8);
        r.setVisibility(8);
        g.setEnabled(true);
        z.setEnabled(true);
    }

    static ImageView d(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.t;
    }

    private void d()
    {
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)a.getLayoutParams();
        float f1 = MMActivity.k();
        if(y)
        {
            int k1 = (int)(f1 * (float)d.c());
            int l1 = (int)(f1 * (float)d.b());
            Log.e("MicroMsg.VideoRecorderUI", (new StringBuilder()).append("video size:[").append(l1).append(",").append(k1).append("]").toString());
            layoutparams.width = l1;
            layoutparams.height = k1;
        } else
        {
            int i1 = (int)(f1 * (float)d.b());
            int j1 = (int)(f1 * (float)d.c());
            Log.e("MicroMsg.VideoRecorderUI", (new StringBuilder()).append("video size:[").append(j1).append(",").append(i1).append("]").toString());
            layoutparams.width = j1;
            layoutparams.height = i1;
        }
        a.setLayoutParams(layoutparams);
    }

    private void e()
    {
        a.setKeepScreenOn(false);
    }

    static void e(VideoRecorderUI videorecorderui)
    {
        videorecorderui.i = false;
        videorecorderui.e();
        String s1;
        Object aobj[];
        long l1;
        android.graphics.Bitmap bitmap;
        if(videorecorderui.y)
            videorecorderui.g.setImageDrawable(videorecorderui.a(0x7f0202f0));
        else
            videorecorderui.g.setImageDrawable(videorecorderui.a(0x7f0202f1));
        videorecorderui.g.setEnabled(false);
        s1 = videorecorderui.getString(0x7f0a0010);
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(0);
        videorecorderui.e = MMAlert.a(videorecorderui, s1, videorecorderui.getString(0x7f0a0326, aobj), true, videorecorderui. new _cls10());
        l1 = Util.f(videorecorderui.n);
        videorecorderui.F.a();
        videorecorderui.l.setVisibility(8);
        videorecorderui.h = true;
        videorecorderui.d.a(l1);
        bitmap = videorecorderui.d.a(videorecorderui);
        if(bitmap != null)
        {
            videorecorderui.a.setVisibility(8);
            videorecorderui.r.setVisibility(0);
            videorecorderui.r.setImageBitmap(bitmap);
        }
        videorecorderui.d.a(videorecorderui. new _cls11());
    }

    static int f(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.x;
    }

    static int g(VideoRecorderUI videorecorderui)
    {
        int i1 = videorecorderui.x;
        videorecorderui.x = i1 + 1;
        return i1;
    }

    static boolean h(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.i;
    }

    static boolean i(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.h;
    }

    static boolean j(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.y;
    }

    static ImageButton k(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.g;
    }

    static void l(VideoRecorderUI videorecorderui)
    {
        videorecorderui.o.setVisibility(0);
        videorecorderui.a.setVisibility(0);
        videorecorderui.k.setEnabled(false);
        videorecorderui.z.setEnabled(false);
        videorecorderui.i = true;
        videorecorderui.t.setVisibility(0);
        videorecorderui.r.setVisibility(8);
        videorecorderui.s.setVisibility(8);
        videorecorderui.f.setVisibility(4);
        videorecorderui.j.setVisibility(4);
        videorecorderui.u.setVisibility(0);
        videorecorderui.l.setVisibility(0);
        videorecorderui.m.setVisibility(8);
        videorecorderui.w.setVisibility(8);
        videorecorderui.v.setVisibility(8);
        videorecorderui.n = -1L;
        videorecorderui.F.a(300L);
        videorecorderui.a.setKeepScreenOn(true);
        videorecorderui.d.j();
    }

    static SceneVideo m(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.d;
    }

    static Button n(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.j;
    }

    static void o(VideoRecorderUI videorecorderui)
    {
        videorecorderui.b();
    }

    static boolean p(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.E;
    }

    static String q(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.c;
    }

    static boolean r(VideoRecorderUI videorecorderui)
    {
        videorecorderui.B = true;
        return true;
    }

    static SurfaceHolder s(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.b;
    }

    static boolean t(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.B;
    }

    static void u(VideoRecorderUI videorecorderui)
    {
        videorecorderui.c();
    }

    static LinearLayout v(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.o;
    }

    static SurfaceView w(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.a;
    }

    static ProgressDialog x(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.e;
    }

    static ProgressDialog y(VideoRecorderUI videorecorderui)
    {
        videorecorderui.e = null;
        return null;
    }

    static Button z(VideoRecorderUI videorecorderui)
    {
        return videorecorderui.f;
    }

    public final Drawable a(int i1)
    {
        return D.a(i1);
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if(j1 == -1)
        {
            if(i1 == 0)
            {
                setResult(-1, intent);
                finish();
            }
            super.onActivityResult(i1, j1, intent);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s1 = LocaleUtil.a(getSharedPreferences("com.tencent.mm_preferences", 0));
        boolean flag;
        if(s1.equals("zh_TW") || s1.equals("zh_HK"))
            LocaleUtil.a(this, Locale.TAIWAN);
        else
        if(s1.equals("en"))
            LocaleUtil.a(this, Locale.ENGLISH);
        else
        if(s1.equals("zh_CN"))
            LocaleUtil.a(this, Locale.CHINA);
        D = new MMSkinFactory(this);
        A = this;
        requestWindowFeature(1);
        if(!ad.b())
            flag = true;
        else
            flag = false;
        y = flag;
        if(y)
        {
            setContentView(0x7f0300fb);
        } else
        {
            getWindow().setFlags(1024, 1024);
            setRequestedOrientation(0);
            setContentView(0x7f0300fc);
        }
        c = getIntent().getStringExtra("VideoRecorder_ToUser");
        E = getIntent().getBooleanExtra("VideoRecorder_NeedResult", false);
        Log.d("MicroMsg.VideoRecorderUI", (new StringBuilder()).append("talker :").append(c).toString());
        a = (SurfaceView)findViewById(0x7f07008a);
        o = (LinearLayout)findViewById(0x7f0702a6);
        b = a.getHolder();
        b.addCallback(this);
        b.setType(3);
        t = (ImageView)findViewById(0x7f0702ac);
        z = (ImageButton)findViewById(0x7f0702a9);
        u = (TextView)findViewById(0x7f0702ad);
        u.setText(Util.b(0));
        d = new SceneVideo();
        l = (TextView)findViewById(0x7f07008c);
        v = (TextView)findViewById(0x7f0702af);
        w = (TextView)findViewById(0x7f0702ae);
        m = (TextView)findViewById(0x7f07008b);
        g = (ImageButton)findViewById(0x7f07008e);
        g.setOnClickListener(new _cls2());
        j = (Button)findViewById(0x7f070090);
        j.setOnClickListener(new _cls3());
        k = (Button)findViewById(0x7f07008d);
        k.setOnClickListener(new _cls4());
        f = (Button)findViewById(0x7f07008f);
        f.setOnClickListener(new _cls5());
        if(ad.a() > 1)
            z.setVisibility(0);
        else
            z.setVisibility(4);
        z.setOnClickListener(new _cls6());
        s = (ImageButton)findViewById(0x7f0702b0);
        r = (ImageView)findViewById(0x7f0702a8);
        s.setOnClickListener(new _cls7());
        d.a(c, y);
    }

    protected void onDestroy()
    {
        A = null;
        if(D != null)
        {
            D.a();
            D = null;
        }
        Log.e("MicroMsg.VideoRecorderUI", "on destroy");
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag = true;
        if(i1 == 4)
        {
            Log.d("MicroMsg.VideoRecorderUI", "KEYCODE_BACK");
            if(!i)
                b();
        } else
        {
            flag = super.onKeyDown(i1, keyevent);
        }
        return flag;
    }

    protected void onPause()
    {
        if(i)
        {
            d.k();
            c();
            i = false;
            e();
            if(y)
                g.setImageDrawable(a(0x7f0202f0));
            else
                g.setImageDrawable(a(0x7f0202f1));
            F.a();
            l.setVisibility(8);
            o.setVisibility(0);
            a.setVisibility(0);
        }
        if(p != null)
            p.dismiss();
        G.a();
        Log.e("MicroMsg.VideoRecorderUI", "onPause");
        super.onPause();
    }

    protected void onResume()
    {
        o.setVisibility(0);
        a.setVisibility(0);
        if(!C)
        {
            d.a(b, B);
            B = false;
            d();
        }
        C = false;
        Log.e("MicroMsg.VideoRecorderUI", "onResume");
        super.onResume();
    }

    public void onStart()
    {
        super.onStart();
        if(y)
            setRequestedOrientation(1);
        else
            setRequestedOrientation(0);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
    {
        Log.d("MicroMsg.VideoRecorderUI", (new StringBuilder()).append("surfaceChanged for:").append(i1).append(" w:").append(j1).append(" h:").append(k1).toString());
        d.a(b, B);
        B = false;
        C = false;
        d();
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        Log.d("MicroMsg.VideoRecorderUI", "surfaceCreated");
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Log.d("MicroMsg.VideoRecorderUI", "surfaceDestroyed");
        C = true;
        d.a();
    }

    private static VideoRecorderUI A;
    private boolean B;
    private boolean C;
    private MMSkinFactory D;
    private boolean E;
    private MTimerHandler F;
    private MTimerHandler G;
    private SurfaceView a;
    private SurfaceHolder b;
    private String c;
    private SceneVideo d;
    private ProgressDialog e;
    private Button f;
    private ImageButton g;
    private boolean h;
    private boolean i;
    private Button j;
    private Button k;
    private TextView l;
    private TextView m;
    private long n;
    private LinearLayout o;
    private PopupWindow p;
    private TextView q;
    private ImageView r;
    private ImageButton s;
    private ImageView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private int x;
    private boolean y;
    private ImageButton z;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(VideoRecorderUI.a(a) == -1L)
                VideoRecorderUI.a(a, Util.e());
            long l1 = Util.f(VideoRecorderUI.a(a));
            VideoRecorderUI.b(a).setText(Util.b((int)(l1 / 1000L)));
            boolean flag;
            if(l1 <= 30000L && l1 >= 20000L)
            {
                VideoRecorderUI.c(a).setVisibility(0);
                TextView textview = VideoRecorderUI.c(a);
                VideoRecorderUI videorecorderui = a;
                Object aobj[] = new Object[1];
                aobj[0] = Long.valueOf((30000L - l1) / 1000L);
                textview.setText(videorecorderui.getString(0x7f0a032c, aobj));
            } else
            {
                VideoRecorderUI.c(a).setVisibility(8);
            }
            if(l1 >= 30000L)
            {
                Log.e("MicroMsg.VideoRecorderUI", "record stop on countdown");
                VideoRecorderUI.d(a).setImageDrawable(a.a(0x7f020254));
                com.tencent.mm.ui.video.VideoRecorderUI.e(a);
                VideoRecorderUI.a(a, -1L);
                flag = false;
            } else
            {
                VideoRecorderUI.a(a, VideoRecorderUI.f(a) % 2);
                if(VideoRecorderUI.f(a) == 0)
                    VideoRecorderUI.d(a).setImageDrawable(a.a(0x7f020254));
                else
                    VideoRecorderUI.d(a).setImageDrawable(a.a(0x7f020255));
                VideoRecorderUI.g(a);
                flag = true;
            }
            return flag;
        }

        private VideoRecorderUI a;

        _cls1()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls12
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(VideoRecorderUI.B(a) != null)
                VideoRecorderUI.B(a).dismiss();
            return false;
        }

        private VideoRecorderUI a;

        _cls12()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            a.finish();
        }

        private VideoRecorderUI a;

        _cls8()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls9
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
        }

        private VideoRecorderUI a;

        _cls9()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls10
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            Log.d("MicroMsg.VideoRecorderUI", "tipDialog onCancel");
            if(VideoRecorderUI.m(a) != null)
            {
                VideoRecorderUI.m(a).l();
                VideoRecorderUI.u(a);
                VideoRecorderUI.v(a).setVisibility(0);
                VideoRecorderUI.w(a).setVisibility(0);
            }
        }

        private VideoRecorderUI a;

        _cls10()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls11
        implements com.tencent.mm.modelvideo.SceneVideo.OnProgressListener
    {

        public final void a(int i1)
        {
            Log.e("MicroMsg.VideoRecorderUI", (new StringBuilder()).append("pack progress: ").append(i1).toString());
            if(i1 != -1) goto _L2; else goto _L1
_L1:
            if(VideoRecorderUI.x(a) != null)
            {
                VideoRecorderUI.x(a).dismiss();
                VideoRecorderUI.y(a);
            }
            Toast.makeText(a, a.getString(0x7f0a032b), 0).show();
            VideoRecorderUI.u(a);
_L4:
            return;
_L2:
            if(i1 <= 100 && VideoRecorderUI.x(a) != null)
            {
                ProgressDialog progressdialog = VideoRecorderUI.x(a);
                VideoRecorderUI videorecorderui1 = a;
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(i1);
                progressdialog.setMessage(videorecorderui1.getString(0x7f0a0326, aobj1));
            }
            if(i1 >= 100)
            {
                if(VideoRecorderUI.x(a) != null)
                {
                    VideoRecorderUI.x(a).dismiss();
                    VideoRecorderUI.y(a);
                }
                VideoRecorderUI.z(a).setVisibility(0);
                VideoRecorderUI.n(a).setVisibility(0);
                VideoRecorderUI.n(a).setEnabled(true);
                VideoRecorderUI.A(a).setVisibility(8);
                VideoRecorderUI.c(a).setVisibility(8);
                if(VideoRecorderUI.B(a) == null)
                {
                    View view = View.inflate(a, 0x7f0300fa, null);
                    int j1 = b.a.e.a(a, 240F);
                    VideoRecorderUI.a(a, new PopupWindow(view, j1, j1));
                    VideoRecorderUI.a(a, (TextView)view.findViewById(0x7f0702a5));
                }
                TextView textview = VideoRecorderUI.C(a);
                VideoRecorderUI videorecorderui = a;
                Object aobj[] = new Object[1];
                aobj[0] = Util.b(VideoRecorderUI.m(a).f());
                textview.setText(videorecorderui.getString(0x7f0a0327, aobj));
                VideoRecorderUI.D(a).setVisibility(0);
                VideoRecorderUI.D(a).setText(Util.b(VideoRecorderUI.m(a).f()));
                VideoRecorderUI.E(a).setVisibility(0);
                VideoRecorderUI.E(a).setText(Util.b(VideoRecorderUI.m(a).g()));
                VideoRecorderUI.B(a).showAtLocation(a.getWindow().getDecorView(), 17, 0, 0);
                VideoRecorderUI.F(a).a(2000L);
                VideoRecorderUI.v(a).setVisibility(8);
                VideoRecorderUI.G(a).setVisibility(0);
                VideoRecorderUI.d(a).setVisibility(8);
                VideoRecorderUI.b(a).setVisibility(8);
                VideoRecorderUI.H(a).setEnabled(true);
                VideoRecorderUI.I(a).setEnabled(true);
                VideoRecorderUI.k(a).setEnabled(true);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private VideoRecorderUI a;

        _cls11()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    if(VideoRecorderUI.j(a.a))
                        VideoRecorderUI.k(a.a).setImageDrawable(a.a.a(0x7f0202ee));
                    else
                        VideoRecorderUI.k(a.a).setImageDrawable(a.a.a(0x7f0202ef));
                    VideoRecorderUI.l(a.a);
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            class _cls2
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                }

                private _cls2 a;

                _cls2()
                {
                    a = _cls2.this;
                    super();
                }
            }

            if(!MMCore.f().c())
                com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
            else
            if(VideoRecorderUI.h(a))
                com.tencent.mm.ui.video.VideoRecorderUI.e(a);
            else
            if(VideoRecorderUI.i(a))
            {
                MMAlert.a(a, a.getString(0x7f0a0328), a.getString(0x7f0a0010), new _cls1(), new _cls2());
            } else
            {
                if(VideoRecorderUI.j(a))
                    VideoRecorderUI.k(a).setImageDrawable(a.a(0x7f0202ee));
                else
                    VideoRecorderUI.k(a).setImageDrawable(a.a(0x7f0202ef));
                VideoRecorderUI.l(a);
            }
        }

        final VideoRecorderUI a;

        _cls2()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s1 = VideoRecorderUI.m(a).i();
            if(Util.i(s1))
            {
                Toast.makeText(a, a.getString(0x7f0a0323), 1).show();
            } else
            {
                VideoRecorderUI videorecorderui = a;
                VideoRecorderUI videorecorderui1 = a;
                Object aobj[] = new Object[1];
                aobj[0] = s1;
                Toast.makeText(videorecorderui, videorecorderui1.getString(0x7f0a0322, aobj), 1).show();
            }
            VideoRecorderUI.n(a).setEnabled(false);
        }

        private VideoRecorderUI a;

        _cls3()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            VideoRecorderUI.o(a);
        }

        private VideoRecorderUI a;

        _cls4()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(VideoRecorderUI.p(a))
            {
                Intent intent = new Intent();
                intent.putExtra("VideoRecorder_FileName", VideoRecorderUI.m(a).h());
                intent.putExtra("VideoRecorder_VideoLength", VideoRecorderUI.m(a).g());
                a.setResult(-1, intent);
                a.finish();
            } else
            if(VideoRecorderUI.q(a).equals("medianote") && (0x4000 & ConfigStorageLogic.d()) == 0)
            {
                VideoRecorderUI.m(a).e();
                a.finish();
            } else
            {
                VideoRecorderUI.m(a).d();
                ChattingUI.e = true;
                a.finish();
            }
        }

        private VideoRecorderUI a;

        _cls5()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            VideoRecorderUI.r(a);
            VideoRecorderUI.m(a).a(VideoRecorderUI.s(a), VideoRecorderUI.t(a));
        }

        private VideoRecorderUI a;

        _cls6()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/video/VideoRecorderPreviewUI);
            intent.putExtra("VideoRecorder_FileName", VideoRecorderUI.m(a).h());
            intent.putExtra("VideoRecorder_VideoLength", VideoRecorderUI.m(a).g());
            intent.putExtra("VideoRecorder_VideoSize", VideoRecorderUI.m(a).f());
            intent.putExtra("VideoRecorder_ToUser", VideoRecorderUI.q(a));
            if(VideoRecorderUI.p(a))
            {
                intent.putExtra("VideoRecorder_NeedResult", VideoRecorderUI.p(a));
                a.startActivityForResult(intent, 0);
            } else
            {
                a.startActivity(intent);
            }
            VideoRecorderUI.u(a);
        }

        private VideoRecorderUI a;

        _cls7()
        {
            a = VideoRecorderUI.this;
            super();
        }
    }

}

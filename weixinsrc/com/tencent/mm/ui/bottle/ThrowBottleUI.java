// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.media.ToneGenerator;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import b.a.e;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.ui.MMAlert;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleBeachUI, ThrowBottleAnimUI

public class ThrowBottleUI extends FrameLayout
    implements android.view.View.OnClickListener, com.tencent.mm.modelbottle.SceneBottle.IOnFinishListener
{

    public ThrowBottleUI(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = -1L;
        k = new Handler();
        t = false;
        u = true;
        w = new _cls3();
        c = (BottleBeachUI)context;
    }

    static long a(ThrowBottleUI throwbottleui, long l1)
    {
        throwbottleui.f = l1;
        return l1;
    }

    static Button a(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.p;
    }

    static Toast a(ThrowBottleUI throwbottleui, Toast toast)
    {
        throwbottleui.g = toast;
        return toast;
    }

    private void a(boolean flag)
    {
        if(flag)
            ((InputMethodManager)c.getSystemService("input_method")).showSoftInput(o, 0);
        else
            ((InputMethodManager)c.getSystemService("input_method")).hideSoftInputFromWindow(o.getWindowToken(), 2);
    }

    static boolean a(ThrowBottleUI throwbottleui, boolean flag)
    {
        throwbottleui.t = flag;
        return flag;
    }

    static boolean b(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.t;
    }

    static BottleBeachUI c(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.c;
    }

    static boolean d(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.u;
    }

    static boolean e(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.v;
    }

    static void f(ThrowBottleUI throwbottleui)
    {
        throwbottleui.a(false);
    }

    static int[] f()
    {
        return b;
    }

    static EditText g(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.o;
    }

    static int[] g()
    {
        return a;
    }

    private void h()
    {
        byte byte0 = 8;
        m.setVisibility(byte0);
        ImageView imageview = n;
        byte byte1;
        View view;
        boolean flag;
        ImageButton imagebutton;
        android.graphics.drawable.Drawable drawable;
        Button button;
        int i1;
        if(u)
            byte1 = byte0;
        else
            byte1 = 0;
        imageview.setVisibility(byte1);
        view = (View)o.getParent();
        if(u)
            byte0 = 0;
        view.setVisibility(byte0);
        if(u)
            o.requestFocus();
        if(!u)
            flag = true;
        else
            flag = false;
        u = flag;
        imagebutton = r;
        if(u)
            drawable = c.a(0x7f020058);
        else
            drawable = c.a(0x7f020065);
        imagebutton.setImageDrawable(drawable);
        if(u)
            a(false);
        else
            a(true);
        p = (Button)c.findViewById(0x7f070083);
        button = p;
        if(u)
            i1 = 0x7f0a03d1;
        else
            i1 = 0x7f0a03d0;
        button.setText(i1);
    }

    static void h(ThrowBottleUI throwbottleui)
    {
        throwbottleui.i();
    }

    private void i()
    {
        int k1;
        int l1;
        int i2;
        if(u)
        {
            int j2 = m.getLeft();
            int k2 = m.getTop();
            int l2 = m.getWidth();
            k1 = j2;
            l1 = k2;
            i2 = l2;
        } else
        {
            int i1 = o.getLeft();
            int j1 = o.getTop();
            k1 = i1;
            l1 = j1;
            i2 = 0;
        }
        i = (ThrowBottleAnimUI)c.findViewById(0x7f070064);
        i.a(w);
        i.a(u, k1, l1, i2);
    }

    static void i(ThrowBottleUI throwbottleui)
    {
        throwbottleui.h();
    }

    static ThrowBottleAnimUI j(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.i;
    }

    static com.tencent.mm.modelbottle.SceneBottle.ThrowVoice k(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.d;
    }

    static ImageView l(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.l;
    }

    static long m(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.f;
    }

    static TextView n(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.m;
    }

    static Toast o(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.g;
    }

    static boolean p(ThrowBottleUI throwbottleui)
    {
        throwbottleui.v = true;
        return true;
    }

    static void q(ThrowBottleUI throwbottleui)
    {
        throwbottleui.t = false;
    }

    static ToneGenerator r(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.e;
    }

    static MTimerHandler s(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.x;
    }

    static MTimerHandler t(ThrowBottleUI throwbottleui)
    {
        return throwbottleui.y;
    }

    public final void a()
    {
        d = null;
        g = null;
        if(h != null)
        {
            h.cancel();
            h = null;
        }
        if(i != null)
            i.a();
        i = null;
        j = null;
        c = null;
        if(e != null)
            e.release();
    }

    public final void a(int i1, int j1)
    {
        if(j1 == -2002)
        {
            c.i(0);
            c.h(0x7f0a03e7);
        }
    }

    public final void b()
    {
        e = new ToneGenerator(1, 60);
        h = (Vibrator)c.getSystemService("vibrator");
        l = (ImageView)findViewById(0x7f07007c);
        m = (TextView)findViewById(0x7f07007b);
        m.setVisibility(8);
        n = (ImageView)findViewById(0x7f07007f);
        o = (EditText)findViewById(0x7f07007d);
        s = findViewById(0x7f070080);
        q = (ImageView)c.findViewById(0x7f070066);
        r = (ImageButton)findViewById(0x7f070081);
        r.setOnClickListener(this);
        p = (Button)findViewById(0x7f070083);
        p.setOnTouchListener(new _cls1());
        setOnClickListener(this);
    }

    public final void c()
    {
        e();
    }

    public final boolean d()
    {
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(c, 1);
        } else
        {
            Log.e("MM.Bottle.ThrowBottleUI", "record start");
            if(d != null)
            {
                d.a();
                d = null;
            }
            d = new com.tencent.mm.modelbottle.SceneBottle.ThrowVoice(this);
            x.a(100L);
            l.setVisibility(0);
            m.setVisibility(0);
            j = (AnimationDrawable)m.getBackground();
            j.start();
            n.setVisibility(8);
            if(d != null)
            {
                MMEntryLock.a("keep_app_silent");
                d.d();
                v = false;
                y.a(200L);
                e.startTone(24);
                k.postDelayed(new _cls6(), 200L);
                h.vibrate(50L);
                d.a(A);
            }
            c.getWindow().getDecorView().setKeepScreenOn(true);
        }
        return false;
    }

    public final boolean e()
    {
        Log.d("MM.Bottle.ThrowBottleUI", "bottle record stop");
        c.getWindow().getDecorView().setKeepScreenOn(false);
        if(j != null)
            j.stop();
        boolean flag;
        if(d != null)
        {
            flag = d.c();
            x.a();
            y.a();
            f = -1L;
        } else
        {
            flag = false;
        }
        if(!flag)
        {
            p.setEnabled(false);
            p.setBackgroundDrawable(c.a(0x7f0202f9));
            l.setVisibility(8);
            z.sendEmptyMessageDelayed(0, 500L);
            m.setBackgroundDrawable(c.a(0x7f04000d));
            m.setWidth(b.a.e.a(c, 120F));
            if(MMCore.f().c())
                c.h(0x7f0a03d3);
        } else
        {
            i();
        }
        return false;
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131165313 2131165313: default 24
    //                   2131165313 33;
           goto _L1 _L2
_L1:
        c.i(0);
_L4:
        return;
_L2:
        if(!u && o.getText().toString().trim().length() > 0)
            MMAlert.a(c, getResources().getString(0x7f0a03dd), null, getResources().getString(0x7f0a03de), new _cls2(), null);
        else
            h();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void setVisibility(int i1)
    {
        q.setVisibility(8);
        if(i1 == 0)
        {
            u = true;
            l.setVisibility(8);
            m.setVisibility(8);
            m.setWidth(b.a.e.a(c, 120F));
            n.setVisibility(0);
            ((View)o.getParent()).setVisibility(8);
            o.setText("");
            s.setVisibility(0);
            r.setImageDrawable(c.a(0x7f020058));
            p.setBackgroundDrawable(c.a(0x7f0202fa));
            Button button = p;
            int j1;
            if(u)
                j1 = 0x7f0a03d1;
            else
                j1 = 0x7f0a03d0;
            button.setText(j1);
            ((LinearLayout)c.findViewById(0x7f07007a)).setVisibility(0);
            c.getWindow().clearFlags(1024);
        } else
        {
            c.getWindow().setFlags(1024, 1024);
        }
        super.setVisibility(i1);
    }

    private static final int a[];
    private static final int b[];
    private final com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener A = new _cls8();
    private BottleBeachUI c;
    private com.tencent.mm.modelbottle.SceneBottle.ThrowVoice d;
    private ToneGenerator e;
    private long f;
    private Toast g;
    private Vibrator h;
    private ThrowBottleAnimUI i;
    private AnimationDrawable j;
    private Handler k;
    private ImageView l;
    private TextView m;
    private ImageView n;
    private EditText o;
    private Button p;
    private ImageView q;
    private ImageButton r;
    private View s;
    private boolean t;
    private boolean u;
    private boolean v;
    private ThrowBottleAnimUI.OnThrowAnimEndListener w;
    private final MTimerHandler x = new MTimerHandler(new _cls4(), true);
    private final MTimerHandler y = new MTimerHandler(new _cls5(), true);
    private final Handler z = new _cls7();

    static 
    {
        int ai[] = new int[12];
        ai[0] = 0;
        ai[1] = 9;
        ai[2] = 18;
        ai[3] = 27;
        ai[4] = 37;
        ai[5] = 46;
        ai[6] = 55;
        ai[7] = 64;
        ai[8] = 74;
        ai[9] = 85;
        ai[10] = 93;
        ai[11] = 100;
        a = ai;
        int ai1[] = new int[11];
        ai1[0] = 0x7f020007;
        ai1[1] = 0x7f02000a;
        ai1[2] = 0x7f02000b;
        ai1[3] = 0x7f02000c;
        ai1[4] = 0x7f02000d;
        ai1[5] = 0x7f02000e;
        ai1[6] = 0x7f02000f;
        ai1[7] = 0x7f020010;
        ai1[8] = 0x7f020011;
        ai1[9] = 0x7f020008;
        ai1[10] = 0x7f020009;
        b = ai1;
    }

    private class _cls3
        implements ThrowBottleAnimUI.OnThrowAnimEndListener
    {

        public final void a()
        {
            ThrowBottleUI.j(a).setVisibility(8);
            ThrowBottleUI.c(a).i(0);
        }

        private ThrowBottleUI a;

        _cls3()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }


    private class _cls4
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            int i1 = ThrowBottleUI.k(a).h();
            int j1 = 0;
            do
            {
label0:
                {
                    if(j1 < ThrowBottleUI.f().length)
                    {
                        if(i1 < ThrowBottleUI.g()[j1] || i1 >= ThrowBottleUI.g()[j1 + 1])
                            break label0;
                        ThrowBottleUI.l(a).setBackgroundDrawable(ThrowBottleUI.c(a).a(ThrowBottleUI.f()[j1]));
                    }
                    return true;
                }
                j1++;
            } while(true);
        }

        private ThrowBottleUI a;

        _cls4()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }


    private class _cls5
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag = false;
            if(ThrowBottleUI.m(b) == -1L)
                ThrowBottleUI.a(b, Util.e());
            if(a % 3 == 2)
                ThrowBottleUI.n(b).setWidth(1 + ThrowBottleUI.n(b).getWidth());
            a = 1 + a;
            a = a % 3;
            long l1 = Util.f(ThrowBottleUI.m(b));
            if(l1 >= 50000L && l1 <= 60000L)
            {
                if(ThrowBottleUI.o(b) == null)
                {
                    ThrowBottleUI throwbottleui = b;
                    BottleBeachUI bottlebeachui1 = ThrowBottleUI.c(b);
                    BottleBeachUI bottlebeachui2 = ThrowBottleUI.c(b);
                    Object aobj1[] = new Object[1];
                    aobj1[flag] = Integer.valueOf((int)((60000L - l1) / 1000L));
                    ThrowBottleUI.a(throwbottleui, Toast.makeText(bottlebeachui1, bottlebeachui2.getString(0x7f0a0153, aobj1), flag));
                } else
                {
                    Toast toast = ThrowBottleUI.o(b);
                    BottleBeachUI bottlebeachui = ThrowBottleUI.c(b);
                    Object aobj[] = new Object[1];
                    aobj[flag] = Integer.valueOf((int)((60000L - l1) / 1000L));
                    toast.setText(bottlebeachui.getString(0x7f0a0153, aobj));
                }
                ThrowBottleUI.o(b).show();
            }
            if(l1 >= 60000L)
            {
                Log.e("MM.Bottle.ThrowBottleUI", "bottle record stop on countdown");
                ThrowBottleUI.p(b);
                b.e();
                ThrowBottleUI.q(b);
                Util.a(ThrowBottleUI.c(b), 0x7f0a000b);
            } else
            {
                flag = true;
            }
            return flag;
        }

        private int a;
        private ThrowBottleUI b;

        _cls5()
        {
            b = ThrowBottleUI.this;
            super();
            a = 0;
        }
    }


    private class _cls7 extends Handler
    {

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            ThrowBottleUI.a(a).setBackgroundDrawable(ThrowBottleUI.c(a).a(0x7f0202fa));
            ThrowBottleUI.a(a).setEnabled(true);
        }

        private ThrowBottleUI a;

        _cls7()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }


    private class _cls8
        implements com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener
    {

        public final void a()
        {
            ThrowBottleUI.k(a).e();
            ThrowBottleUI.s(a).a();
            ThrowBottleUI.t(a).a();
            MMEntryLock.b("keep_app_silent");
            ThrowBottleUI.q(a);
            Log.e("MM.Bottle.ThrowBottleUI", "bottle record stop on error");
            Toast.makeText(ThrowBottleUI.c(a), ThrowBottleUI.c(a).getString(0x7f0a0154), 0).show();
        }

        private ThrowBottleUI a;

        _cls8()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            int i1 = 0x7f0a03d0;
            if(view == ThrowBottleUI.a(a)) goto _L2; else goto _L1
_L1:
            return false;
_L2:
            switch(motionevent.getAction())
            {
            case 0: // '\0'
                if(!ThrowBottleUI.b(a))
                {
                    ThrowBottleUI.a(a, true);
                    ThrowBottleUI.a(a).setBackgroundDrawable(ThrowBottleUI.c(a).a(0x7f0202fb));
                    Button button1 = ThrowBottleUI.a(a);
                    if(ThrowBottleUI.d(a))
                        i1 = 0x7f0a03d2;
                    button1.setText(i1);
                    if(ThrowBottleUI.d(a))
                        a.d();
                }
                break;

            case 1: // '\001'
                ThrowBottleUI.a(a, false);
                ThrowBottleUI.a(a).setBackgroundDrawable(ThrowBottleUI.c(a).a(0x7f0202fa));
                Button button = ThrowBottleUI.a(a);
                if(ThrowBottleUI.d(a))
                    i1 = 0x7f0a03d1;
                button.setText(i1);
                if(ThrowBottleUI.d(a))
                {
                    if(!com.tencent.mm.ui.bottle.ThrowBottleUI.e(a))
                        a.e();
                } else
                {
                    ThrowBottleUI.f(a);
                    String s1 = ThrowBottleUI.g(a).getText().toString().trim();
                    if(s1.length() < 5)
                    {
                        ThrowBottleUI.c(a).h(0x7f0a03cf);
                    } else
                    {
                        ThrowBottleUI.g(a).setText("");
                        new com.tencent.mm.modelbottle.SceneBottle.ThrowText(s1, a);
                        ThrowBottleUI.h(a);
                    }
                }
                break;
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ThrowBottleUI a;

        _cls1()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }


    private class _cls6
        implements Runnable
    {

        public void run()
        {
            ThrowBottleUI.r(a).stopTone();
        }

        private ThrowBottleUI a;

        _cls6()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            if(i1 == 0)
            {
                ThrowBottleUI.g(a).setText("");
                ThrowBottleUI.i(a);
            }
        }

        private ThrowBottleUI a;

        _cls2()
        {
            a = ThrowBottleUI.this;
            super();
        }
    }

}

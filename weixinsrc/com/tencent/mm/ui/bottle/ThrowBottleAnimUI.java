// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.animation.*;
import android.widget.FrameLayout;
import android.widget.TextView;
import b.a.e;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleBeachUI, BottleImageView, SprayLayout

public class ThrowBottleAnimUI extends FrameLayout
{

    public ThrowBottleAnimUI(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        o = new _cls3();
        a = (BottleBeachUI)context;
        b();
    }

    public ThrowBottleAnimUI(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        o = new _cls3();
        a = (BottleBeachUI)context;
        b();
    }

    static TextView a(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.d;
    }

    static SprayLayout a(ThrowBottleAnimUI throwbottleanimui, SprayLayout spraylayout)
    {
        throwbottleanimui.b = spraylayout;
        return spraylayout;
    }

    private void b()
    {
        inflate(a, 0x7f030022, this);
        c = (BottleImageView)findViewById(0x7f070085);
        d = (TextView)findViewById(0x7f070086);
        DisplayMetrics displaymetrics = a.getResources().getDisplayMetrics();
        h = displaymetrics.widthPixels;
        i = displaymetrics.heightPixels;
    }

    static void b(ThrowBottleAnimUI throwbottleanimui)
    {
        throwbottleanimui.d();
    }

    static BottleImageView c(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.c;
    }

    private void c()
    {
        c.setImageDrawable(null);
        int i1 = c.getBackground().getIntrinsicWidth();
        int j1 = c.getBackground().getIntrinsicHeight();
        c.setVisibility(0);
        int k1 = b.a.e.a(a, 40F);
        c.setLayoutParams(new android.widget.AbsoluteLayout.LayoutParams(-2, -2, h - (i1 + k1), i - (j1 + k1)));
    }

    static SprayLayout d(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.b;
    }

    private void d()
    {
        int i1 = c.getBackground().getIntrinsicWidth();
        int j1 = c.getBackground().getIntrinsicHeight();
        c.setVisibility(0);
        int k1 = b.a.e.a(a, 40F);
        Drawable drawable;
        if(Util.a())
            drawable = a.a(0x7f020039);
        else
            drawable = a.a(0x7f02003a);
        setBackgroundDrawable(drawable);
        if(n)
            c.setImageDrawable(a.a(0x7f020062));
        else
            c.setImageDrawable(a.a(0x7f020061));
        c.setLayoutParams(new android.widget.AbsoluteLayout.LayoutParams(-2, -2, 0, 0));
        c.a(h - (i1 + k1), f - i1 / 2, i - (k1 + j1), g - j1 / 2, new _cls2());
    }

    static BottleBeachUI e(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.a;
    }

    private void e()
    {
        f = h / 2;
        g = (460 * i) / 800;
        Log.e("MicroMsg.ThrowBottleAnimView", (new StringBuilder()).append("to (").append(f).append(",").append(g).append(")  bottle (").append(c.getDrawable().getIntrinsicWidth()).append(",").append(c.getDrawable().getIntrinsicHeight()).append(")").toString());
    }

    static int f(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.f;
    }

    static int g(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.g;
    }

    static Handler h(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.o;
    }

    static OnThrowAnimEndListener i(ThrowBottleAnimUI throwbottleanimui)
    {
        return throwbottleanimui.m;
    }

    public final void a()
    {
        a = null;
        e = null;
        b = null;
        if(c != null)
            c.a();
        c = null;
        m = null;
    }

    public final void a(OnThrowAnimEndListener onthrowanimendlistener)
    {
        m = onthrowanimendlistener;
    }

    public final void a(boolean flag)
    {
        n = flag;
        setVisibility(0);
        a.b();
        a.i(-1);
        e();
        c();
        d();
    }

    public final void a(boolean flag, int i1, int j1, int k1)
    {
        n = flag;
        j = i1;
        k = j1;
        l = k1;
        setVisibility(0);
        a.b();
        a.i(-1);
        e();
        c();
        d.setVisibility(0);
        float f1;
        int l1;
        ScaleAnimation scaleanimation;
        RotateAnimation rotateanimation;
        int i2;
        int j2;
        int k2;
        TranslateAnimation translateanimation;
        if(n)
        {
            d.setBackgroundDrawable(a.a(0x7f02023c));
            d.setWidth(l);
            f1 = 1F;
            l1 = 120;
        } else
        {
            d.setBackgroundDrawable(a.a(0x7f020057));
            f1 = 0.5F;
            l1 = 25;
        }
        e = new AnimationSet(true);
        e.setInterpolator(a, 0x10a0006);
        scaleanimation = new ScaleAnimation(1F, 0F, 1F, 0F, 1, 0F, 1, 0F);
        scaleanimation.setDuration(700L);
        rotateanimation = new RotateAnimation(0F, l1, 1, f1, 1, 1F);
        rotateanimation.setDuration(700L);
        i2 = c.getBackground().getIntrinsicWidth() / 2;
        j2 = c.getBackground().getIntrinsicHeight() / 2;
        k2 = b.a.e.a(a, 40F);
        Log.e("MicroMsg.ThrowBottleAnimView", (new StringBuilder()).append("tran from (").append(j).append(",").append(k).append(")").append(" to (").append(h - k2 - i2).append(" , ").append(i - k2 - j2).toString());
        translateanimation = new TranslateAnimation(j, h - k2 - i2, k, i - k2 - j2);
        translateanimation.setDuration(700L);
        e.addAnimation(rotateanimation);
        e.addAnimation(scaleanimation);
        e.addAnimation(translateanimation);
        e.setAnimationListener(new _cls1());
        d.startAnimation(e);
    }

    public boolean isInEditMode()
    {
        return false;
    }

    private BottleBeachUI a;
    private SprayLayout b;
    private BottleImageView c;
    private TextView d;
    private AnimationSet e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private OnThrowAnimEndListener m;
    private boolean n;
    private Handler o;

    private class _cls3 extends Handler
    {

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            if(ThrowBottleAnimUI.d(a) == null && com.tencent.mm.ui.bottle.ThrowBottleAnimUI.e(a) != null)
                ThrowBottleAnimUI.a(a, (SprayLayout)com.tencent.mm.ui.bottle.ThrowBottleAnimUI.e(a).findViewById(0x7f070067));
            if(ThrowBottleAnimUI.d(a) != null)
                ThrowBottleAnimUI.d(a).a();
            if(ThrowBottleAnimUI.i(a) != null)
                ThrowBottleAnimUI.i(a).a();
        }

        private ThrowBottleAnimUI a;

        _cls3()
        {
            a = ThrowBottleAnimUI.this;
            super();
        }

        private class OnThrowAnimEndListener
        {

            public abstract void a();
        }

    }


    private class _cls2
        implements android.view.animation.Animation.AnimationListener
    {

        public void onAnimationEnd(Animation animation)
        {
            ThrowBottleAnimUI.c(a).setVisibility(8);
            if(ThrowBottleAnimUI.d(a) == null)
                ThrowBottleAnimUI.a(a, (SprayLayout)com.tencent.mm.ui.bottle.ThrowBottleAnimUI.e(a).findViewById(0x7f070067));
            ThrowBottleAnimUI.d(a).a(1, ThrowBottleAnimUI.f(a), ThrowBottleAnimUI.g(a));
            ThrowBottleAnimUI.h(a).sendEmptyMessageDelayed(0, 2000L);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

        private ThrowBottleAnimUI a;

        _cls2()
        {
            a = ThrowBottleAnimUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.animation.Animation.AnimationListener
    {

        public void onAnimationEnd(Animation animation)
        {
            ThrowBottleAnimUI.a(a).setVisibility(8);
            ThrowBottleAnimUI.b(a);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

        private ThrowBottleAnimUI a;

        _cls1()
        {
            a = ThrowBottleAnimUI.this;
            super();
        }
    }

}

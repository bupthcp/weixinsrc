// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.animation.*;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.Random;

public class SprayLayout extends FrameLayout
{

    public SprayLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SprayLayout(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        g = new ScaleAnimation(0.6F, 0.8F, 0.6F, 0.8F, 1, 0.5F, 1, 1F);
        h = new AlphaAnimation(0.2F, 1F);
        i = new ScaleAnimation(0.8F, 1.27F, 0.8F, 1.27F, 1, 0.5F, 1, 1F);
        j = new AlphaAnimation(1F, 0.5F);
        k = new ScaleAnimation(0.8F, 1F, 0.8F, 1F, 1, 0.5F, 1, 1F);
        a = new AnimationSet(true);
        b = new AnimationSet(true);
        c = new AnimationSet(true);
        g.setDuration(280L);
        h.setDuration(280L);
        i.setDuration(280L);
        j.setDuration(280L);
        a.addAnimation(g);
        a.addAnimation(h);
        a.setRepeatCount(1);
        a.setDuration(280L);
        b.addAnimation(i);
        b.setRepeatCount(1);
        b.setDuration(280L);
        c.addAnimation(k);
        c.setRepeatCount(1);
        c.setDuration(280L);
        l = 0;
        m = 1;
        o = -1;
        p = -1;
        s = new Handler();
        t = new _cls1();
    }

    static int a(SprayLayout spraylayout)
    {
        return spraylayout.l;
    }

    static int a(SprayLayout spraylayout, int i1)
    {
        spraylayout.l = i1;
        return i1;
    }

    static int b(SprayLayout spraylayout)
    {
        int i1 = spraylayout.n;
        spraylayout.n = i1 + 1;
        return i1;
    }

    static ImageView c(SprayLayout spraylayout)
    {
        return spraylayout.f;
    }

    static void d(SprayLayout spraylayout)
    {
        byte byte0 = -1;
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)spraylayout.getLayoutParams();
        FrameLayout framelayout = (FrameLayout)spraylayout.getParent();
        if(spraylayout.o != byte0 || spraylayout.p != byte0)
        {
            marginlayoutparams.setMargins(spraylayout.o - framelayout.getWidth() / 2, marginlayoutparams.topMargin, marginlayoutparams.rightMargin, framelayout.getHeight() - spraylayout.p);
        } else
        {
            Random random = new Random();
            int i1;
            int j1;
            int k1;
            int l1;
            if(random.nextBoolean())
                i1 = 1;
            else
                i1 = byte0;
            j1 = i1 * random.nextInt(spraylayout.q);
            k1 = (int)Math.sqrt(((spraylayout.q * spraylayout.q - j1 * j1) * spraylayout.r * spraylayout.r) / (spraylayout.q * spraylayout.q));
            if(random.nextBoolean())
                byte0 = 1;
            l1 = byte0 * random.nextInt(Math.max(k1, 1));
            marginlayoutparams.setMargins(j1, marginlayoutparams.topMargin, marginlayoutparams.rightMargin, l1 + (300 * framelayout.getHeight()) / 800);
        }
        spraylayout.setLayoutParams(marginlayoutparams);
    }

    static ImageView e(SprayLayout spraylayout)
    {
        return spraylayout.d;
    }

    static ImageView f(SprayLayout spraylayout)
    {
        return spraylayout.e;
    }

    static int g(SprayLayout spraylayout)
    {
        return spraylayout.n;
    }

    static int h(SprayLayout spraylayout)
    {
        return spraylayout.m;
    }

    static Runnable i(SprayLayout spraylayout)
    {
        return spraylayout.t;
    }

    static Handler j(SprayLayout spraylayout)
    {
        return spraylayout.s;
    }

    static int k(SprayLayout spraylayout)
    {
        int i1 = 1 + spraylayout.l;
        spraylayout.l = i1;
        return i1;
    }

    public final void a()
    {
        s.removeCallbacks(t);
        setVisibility(8);
    }

    public final void a(int i1, int j1, int k1)
    {
        l = 0;
        m = i1;
        n = 0;
        o = j1;
        p = k1;
        if(d == null)
        {
            d = (ImageView)findViewById(0x7f07006a);
            e = (ImageView)findViewById(0x7f070069);
            f = (ImageView)findViewById(0x7f070068);
            DisplayMetrics displaymetrics = getContext().getResources().getDisplayMetrics();
            q = (35 * displaymetrics.widthPixels) / 96;
            r = displaymetrics.heightPixels / 16;
        }
        d.setVisibility(8);
        e.setVisibility(8);
        f.setVisibility(8);
        setVisibility(0);
        s.removeCallbacks(t);
        s.postDelayed(t, 0L);
    }

    AnimationSet a;
    AnimationSet b;
    AnimationSet c;
    private ImageView d;
    private ImageView e;
    private ImageView f;
    private Animation g;
    private Animation h;
    private Animation i;
    private Animation j;
    private Animation k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private Handler s;
    private Runnable t;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            if(SprayLayout.a(a) == 0)
            {
                SprayLayout.b(a);
                SprayLayout.c(a).clearAnimation();
                SprayLayout.c(a).setVisibility(8);
                SprayLayout.d(a);
            } else
            if(SprayLayout.a(a) == 1)
            {
                SprayLayout.e(a).startAnimation(a.a);
                SprayLayout.e(a).setVisibility(0);
                SprayLayout.f(a).setVisibility(8);
                SprayLayout.c(a).setVisibility(8);
            } else
            if(SprayLayout.a(a) == 2)
            {
                SprayLayout.e(a).startAnimation(a.b);
                SprayLayout.f(a).startAnimation(a.a);
                SprayLayout.f(a).setVisibility(0);
            } else
            if(SprayLayout.a(a) == 3)
            {
                SprayLayout.e(a).clearAnimation();
                SprayLayout.e(a).setVisibility(8);
                SprayLayout.f(a).startAnimation(a.b);
                SprayLayout.c(a).startAnimation(a.a);
                SprayLayout.c(a).setVisibility(0);
            } else
            if(SprayLayout.a(a) == 4)
            {
                SprayLayout.c(a).startAnimation(a.c);
                SprayLayout.f(a).clearAnimation();
                SprayLayout.f(a).setVisibility(8);
            }
            if(SprayLayout.g(a) > SprayLayout.h(a))
            {
                a.a();
            } else
            {
                SprayLayout.j(a).postDelayed(SprayLayout.i(a), 280L);
                SprayLayout.a(a, SprayLayout.k(a) % 5);
            }
        }

        private SprayLayout a;

        _cls1()
        {
            a = SprayLayout.this;
            super();
        }
    }

}

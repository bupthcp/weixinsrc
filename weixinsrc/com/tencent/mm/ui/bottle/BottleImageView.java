// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.widget.ImageView;

public class BottleImageView extends ImageView
{

    public BottleImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        h = new _cls1();
        g = context;
        b();
    }

    public BottleImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        h = new _cls1();
        g = context;
        b();
    }

    static int a(BottleImageView bottleimageview)
    {
        return bottleimageview.e;
    }

    static int b(BottleImageView bottleimageview)
    {
        return bottleimageview.f;
    }

    private void b()
    {
        Drawable drawable = getBackground();
        if(drawable != null)
        {
            e = drawable.getIntrinsicWidth();
            f = drawable.getIntrinsicHeight();
        }
    }

    static int c(BottleImageView bottleimageview)
    {
        return bottleimageview.a;
    }

    static int d(BottleImageView bottleimageview)
    {
        return bottleimageview.b;
    }

    static int e(BottleImageView bottleimageview)
    {
        return bottleimageview.c;
    }

    static int f(BottleImageView bottleimageview)
    {
        return bottleimageview.d;
    }

    static Context g(BottleImageView bottleimageview)
    {
        return bottleimageview.g;
    }

    public final void a()
    {
        g = null;
        h = null;
    }

    public final void a(int i, int j, int k, int l, android.view.animation.Animation.AnimationListener animationlistener)
    {
        a = i;
        b = j;
        c = k;
        d = l;
        h.setAnimationListener(animationlistener);
        h.setDuration(2000L);
        h.setRepeatCount(0);
        h.setStartOffset(500L);
        h.setInterpolator(g, 0x10a0006);
        startAnimation(h);
    }

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private Context g;
    private Animation h;

    private class _cls1 extends Animation
    {

        protected void applyTransformation(float f1, Transformation transformation)
        {
            if(a == -1F)
            {
                a = BottleImageView.c(q);
                b = BottleImageView.d(q);
                i = com.tencent.mm.ui.bottle.BottleImageView.e(q);
                j = BottleImageView.f(q);
                c = a + (b - a) / 5F;
                d = a + (3F * (b - a)) / 5F;
                e = (((c - a) / (b - a)) * (j - i) + i) - (float)b.a.e.a(BottleImageView.g(q), 67F);
                f = (((d - a) / (b - a)) * (j - i) + i) - (float)b.a.e.a(BottleImageView.g(q), 53F);
            }
            transformation.setAlpha(o + f1 * (p - o));
            float f2 = k + f1 * (l - k);
            transformation.getMatrix().setScale(f2, f2, BottleImageView.a(q) / 2, BottleImageView.b(q) / 2);
            float f3 = m + f1 * (n - m);
            transformation.getMatrix().postRotate(f3, BottleImageView.a(q) / 2, BottleImageView.b(q) / 2);
            float f4 = a + f1 * (b - a);
            float f5;
            if(f4 >= c)
                f5 = ((f4 - a) / (c - a)) * (e - i) + i;
            else
            if(f4 >= d)
            {
                if(!h)
                {
                    h = true;
                    e = g;
                }
                f5 = ((f4 - c) / (d - c)) * (f - e) + e;
            } else
            {
                f5 = ((f4 - d) / (b - d)) * (j - f) + f;
            }
            g = f5;
            transformation.getMatrix().postTranslate(f4, f5);
            if(f1 == 1F)
            {
                a = -1F;
                b = -1F;
                i = -1F;
                j = -1F;
                h = false;
            }
        }

        private float a;
        private float b;
        private float c;
        private float d;
        private float e;
        private float f;
        private float g;
        private boolean h;
        private float i;
        private float j;
        private float k;
        private float l;
        private float m;
        private float n;
        private float o;
        private float p;
        private BottleImageView q;

        _cls1()
        {
            q = BottleImageView.this;
            super();
            a = -1F;
            b = -1F;
            h = false;
            i = -1F;
            j = -1F;
            k = 1F;
            l = 0.1F;
            m = 0F;
            n = -850F;
            o = 1F;
            p = 0.3F;
        }
    }

}

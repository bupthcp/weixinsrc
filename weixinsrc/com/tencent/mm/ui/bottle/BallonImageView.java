// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.widget.ImageView;
import b.a.r;

public class BallonImageView extends ImageView
{

    public BallonImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new _cls1();
        a.setRepeatCount(-1);
        a.setDuration(15000L);
        a.setFillAfter(true);
    }

    public BallonImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new _cls1();
        a.setRepeatCount(-1);
        a.setDuration(15000L);
        a.setFillAfter(true);
    }

    public void setVisibility(int i)
    {
        if(i == 0)
            setAnimation(a);
        else
            r.a(this, a);
        super.setVisibility(i);
    }

    private Animation a;

    private class _cls1 extends Animation
    {

        private static float a(float f1, float f2)
        {
            return f1 + (float)Math.random() * (f2 - f1);
        }

        private void a()
        {
            i = c * (float)a;
            j = d * (float)a;
            k = e * (float)b;
            l = f * (float)b;
        }

        protected void applyTransformation(float f1, Transformation transformation)
        {
            float f2 = i;
            float f3 = k;
            if(i != j)
                f2 = i + f1 * (j - i);
            if(k != l)
                f3 = k + f1 * (l - k);
            transformation.getMatrix().setTranslate(f2, f3);
            float f4 = g + f1 * (h - g);
            transformation.getMatrix().postScale(f4, f4);
            if(f1 == 1F)
            {
                c = d;
                e = f;
                d = a(0.1F, 0.8F);
                f = a(0.1F, 0.3F);
                g = h;
                h = a(0.7F, 1F);
                a();
            }
        }

        public void initialize(int i1, int j1, int k1, int l1)
        {
            super.initialize(i1, j1, k1, l1);
            a = k1;
            b = l1;
            a();
        }

        private int a;
        private int b;
        private float c;
        private float d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private float k;
        private float l;
        private BallonImageView m;

        _cls1()
        {
            m = BallonImageView.this;
            super();
            c = 0.1F;
            d = a(0.1F, 0.8F);
            e = 0.1F;
            f = a(0.1F, 0.3F);
            g = 1F;
            h = a(0.7F, 1F);
        }
    }

}

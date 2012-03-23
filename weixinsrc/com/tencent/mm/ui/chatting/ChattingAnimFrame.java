// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.mm.ui.EmojiManager;
import java.util.*;

public class ChattingAnimFrame extends FrameLayout
{

    public ChattingAnimFrame(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
    }

    static float a(float f, float f1)
    {
        return f + (float)Math.random() * (f1 - f);
    }

    private void a()
    {
        View view;
        for(Iterator iterator = a.iterator(); iterator.hasNext(); removeView(view))
        {
            view = (View)iterator.next();
            view.clearAnimation();
        }

    }

    private void a(SpannableString spannablestring, Animation animation)
    {
        TextView textview = new TextView(getContext());
        textview.setSingleLine();
        textview.setText(spannablestring);
        textview.setAnimation(animation);
        textview.setTag(animation);
        addView(textview);
        if(animation instanceof MMAnimation)
            ((MMAnimation)animation).a = textview;
        a.add(textview);
    }

    public final void a(Activity activity)
    {
        a();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        setVisibility(0);
        for(int i = 0; i < 15; i++)
        {
            FlyingPeachesAnim flyingpeachesanim = new FlyingPeachesAnim(displaymetrics.widthPixels, displaymetrics.heightPixels);
            ImageSpan imagespan = new ImageSpan(EmojiManager.a(activity, 47), 1);
            SpannableString spannablestring = new SpannableString("  ");
            spannablestring.setSpan(imagespan, 0, 1, 33);
            a(spannablestring, ((Animation) (flyingpeachesanim)));
        }

    }

    public final void b(Activity activity)
    {
        a();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        for(int i = 0; i < 15; i++)
        {
            SwimmingFishAnim swimmingfishanim = new SwimmingFishAnim(displaymetrics.widthPixels, displaymetrics.heightPixels);
            ImageSpan imagespan = new ImageSpan(EmojiManager.a(activity, 449), 1);
            SpannableString spannablestring = new SpannableString("  ");
            spannablestring.setSpan(imagespan, 0, 1, 33);
            a(spannablestring, swimmingfishanim);
        }

    }

    public final void c(Activity activity)
    {
        a();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        for(int i = 0; i < 30; i++)
        {
            RainingMoneyAnim rainingmoneyanim = new RainingMoneyAnim(displaymetrics.widthPixels, displaymetrics.heightPixels);
            ImageSpan imagespan = new ImageSpan(EmojiManager.a(activity, 136), 1);
            SpannableString spannablestring = new SpannableString("  ");
            spannablestring.setSpan(imagespan, 0, 1, 33);
            a(spannablestring, rainingmoneyanim);
        }

    }

    public final void d(Activity activity)
    {
        a();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        Animation animation = AnimationUtils.loadAnimation(getContext(), 0x7f04000e);
        String s = "";
        for(int i = 0; i < 15; i++)
            s = (new StringBuilder()).append(s).append("  ").toString();

        SpannableString spannablestring = new SpannableString(s);
        spannablestring.setSpan(new ImageSpan(EmojiManager.a(activity, 392), 1), 0, 1, 33);
        for(int j = 1; j < 14; j++)
            spannablestring.setSpan(new ImageSpan(EmojiManager.a(activity, 178), 1), j * 2, 1 + j * 2, 33);

        animation.setFillAfter(true);
        a(spannablestring, animation);
    }

    List a;

    private class MMAnimation extends Animation
    {

        public final void a()
        {
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    if(a.a != null)
                    {
                        a.a.clearAnimation();
                        ChattingAnimFrame chattinganimframe = a.b;
                        View view = a.a;
                        chattinganimframe.a.remove(view);
                        chattinganimframe.removeView(view);
                    }
                }

                private MMAnimation a;

                _cls1()
                {
                    a = MMAnimation.this;
                    super();
                }
            }

            boolean flag;
            if(a != null)
                flag = true;
            else
                flag = false;
            Assert.assertTrue(flag);
            a.post(new _cls1());
        }

        View a;
        final ChattingAnimFrame b;

        MMAnimation()
        {
            b = ChattingAnimFrame.this;
            super();
        }
    }


    private class FlyingPeachesAnim extends MMAnimation
    {

        private void b()
        {
            if((double)k > 0.01D)
                i = ChattingAnimFrame.a(-0.5F * k, 0F);
            else
            if((double)k < -0.01D)
                i = ChattingAnimFrame.a(0F, -0.5F * k);
            i = ChattingAnimFrame.a(-0.01F, 0.01F);
            k = k + i;
            e = f;
            f = f + k;
            if(f < 0.01F)
            {
                k = 0.6F * Math.abs(k);
                if((double)k > 0.01D)
                    i = ChattingAnimFrame.a(-0.5F * k, 0F);
                else
                    i = ChattingAnimFrame.a(0.005F, 0.01F);
            }
            if(f > 0.9F)
            {
                k = -0.6F * Math.abs(k);
                if((double)k < -0.01D)
                    i = ChattingAnimFrame.a(0F, -0.5F * k);
                else
                    i = ChattingAnimFrame.a(-0.01F, -0.005F);
            }
            if(l > 0.02F)
                j = ChattingAnimFrame.a(-0.02F, 0F);
            else
                j = ChattingAnimFrame.a(0F, 0.02F);
            l = l + j;
            g = h;
            h = h + l;
            if(g > 1.1F)
                a();
            m = e * (float)c;
            n = f * (float)c;
            o = g * (float)d;
            p = h * (float)d;
        }

        protected void applyTransformation(float f1, Transformation transformation)
        {
            float f2 = m;
            float f3 = o;
            if(m != n)
                f2 = m + f1 * (n - m);
            if(o != p)
                f3 = o + f1 * (p - o);
            transformation.getMatrix().setTranslate(f2, f3);
            if(f1 == 1F)
                b();
        }

        public void initialize(int i1, int j1, int k1, int l1)
        {
            super.initialize(i1, j1, k1, l1);
            setRepeatCount(-1);
            setDuration(100L);
        }

        private int c;
        private int d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private float k;
        private float l;
        private float m;
        private float n;
        private float o;
        private float p;
        private ChattingAnimFrame q;

        public FlyingPeachesAnim(int i1, int j1)
        {
            q = ChattingAnimFrame.this;
            super();
            i = 0F;
            j = 1F;
            k = 0F;
            l = 0F;
            c = i1;
            d = j1;
            f = ChattingAnimFrame.a(0.1F, 0.8F);
            h = ChattingAnimFrame.a(-0.6F, 0F);
            b();
        }
    }


    private class SwimmingFishAnim extends MMAnimation
    {

        private void b()
        {
            if((double)k < -0.02D)
                i = ChattingAnimFrame.a(0F, 0.02F);
            else
                i = ChattingAnimFrame.a(-0.02F, 0F);
            k = k + i;
            e = f;
            f = f + k;
            if(l < -0.02F)
                j = ChattingAnimFrame.a(0F, 0.02F);
            else
                j = ChattingAnimFrame.a(-0.02F, 0F);
            l = l + j;
            g = h;
            h = h + l;
            if(g < -0.1F || e < -0.1F)
                a();
            m = e * (float)c;
            n = f * (float)c;
            o = g * (float)d;
            p = h * (float)d;
        }

        protected void applyTransformation(float f1, Transformation transformation)
        {
            float f2 = m;
            float f3 = o;
            if(m != n)
                f2 = m + f1 * (n - m);
            if(o != p)
                f3 = o + f1 * (p - o);
            transformation.getMatrix().setTranslate(f2, f3);
            if(f1 == 1F)
                b();
        }

        public void initialize(int i1, int j1, int k1, int l1)
        {
            super.initialize(i1, j1, k1, l1);
            setRepeatCount(-1);
            setDuration(100L);
        }

        private int c;
        private int d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private float k;
        private float l;
        private float m;
        private float n;
        private float o;
        private float p;
        private ChattingAnimFrame q;

        public SwimmingFishAnim(int i1, int j1)
        {
            q = ChattingAnimFrame.this;
            super();
            k = 0F;
            l = 0F;
            c = i1;
            d = j1;
            f = ChattingAnimFrame.a(1F, 1.8F);
            h = ChattingAnimFrame.a(1F, 1.4F);
            b();
        }
    }


    private class RainingMoneyAnim extends MMAnimation
    {

        private void b()
        {
            if(h > 0F)
                j = j + i;
            g = h;
            h = h + j;
            if(g > 1.1F)
                a();
            k = e * (float)c;
            l = f * (float)c;
            m = g * (float)d;
            n = h * (float)d;
        }

        protected void applyTransformation(float f1, Transformation transformation)
        {
            float f2 = k;
            float f3 = m;
            if(k != l)
                f2 = k + f1 * (l - k);
            if(m != n)
                f3 = m + f1 * (n - m);
            transformation.getMatrix().setTranslate(f2, f3);
            if(f1 == 1F)
                b();
        }

        public void initialize(int i1, int j1, int k1, int l1)
        {
            super.initialize(i1, j1, k1, l1);
            setRepeatCount(-1);
            setDuration(100L);
        }

        private int c;
        private int d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private float k;
        private float l;
        private float m;
        private float n;
        private ChattingAnimFrame o;

        public RainingMoneyAnim(int i1, int j1)
        {
            o = ChattingAnimFrame.this;
            super();
            i = 0.01F;
            j = 0.02F;
            c = i1;
            d = j1;
            e = ChattingAnimFrame.a(0.1F, 0.9F);
            f = e;
            h = ChattingAnimFrame.a(-0.3F, -0.1F);
            b();
        }
    }

}

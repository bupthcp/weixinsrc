// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.lang.reflect.Field;

public class LightHouseImageView extends ImageView
{

    public LightHouseImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new Handler();
    }

    public LightHouseImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = new Handler();
    }

    static AnimationDrawable a(LightHouseImageView lighthouseimageview, AnimationDrawable animationdrawable)
    {
        lighthouseimageview.a = animationdrawable;
        return animationdrawable;
    }

    private void a(int i)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)getLayoutParams();
        FrameLayout framelayout = (FrameLayout)getParent();
        if(i >= 6 && i <= 8 || i >= 21 && i <= 23)
            marginlayoutparams.setMargins(marginlayoutparams.leftMargin, (250 * framelayout.getHeight()) / 800, (123 * framelayout.getWidth()) / 480, marginlayoutparams.bottomMargin);
        else
        if(i >= 0 && i <= 8 || i >= 21 && i <= 29)
            marginlayoutparams.setMargins(marginlayoutparams.leftMargin, (245 * framelayout.getHeight()) / 800, (130 * framelayout.getWidth()) / 480, marginlayoutparams.bottomMargin);
        else
            marginlayoutparams.setMargins(marginlayoutparams.leftMargin, (245 * framelayout.getHeight()) / 800, (125 * framelayout.getWidth()) / 480 - getWidth(), marginlayoutparams.bottomMargin);
        setLayoutParams(marginlayoutparams);
    }

    static void a(LightHouseImageView lighthouseimageview)
    {
        lighthouseimageview.a(0);
    }

    static void a(LightHouseImageView lighthouseimageview, int i)
    {
        lighthouseimageview.View.setVisibility(i);
    }

    static AnimationDrawable b(LightHouseImageView lighthouseimageview)
    {
        return lighthouseimageview.a;
    }

    public void onDraw(Canvas canvas)
    {
        Field field = android/graphics/drawable/AnimationDrawable.getDeclaredField("mCurFrame");
        field.setAccessible(true);
        a(field.getInt(a));
        super.onDraw(canvas);
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void setVisibility(int i)
    {
        b.postDelayed(new _cls1(i), 1000L);
    }

    private AnimationDrawable a;
    private Handler b;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            LightHouseImageView.a(b, a);
            LightHouseImageView.a(b, (AnimationDrawable)b.getBackground());
            LightHouseImageView.a(b);
            LightHouseImageView.b(b).start();
        }

        private int a;
        private LightHouseImageView b;

        _cls1(int i)
        {
            b = LightHouseImageView.this;
            a = i;
            super();
        }
    }

}

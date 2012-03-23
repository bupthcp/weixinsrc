// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;

public class PickedBottleImageView extends ImageView
{

    public PickedBottleImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new Handler();
        d = new _cls1();
    }

    public PickedBottleImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = new Handler();
        d = new _cls1();
    }

    static View a(PickedBottleImageView pickedbottleimageview)
    {
        return pickedbottleimageview.b;
    }

    public final String a()
    {
        return a;
    }

    public final void a(int i)
    {
        FrameLayout framelayout;
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams;
        if(i == 1)
            setImageResource(0x7f02003d);
        else
        if(i == 3)
            setImageResource(0x7f02003e);
        else
            setImageResource(0x7f02003c);
        framelayout = (FrameLayout)getParent();
        if(b == null)
            b = ((View)getParent()).findViewById(0x7f070078);
        b.setVisibility(8);
        marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)getLayoutParams();
        marginlayoutparams.setMargins(marginlayoutparams.leftMargin, marginlayoutparams.topMargin, marginlayoutparams.rightMargin, (270 * framelayout.getHeight()) / 800);
        setLayoutParams(marginlayoutparams);
        startAnimation(AnimationUtils.loadAnimation(getContext(), 0x7f040002));
        c.postDelayed(d, 3000L);
        setVisibility(0);
    }

    public final void a(String s)
    {
        a = s;
    }

    public void setVisibility(int i)
    {
        if(i == 8)
            super.clearAnimation();
        if(i == 8 && b != null)
        {
            c.removeCallbacks(d);
            b.setVisibility(i);
        }
        super.setVisibility(i);
    }

    private String a;
    private View b;
    private Handler c;
    private Runnable d;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            FrameLayout framelayout = (FrameLayout)a.getParent();
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)PickedBottleImageView.a(a).getLayoutParams();
            marginlayoutparams.setMargins(framelayout.getWidth() / 2, (530 * framelayout.getHeight()) / 800, marginlayoutparams.rightMargin, marginlayoutparams.bottomMargin);
            PickedBottleImageView.a(a).setLayoutParams(marginlayoutparams);
            PickedBottleImageView.a(a).setVisibility(0);
            a.clearAnimation();
        }

        private PickedBottleImageView a;

        _cls1()
        {
            a = PickedBottleImageView.this;
            super();
        }
    }

}

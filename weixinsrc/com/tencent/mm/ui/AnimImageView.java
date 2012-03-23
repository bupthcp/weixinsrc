// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.widget.TextView;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public class AnimImageView extends TextView
{

    public AnimImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        b = false;
        c = 1;
        g = (MMActivity)context;
        c();
    }

    public AnimImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
        b = false;
        c = 1;
        g = (MMActivity)context;
        c();
    }

    private void c()
    {
        d = new AlphaAnimation(0.1F, 1F);
        d.setDuration(1000L);
        d.setRepeatCount(-1);
        d.setRepeatMode(2);
        e = new AnimationDrawable();
        Drawable drawable = getResources().getDrawable(0x7f0200c4);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        e.addFrame(drawable, 300);
        Drawable drawable1 = getResources().getDrawable(0x7f0200c5);
        drawable1.setBounds(0, 0, drawable1.getIntrinsicWidth(), drawable1.getIntrinsicHeight());
        e.addFrame(drawable1, 300);
        Drawable drawable2 = getResources().getDrawable(0x7f0200c6);
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
        e.addFrame(drawable2, 300);
        e.setOneShot(false);
        e.setVisible(true, true);
        f = new AnimationDrawable();
        Drawable drawable3 = getResources().getDrawable(0x7f0200ec);
        drawable3.setBounds(0, 0, drawable3.getIntrinsicWidth(), drawable3.getIntrinsicHeight());
        f.addFrame(drawable3, 300);
        Drawable drawable4 = getResources().getDrawable(0x7f0200ed);
        drawable4.setBounds(0, 0, drawable4.getIntrinsicWidth(), drawable4.getIntrinsicHeight());
        f.addFrame(drawable4, 300);
        Drawable drawable5 = getResources().getDrawable(0x7f0200ee);
        drawable5.setBounds(0, 0, drawable5.getIntrinsicWidth(), drawable5.getIntrinsicHeight());
        f.addFrame(drawable5, 300);
        f.setOneShot(false);
        f.setVisible(true, true);
    }

    public final void a()
    {
        c;
        JVM INSTR tableswitch 0 1: default 28
    //                   0 116
    //                   1 29;
           goto _L1 _L2 _L3
_L1:
        return;
_L3:
        if(!a)
        {
            a = true;
            if(b)
            {
                setBackgroundDrawable(g.a(0x7f0200c0));
                setCompoundDrawablesWithIntrinsicBounds(e, null, null, null);
                e.start();
            } else
            {
                setBackgroundDrawable(g.a(0x7f0200e8));
                setCompoundDrawablesWithIntrinsicBounds(null, null, f, null);
                f.start();
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(b)
            setBackgroundDrawable(g.a(0x7f0200bc));
        else
            setBackgroundDrawable(g.a(0x7f0200e4));
        setAnimation(d);
        d.startNow();
        if(true) goto _L1; else goto _L4
_L4:
    }

    public final void a(int i)
    {
        c = i;
        if(i == 1)
            if(b)
                setBackgroundDrawable(g.a(0x7f0200c0));
            else
                setBackgroundDrawable(g.a(0x7f0200e8));
        if(i == 0)
            if(b)
                setBackgroundDrawable(g.a(0x7f0200bc));
            else
                setBackgroundDrawable(g.a(0x7f0200e7));
    }

    public final void a(boolean flag)
    {
        b = flag;
    }

    public final void b()
    {
        if(d != null && d.isInitialized())
            setAnimation(null);
        if(c == 1)
        {
            a = false;
            setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
            e.stop();
            f.stop();
        }
    }

    private boolean a;
    private boolean b;
    private int c;
    private AlphaAnimation d;
    private AnimationDrawable e;
    private AnimationDrawable f;
    private MMActivity g;
}

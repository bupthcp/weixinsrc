// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import b.a.e;
import com.tencent.mm.platformtools.MTimerHandler;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public class MMProgressBar extends LinearLayout
{

    public MMProgressBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 100;
        b = 0;
        c = 0;
        d = null;
        g = new MTimerHandler(new _cls1(), false);
        e = (MMActivity)context;
        setBackgroundDrawable(e.a(0x7f0201a6));
        d = new ImageView(getContext());
        d.setAdjustViewBounds(true);
        d.setBackgroundDrawable(e.a(0x7f0201a5));
        addView(d, new android.widget.LinearLayout.LayoutParams(b(), -1));
    }

    static int a(MMProgressBar mmprogressbar)
    {
        return mmprogressbar.c;
    }

    static int a(MMProgressBar mmprogressbar, int i)
    {
        int j = i + mmprogressbar.b;
        mmprogressbar.b = j;
        return j;
    }

    private int b()
    {
        int i = (getWidth() * b) / a;
        if(i < b.a.e.a(e, 15F))
            i = b.a.e.a(e, 15F);
        return i;
    }

    static int b(MMProgressBar mmprogressbar)
    {
        return mmprogressbar.b;
    }

    static void b(MMProgressBar mmprogressbar, int i)
    {
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)mmprogressbar.d.getLayoutParams();
        layoutparams.width = mmprogressbar.b();
        mmprogressbar.d.setLayoutParams(layoutparams);
        mmprogressbar.d.invalidate();
        mmprogressbar.invalidate();
        if(mmprogressbar.f != null)
            mmprogressbar.f.a(mmprogressbar, i);
    }

    static int c(MMProgressBar mmprogressbar)
    {
        return mmprogressbar.a;
    }

    static MTimerHandler d(MMProgressBar mmprogressbar)
    {
        return mmprogressbar.g;
    }

    public final int a()
    {
        return a;
    }

    public final void a(int i)
    {
        if(i > a)
            i = a;
        c = i;
        if(g.b())
            a(true);
    }

    public final void a(IOnProgressChanged ionprogresschanged)
    {
        f = ionprogresschanged;
    }

    public final void a(boolean flag)
    {
        if(flag)
            g.a(40L);
        else
            g.a();
    }

    private int a;
    private int b;
    private int c;
    private ImageView d;
    private MMActivity e;
    private IOnProgressChanged f;
    private MTimerHandler g;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            int i = MMProgressBar.a(a) - MMProgressBar.b(a);
            if(i > 0)
            {
                int j = (int)(0.59999999999999998D * (double)i);
                MMProgressBar mmprogressbar = a;
                if(j <= 0)
                    j = 1;
                MMProgressBar.a(mmprogressbar, j);
                MMProgressBar.b(a, MMProgressBar.b(a));
                MMProgressBar.d(a).a((40 * (MMProgressBar.c(a) - i)) / MMProgressBar.c(a));
            }
            return false;
        }

        private MMProgressBar a;

        _cls1()
        {
            a = MMProgressBar.this;
            super();
        }
    }


    private class IOnProgressChanged
    {

        public abstract void a(MMProgressBar mmprogressbar, int i);
    }

}

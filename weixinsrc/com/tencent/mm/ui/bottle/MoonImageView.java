// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            LunarCalendar

public class MoonImageView extends ImageView
{

    public MoonImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        int ai[] = new int[8];
        ai[0] = 0;
        ai[1] = 0x7f020030;
        ai[2] = 0x7f020031;
        ai[3] = 0x7f020032;
        ai[4] = 0x7f020033;
        ai[5] = 0x7f020034;
        ai[6] = 0x7f020035;
        ai[7] = 0x7f020036;
        a = ai;
        double ad[] = new double[8];
        ad[0] = 0D;
        ad[1] = 20D;
        ad[2] = 35D;
        ad[3] = 50D;
        ad[4] = 60D;
        ad[5] = 50D;
        ad[6] = 35D;
        ad[7] = 20D;
        b = ad;
    }

    public MoonImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        int ai[] = new int[8];
        ai[0] = 0;
        ai[1] = 0x7f020030;
        ai[2] = 0x7f020031;
        ai[3] = 0x7f020032;
        ai[4] = 0x7f020033;
        ai[5] = 0x7f020034;
        ai[6] = 0x7f020035;
        ai[7] = 0x7f020036;
        a = ai;
        double ad[] = new double[8];
        ad[0] = 0D;
        ad[1] = 20D;
        ad[2] = 35D;
        ad[3] = 50D;
        ad[4] = 60D;
        ad[5] = 50D;
        ad[6] = 35D;
        ad[7] = 20D;
        b = ad;
    }

    public final void a(ImageView imageview)
    {
        c = imageview;
    }

    public void setVisibility(int i)
    {
        char c2;
        char c1 = '\002';
        c2 = '\0';
        LunarCalendar lunarcalendar = new LunarCalendar();
        ImageView imageview;
        int j;
        double d;
        int k;
        int l;
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams;
        if(lunarcalendar.a <= c1)
            c1 = c2;
        else
        if(lunarcalendar.a <= 6)
            c1 = '\001';
        else
        if(lunarcalendar.a > 10)
            if(lunarcalendar.a <= 14)
                c1 = '\003';
            else
            if(lunarcalendar.a <= 17)
                c1 = '\004';
            else
            if(lunarcalendar.a <= 21)
                c1 = '\005';
            else
            if(lunarcalendar.a <= 26)
                c1 = '\006';
            else
                c1 = '\007';
        setBackgroundResource(a[c1]);
        imageview = c;
        c1;
        JVM INSTR tableswitch 0 6: default 84
    //                   0 310
    //                   1 317
    //                   2 324
    //                   3 330
    //                   4 88
    //                   5 336
    //                   6 342;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L6:
        break; /* Loop/switch isn't completed */
_L1:
        c2 = '\252';
_L10:
        imageview.setAlpha(c2);
        if(c1 > 0)
        {
            j = getContext().getResources().getDisplayMetrics().heightPixels / 8;
            d = (3.1415926535897931D * b[c1]) / 180D;
            k = j + (int)((1D - Math.cos(d)) * (double)j);
            l = j + (int)((1D - Math.sin(d)) * (double)j);
            marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)getLayoutParams();
            marginlayoutparams.setMargins(k, l, marginlayoutparams.rightMargin, marginlayoutparams.bottomMargin);
            setLayoutParams(marginlayoutparams);
        }
        c.setVisibility(i);
        super.setVisibility(i);
        return;
_L2:
        c2 = '\377';
        continue; /* Loop/switch isn't completed */
_L3:
        c2 = '\252';
        continue; /* Loop/switch isn't completed */
_L4:
        c2 = '\177';
        continue; /* Loop/switch isn't completed */
_L5:
        c2 = 'U';
        continue; /* Loop/switch isn't completed */
_L7:
        c2 = 'U';
        continue; /* Loop/switch isn't completed */
_L8:
        c2 = '\177';
        if(true) goto _L10; else goto _L9
_L9:
    }

    private final int a[];
    private final double b[];
    private ImageView c;
}

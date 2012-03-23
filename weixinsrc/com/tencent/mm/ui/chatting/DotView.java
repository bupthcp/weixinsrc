// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import b.a.e;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;

public class DotView extends LinearLayout
{

    public DotView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = (MMActivity)context;
        c = e.a(context, b);
    }

    public final void a(int i)
    {
        Log.e("MicroMsg.DotView", (new StringBuilder()).append("setDotCount:").append(i).toString());
        if(i >= 0)
        {
            removeAllViews();
            for(int j = 0; j < i; j++)
            {
                ImageView imageview = new ImageView(a);
                imageview.setImageDrawable(a.getResources().getDrawable(0x7f020309));
                imageview.setPadding(c, 0, c, 0);
                addView(imageview, new android.widget.LinearLayout.LayoutParams(-2, -2));
            }

            ((ImageView)getChildAt(0)).setImageDrawable(a.getResources().getDrawable(0x7f0200ff));
        }
    }

    public final void b(int i)
    {
        Log.e("MicroMsg.DotView", (new StringBuilder()).append("setSelectedDot:").append(i).toString());
        if(i < getChildCount() && i >= 0)
        {
            for(int j = 0; j < getChildCount(); j++)
                ((ImageView)getChildAt(j)).setImageDrawable(a.getResources().getDrawable(0x7f020309));

            ((ImageView)getChildAt(i)).setImageDrawable(a.getResources().getDrawable(0x7f0200ff));
        }
    }

    private static int b = 4;
    private MMActivity a;
    private int c;

}

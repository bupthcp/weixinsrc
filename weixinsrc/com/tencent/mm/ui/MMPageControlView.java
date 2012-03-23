// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.HashMap;
import java.util.Map;

public class MMPageControlView extends LinearLayout
{

    public MMPageControlView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new HashMap();
        a = context;
    }

    private void c(int i)
    {
        removeAllViews();
        if(i <= b)
        {
            int j = b;
            int k = 0;
            while(k < j) 
            {
                if(i == k)
                {
                    d = (ImageView)c.get(Integer.valueOf(k));
                    if(d == null)
                    {
                        d = (ImageView)View.inflate(a, 0x7f030096, null).findViewById(0x7f07018d);
                        c.put(Integer.valueOf(k), d);
                    }
                    d.setImageResource(0x7f0201f8);
                } else
                {
                    d = (ImageView)c.get(Integer.valueOf(k));
                    if(d == null)
                    {
                        d = (ImageView)View.inflate(a, 0x7f030096, null).findViewById(0x7f07018d);
                        c.put(Integer.valueOf(k), d);
                    }
                    d.setImageResource(0x7f0201f9);
                }
                addView(d);
                k++;
            }
        }
    }

    public final void a(int i)
    {
        b = i;
        c(0);
    }

    public final void b(int i)
    {
        c(i);
    }

    private Context a;
    private int b;
    private Map c;
    private ImageView d;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.widget.LinearLayout;

class ViewHolder
{

    ViewHolder()
    {
    }

    public final void a(String s)
    {
        if(!s.equals("downloading")) goto _L2; else goto _L1
_L1:
        a.setVisibility(0);
        b.setVisibility(8);
        c.setVisibility(8);
        d.setVisibility(8);
        e.setVisibility(8);
_L4:
        return;
_L2:
        if(s.equals("downloaded"))
        {
            a.setVisibility(8);
            b.setVisibility(0);
            c.setVisibility(8);
            d.setVisibility(8);
            e.setVisibility(8);
        } else
        if(s.equals("undownloaded"))
        {
            a.setVisibility(8);
            b.setVisibility(8);
            c.setVisibility(0);
            d.setVisibility(8);
            e.setVisibility(8);
        } else
        if(s.equals("using"))
        {
            a.setVisibility(8);
            b.setVisibility(8);
            c.setVisibility(8);
            d.setVisibility(0);
            e.setVisibility(8);
        } else
        if(s.equals("canceling"))
        {
            a.setVisibility(8);
            b.setVisibility(8);
            c.setVisibility(8);
            d.setVisibility(8);
            e.setVisibility(0);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    LinearLayout a;
    LinearLayout b;
    LinearLayout c;
    LinearLayout d;
    LinearLayout e;
}

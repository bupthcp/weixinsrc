// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.tencent.mm.ui.setting:
//            NetStatUnit, NetStatRuler

public class NetStatGroup extends LinearLayout
{

    public NetStatGroup(Context context)
    {
        this(context, null);
    }

    public NetStatGroup(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        View.inflate(context, 0x7f03009f, this);
        a = (LinearLayout)findViewById(0x7f070172);
        b = (TextView)findViewById(0x7f0701ae);
    }

    public final void a(int i, boolean flag)
    {
        int j = 0;
        Context context = getContext();
        Object aobj[] = new Object[1];
        aobj[j] = "";
        String s = DateFormat.format(context.getString(0x7f0a0080, aobj), 0x5265c00L * (long)i).toString();
        b.setText(s);
        a.removeAllViews();
        for(; j < 5; j++)
        {
            NetStatUnit netstatunit = new NetStatUnit(getContext());
            netstatunit.a(i + j, flag);
            netstatunit.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1, 1F));
            a.addView(netstatunit);
        }

    }

    public final void a(boolean flag)
    {
        removeAllViews();
        View.inflate(getContext(), 0x7f0300a0, this);
        a = (LinearLayout)findViewById(0x7f070172);
        NetStatRuler netstatruler = new NetStatRuler(getContext());
        String s;
        if(flag)
            s = "wifi";
        else
            s = "mobile";
        netstatruler.setTag(s);
        netstatruler.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1, 1F));
        a.addView(netstatruler);
    }

    private LinearLayout a;
    private final TextView b;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public final class IconPreference extends Preference
{

    public IconPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        i = (MMActivity)context;
    }

    public IconPreference(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        b = "";
        c = -1;
        d = 8;
        e = "";
        f = -1;
        g = 8;
        h = -1;
        i = (MMActivity)context;
        setLayoutResource(0x7f030076);
        setWidgetLayoutResource(0x7f030091);
    }

    public final void a(int j)
    {
        d = j;
    }

    public final void a(Drawable drawable)
    {
        a = drawable;
    }

    public final void a(String s)
    {
        e = s;
        f = 0x7f02019a;
    }

    public final void a(String s, int j)
    {
        b = s;
        c = j;
    }

    public final void b(int j)
    {
        g = j;
    }

    public final void c(int j)
    {
        h = j;
    }

    protected final void onBindView(View view)
    {
        super.onBindView(view);
        ImageView imageview = (ImageView)view.findViewById(0x7f070177);
        if(imageview != null)
        {
            imageview.setImageDrawable(a);
            LinearLayout linearlayout;
            TextView textview;
            TextView textview1;
            byte byte0;
            if(a == null)
                byte0 = 8;
            else
                byte0 = 0;
            imageview.setVisibility(byte0);
        }
        linearlayout = (LinearLayout)view.findViewById(0x7f070179);
        if(h != -1)
            linearlayout.setMinimumHeight(h);
        textview = (TextView)view.findViewById(0x7f07017b);
        if(textview != null)
        {
            textview.setVisibility(d);
            textview.setText(b);
            if(c != -1)
                textview.setBackgroundDrawable(i.a(c));
        }
        textview1 = (TextView)view.findViewById(0x7f07017c);
        if(textview1 != null)
        {
            textview1.setVisibility(g);
            textview1.setText(e);
            if(f != -1)
                textview1.setBackgroundDrawable(i.a(f));
        }
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        View.inflate(getContext(), 0x7f030080, viewgroup1);
        return view;
    }

    private Drawable a;
    private String b;
    private int c;
    private int d;
    private String e;
    private int f;
    private int g;
    private int h;
    private MMActivity i;
}

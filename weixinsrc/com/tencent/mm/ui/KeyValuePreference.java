// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.platformtools.Util;

public class KeyValuePreference extends Preference
{

    public KeyValuePreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public KeyValuePreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = null;
        c = true;
        d = true;
        e = null;
        f = null;
        g = null;
        setLayoutResource(0x7f030076);
    }

    public final void a()
    {
        d = false;
    }

    public final void a(Drawable drawable)
    {
        g = drawable;
    }

    public final void a(String s)
    {
        e = s;
    }

    public final void a(boolean flag)
    {
        c = flag;
    }

    public final void b(Drawable drawable)
    {
        b = drawable;
    }

    public void onBindView(View view)
    {
        super.onBindView(view);
        a = (TextView)view.findViewById(0x1020010);
        a.setSingleLine(c);
        if(d)
            setWidgetLayoutResource(0x7f030091);
        TextView textview = (TextView)view.findViewById(0x1020016);
        if(!Util.i(e))
            textview.setText(e);
        if(b != null)
            ((ImageView)view.findViewById(0x7f07017d)).setImageDrawable(b);
        f = (ImageView)view.findViewById(0x7f070177);
        if(g != null)
        {
            f.setVisibility(0);
            f.setImageDrawable(g);
        } else
        {
            f.setVisibility(8);
        }
    }

    protected View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f030081, viewgroup1);
        return view;
    }

    private TextView a;
    private Drawable b;
    private boolean c;
    private boolean d;
    private String e;
    private ImageView f;
    private Drawable g;
}

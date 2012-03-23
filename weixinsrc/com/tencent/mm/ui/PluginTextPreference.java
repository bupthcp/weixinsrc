// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public final class PluginTextPreference extends Preference
{

    public PluginTextPreference(Context context)
    {
        this(context, null);
    }

    public PluginTextPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public PluginTextPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = null;
        b = null;
        setLayoutResource(0x7f030084);
    }

    public final void a()
    {
        e = 8;
    }

    public final void a(int i)
    {
        c = i;
    }

    public final void b(int i)
    {
        d = getContext().getString(i);
    }

    protected final void onBindView(View view)
    {
        super.onBindView(view);
        a = (ImageView)view.findViewById(0x7f070177);
        a.setImageResource(c);
        a.setVisibility(e);
        b = (TextView)view.findViewById(0x7f07017f);
        b.setText(d);
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        View.inflate(getContext(), 0x7f030084, viewgroup1);
        return view;
    }

    private ImageView a;
    private TextView b;
    private int c;
    private String d;
    private int e;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.ui.tools.SwitchColorStateList;

public class SwitchKeyValuePreference extends Preference
{

    public SwitchKeyValuePreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SwitchKeyValuePreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = true;
        setLayoutResource(0x7f030076);
    }

    private void a()
    {
        if(a != null)
            if(b)
            {
                a.setTextColor(SwitchColorStateList.a(getContext()));
                a.setCompoundDrawablesWithIntrinsicBounds(0x7f0202b2, 0, 0, 0);
            } else
            {
                a.setTextColor(SwitchColorStateList.b(getContext()));
                a.setCompoundDrawablesWithIntrinsicBounds(0x7f0202b1, 0, 0, 0);
            }
    }

    public final void a(boolean flag)
    {
        b = flag;
        a();
    }

    public void onBindView(View view)
    {
        super.onBindView(view);
        a = (TextView)view.findViewById(0x1020010);
        a();
    }

    private TextView a;
    private boolean b;
}

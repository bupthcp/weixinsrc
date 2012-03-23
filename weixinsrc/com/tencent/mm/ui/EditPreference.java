// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class EditPreference extends Preference
{

    public EditPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public EditPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void onBindView(View view)
    {
        super.onBindView(view);
        if(b != null)
            b.setText(a);
    }

    public View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        b = (TextView)view.findViewById(0x7f070117);
        return view;
    }

    private String a;
    private TextView b;
}

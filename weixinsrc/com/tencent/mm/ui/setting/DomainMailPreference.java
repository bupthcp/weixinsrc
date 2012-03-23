// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;

class DomainMailPreference extends Preference
{

    public DomainMailPreference(Context context)
    {
        this(context, null);
    }

    public DomainMailPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public DomainMailPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        setLayoutResource(0x7f030076);
        setWidgetLayoutResource(0x7f030091);
    }

    protected View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f03007b, viewgroup1);
        return view;
    }
}

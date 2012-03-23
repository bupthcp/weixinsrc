// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public final class ImagePreference extends Preference
{

    public ImagePreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ImagePreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = null;
        b = null;
        setLayoutResource(0x7f030088);
        setWidgetLayoutResource(0x7f030091);
    }

    public final void a(int i)
    {
        b = getContext().getResources().getDrawable(i);
    }

    protected final void onBindView(View view)
    {
        super.onBindView(view);
        a = (ImageView)view.findViewById(0x7f070177);
        a.setImageDrawable(b);
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070184);
        viewgroup1.removeAllViews();
        View.inflate(getContext(), 0x7f030088, viewgroup1);
        return view;
    }

    private ImageView a;
    private Drawable b;
}

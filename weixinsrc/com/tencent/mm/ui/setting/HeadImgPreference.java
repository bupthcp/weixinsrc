// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;

public final class HeadImgPreference extends Preference
{

    public HeadImgPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public HeadImgPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = -1;
        setLayoutResource(0x7f030076);
        setWidgetLayoutResource(0x7f030091);
    }

    public final void a(Bitmap bitmap)
    {
        if(b != null)
        {
            b.setImageBitmap(bitmap);
            c = null;
        } else
        {
            c = bitmap;
        }
    }

    protected final void onBindView(View view)
    {
        super.onBindView(view);
        if(b == null)
            b = (ImageView)view.findViewById(0x7f07017a);
        if(c != null)
        {
            b.setImageBitmap(c);
            c = null;
        }
        LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f070179);
        if(a != -1)
            linearlayout.setMinimumHeight(a);
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        View.inflate(getContext(), 0x7f03007f, viewgroup1);
        b = (ImageView)view.findViewById(0x7f07017a);
        return view;
    }

    private int a;
    private ImageView b;
    private Bitmap c;
}

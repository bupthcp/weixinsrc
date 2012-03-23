// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.platformtools.Log;

public class SelfVuserPreference extends Preference
{

    public SelfVuserPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SelfVuserPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        setLayoutResource(0x7f030076);
    }

    public final void a(Drawable drawable)
    {
        a = drawable;
    }

    public final void a(String s)
    {
        b = s;
    }

    protected void onBindView(View view)
    {
        super.onBindView(view);
        ImageView imageview = (ImageView)view.findViewById(0x7f070177);
        if(imageview != null)
        {
            imageview.setImageDrawable(a);
            Log.d("MicroMsg.SelfVuserPreference", (new StringBuilder()).append("onBindView set icon=").append(a).toString());
        }
        TextView textview = (TextView)view.findViewById(0x7f07017f);
        if(textview != null)
        {
            textview.setVisibility(0);
            textview.setText(b);
        }
    }

    protected View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        View.inflate(getContext(), 0x7f030090, viewgroup1);
        return view;
    }

    private Drawable a;
    private String b;
}

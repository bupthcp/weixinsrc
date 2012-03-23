// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;

public class PersonalPreference extends Preference
{

    public PersonalPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        i = (MMActivity)context;
    }

    public PersonalPreference(Context context, AttributeSet attributeset, int l)
    {
        super(context, attributeset, l);
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        i = (MMActivity)context;
    }

    public final void a(Bitmap bitmap)
    {
        e = bitmap;
        if(c != null)
            c.setImageBitmap(bitmap);
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        j = onclicklistener;
    }

    public final void a(String s)
    {
        f = s;
        if(a != null && s != null)
        {
            android.text.SpannableString spannablestring = SpanUtil.a(i, s, (int)a.getTextSize());
            a.setText(spannablestring);
        }
    }

    public final void b(android.view.View.OnClickListener onclicklistener)
    {
        k = onclicklistener;
    }

    public final void b(String s)
    {
        g = s;
        if(b != null && Util.i(h) && s != null)
            b.setText((new StringBuilder()).append(getContext().getString(0x7f0a0039)).append(s).toString());
    }

    public final void c(String s)
    {
        h = s;
        if(b != null && !Util.i(s))
            b.setText((new StringBuilder()).append(getContext().getString(0x7f0a0039)).append(s).toString());
    }

    public void onBindView(View view)
    {
        c = (ImageView)view.findViewById(0x7f070177);
        if(c != null)
        {
            c.setImageBitmap(e);
            c.setOnClickListener(k);
        }
        a = (TextView)view.findViewById(0x7f0701af);
        if(a != null && f != null)
        {
            android.text.SpannableString spannablestring = SpanUtil.a(i, f, (int)a.getTextSize());
            a.setText(spannablestring);
        }
        b = (TextView)view.findViewById(0x7f0701b1);
        if(b != null)
        {
            String s;
            if(Util.i(h))
                s = g;
            else
                s = h;
            b.setText((new StringBuilder()).append(getContext().getString(0x7f0a0039)).append(s).toString());
        }
        d = (Button)view.findViewById(0x7f0701b0);
        if(d != null)
            d.setOnClickListener(j);
        super.onBindView(view);
    }

    private TextView a;
    private TextView b;
    private ImageView c;
    private Button d;
    private Bitmap e;
    private String f;
    private String g;
    private String h;
    private MMActivity i;
    private android.view.View.OnClickListener j;
    private android.view.View.OnClickListener k;
}

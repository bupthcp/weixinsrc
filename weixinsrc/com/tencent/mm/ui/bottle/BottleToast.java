// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class BottleToast extends Toast
{

    public BottleToast(Context context)
    {
        super(context);
        c = context;
        a = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030023, null);
        b = (TextView)a.findViewById(0x7f070087);
        setGravity(17, 0, 0);
        setDuration(0);
        setView(a);
    }

    public final void a()
    {
        c = null;
    }

    public void setText(int i)
    {
        setText(((CharSequence) (c.getString(i))));
    }

    public void setText(CharSequence charsequence)
    {
        b.setText(charsequence);
    }

    public void show()
    {
        super.show();
    }

    private View a;
    private TextView b;
    private Context c;
}

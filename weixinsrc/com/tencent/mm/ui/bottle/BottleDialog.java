// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class BottleDialog extends Dialog
{

    public BottleDialog(Context context)
    {
        super(context, 0x7f0b0049);
        c = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f03001e, null);
        setContentView(c, new android.view.ViewGroup.LayoutParams(-2, -2));
        a = (TextView)c.findViewById(0x7f07006b);
        b = (Button)c.findViewById(0x7f07006c);
        b.setOnClickListener(new _cls1());
    }

    public final void a(String s)
    {
        a.setText(s);
    }

    private TextView a;
    private Button b;
    private View c;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.dismiss();
        }

        private BottleDialog a;

        _cls1()
        {
            a = BottleDialog.this;
            super();
        }
    }

}

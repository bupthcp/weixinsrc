// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public class MMImageButton extends LinearLayout
{

    public MMImageButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = (MMActivity)context;
        View view = LayoutInflater.from(c).inflate(0x7f030053, this, true);
        b = (ImageView)view.findViewById(0x7f070129);
        a = (TextView)view.findViewById(0x7f07012a);
    }

    public final void a(int i)
    {
        b.setImageDrawable(c.a(i));
        b.setVisibility(0);
        a.setVisibility(8);
    }

    public final void a(String s)
    {
        a.setText(s);
        a.setVisibility(0);
        b.setVisibility(8);
    }

    public final void b(int i)
    {
        a.setText(i);
        a.setVisibility(0);
        b.setVisibility(8);
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        a.setEnabled(flag);
        b.setEnabled(flag);
    }

    private TextView a;
    private ImageView b;
    private MMActivity c;
}

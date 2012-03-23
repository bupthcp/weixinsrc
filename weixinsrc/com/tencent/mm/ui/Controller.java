// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.view.View;
import android.widget.*;
import com.tencent.mm.ui.chatting.SpanUtil;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MMImageButton

class Controller
{

    public Controller(Activity activity)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        g = (MMActivity)activity;
        a = (MMImageButton)activity.findViewById(0x7f070189);//title_btn1
        b = (MMImageButton)activity.findViewById(0x7f070186);//title_btn4
        f = (LinearLayout)activity.findViewById(0x7f070185);//nav_title
        d = (ImageView)activity.findViewById(0x7f070187);//title_phone
        e = (ImageView)activity.findViewById(0x7f070188);//title_mute
        c = (TextView)activity.findViewById(0x7f070124);//title
    }

    public final View a()
    {
        return f;
    }

    public final MMImageButton a(int i, android.view.View.OnClickListener onclicklistener)
    {
        return a(g.getString(i), onclicklistener);
    }

    public final MMImageButton a(Object obj, android.view.View.OnClickListener onclicklistener)
    {
        MMImageButton mmimagebutton;
        if(a == null)
        {
            mmimagebutton = null;
        } else
        {
            a.setVisibility(0);
            if(obj instanceof String)
                a.a((String)obj);
            else
                a.a(((Integer)obj).intValue());
            a.setOnClickListener(onclicklistener);
            if(b != null && b.getVisibility() != 0)
                b.setVisibility(4);
            mmimagebutton = a;
        }
        return mmimagebutton;
    }

    public final void a(int i)
    {
        d.setVisibility(i);
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        if(c != null)
            c.setOnClickListener(onclicklistener);
    }

    public final void a(String s)
    {
        if(c != null)
            c.setText(SpanUtil.a(g, s, (int)c.getTextSize()));
    }

    public final void a(boolean flag)
    {
        if(a != null)
            a.setEnabled(flag);
    }

    public final MMImageButton b(int i, android.view.View.OnClickListener onclicklistener)
    {
        return b(g.getString(i), onclicklistener);
    }

    public final MMImageButton b(Object obj, android.view.View.OnClickListener onclicklistener)
    {
        MMImageButton mmimagebutton;
        if(b == null)
        {
            mmimagebutton = null;
        } else
        {
            b.setVisibility(0);
            if(obj instanceof String)
                b.a((String)obj);
            else
                b.a(((Integer)obj).intValue());
            b.setOnClickListener(onclicklistener);
            if(a != null && a.getVisibility() != 0)
                a.setVisibility(4);
            mmimagebutton = b;
        }
        return mmimagebutton;
    }

    public final void b()
    {
        if(c != null)
            c.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0x7f02022d, 0);
    }

    public final void b(int i)
    {
        e.setVisibility(i);
    }

    public final void c(int i)
    {
        if(f != null)
            f.setVisibility(i);
    }

    public final void d(int i)
    {
        if(c != null)
            a(g.getString(i));
    }

    public final void e(int i)
    {
        if(a != null)
            a.setVisibility(i);
    }

    private MMImageButton a;
    private MMImageButton b;
    private TextView c;
    private ImageView d;
    private ImageView e;
    private LinearLayout f;
    private final MMActivity g;
}

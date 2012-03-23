// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;
import android.widget.TextView;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;

public class DomainMailListPreference extends Preference
{

    public DomainMailListPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public DomainMailListPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        a = false;
        b = "";
        c = "";
    }

    private void b()
    {
        if(!a)
        {
            Log.a("MicroMsg.DomainMailPreference", "initView : unbind view");
        } else
        {
            d.setText(Util.h(b));
            String as[] = c.split(";");
            if(Util.h(c).length() <= 0)
            {
                e.setVisibility(8);
                f.setVisibility(8);
                g.setVisibility(8);
            } else
            {
                if(as.length > 0)
                {
                    e.setVisibility(0);
                    e.setText(Util.h(as[0]));
                } else
                {
                    e.setVisibility(8);
                }
                if(as.length > 1)
                {
                    f.setVisibility(0);
                    f.setText(Util.h(as[1]));
                } else
                {
                    f.setVisibility(8);
                }
                if(as.length > 2)
                {
                    g.setVisibility(0);
                    g.setText(Util.h(as[2]));
                } else
                {
                    g.setVisibility(8);
                }
            }
        }
    }

    public final void a(String s)
    {
        b = s;
        c = null;
        b();
    }

    public void onBindView(View view)
    {
        d = (TextView)view.findViewById(0x7f070124);
        e = (TextView)view.findViewById(0x7f070173);
        f = (TextView)view.findViewById(0x7f070174);
        g = (TextView)view.findViewById(0x7f070175);
        a = true;
        b();
        super.onBindView(view);
    }

    protected View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f03007c, viewgroup1);
        return view;
    }

    private boolean a;
    private String b;
    private String c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
}

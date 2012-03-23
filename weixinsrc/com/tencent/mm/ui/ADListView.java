// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;

// Referenced classes of package com.tencent.mm.ui:
//            ADListAdapter, Message, ViewHolder

public class ADListView extends LinearLayout
{

    public ADListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 0;
    }

    static ADListAdapter a(ADListView adlistview)
    {
        return adlistview.a;
    }

    static ADEvent b(ADListView adlistview)
    {
        return adlistview.d;
    }

    static int c(ADListView adlistview)
    {
        return adlistview.b;
    }

    public final void a(ADListAdapter adlistadapter)
    {
        a = adlistadapter;
    }

    public final void a(ADEvent adevent)
    {
        d = adevent;
    }

    public final boolean a()
    {
        boolean flag = false;
        if(a != null && a.getCount() > 0)
        {
            a.a(flag).a(c);
            flag = true;
        }
        return flag;
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        c = new ViewHolder();
        c.a = this;
        c.b = (Button)findViewById(0x7f07000f);
        c.b.setOnClickListener(new _cls1());
        setOnClickListener(new _cls2());
    }

    private ADListAdapter a;
    private int b;
    private ViewHolder c;
    private ADEvent d;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ADListView.a(a) != null && ADListView.b(a) != null)
            {
                Message message = ADListView.a(a).a(ADListView.c(a));
                ADListView.b(a).a(message.a());
            }
        }

        private ADListView a;

        _cls1()
        {
            a = ADListView.this;
            super();
        }

        private class ADEvent
        {

            public abstract void a(String s);

            public abstract void a(String s, String s1);
        }

    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ADListView.a(a) != null && ADListView.b(a) != null)
            {
                Message message = ADListView.a(a).a(ADListView.c(a));
                ADListView.b(a).a(message.a(), message.b());
            }
        }

        private ADListView a;

        _cls2()
        {
            a = ADListView.this;
            super();
        }
    }

}

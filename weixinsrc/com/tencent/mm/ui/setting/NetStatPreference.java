// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

// Referenced classes of package com.tencent.mm.ui.setting:
//            NetStatGroup

public class NetStatPreference extends Preference
{

    public NetStatPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public NetStatPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.tencent.mm.R.styleable.b, i, 0);
        boolean flag;
        Object aobj[];
        if(typedarray.getInt(0, 0) == 1)
            flag = true;
        else
            flag = false;
        a = flag;
        typedarray.recycle();
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(15);
        setSummary(context.getString(0x7f0a021d, aobj));
    }

    public final void a(boolean flag)
    {
        a = flag;
    }

    protected void onBindView(View view)
    {
        super.onBindView(view);
        LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f070172);
        linearlayout.removeAllViews();
        int i = (int)(System.currentTimeMillis() / 0x5265c00L);
        for(int j = 15; j > 0; j -= 5)
        {
            NetStatGroup netstatgroup = new NetStatGroup(getContext());
            netstatgroup.a(1 + (i - j), a);
            linearlayout.addView(netstatgroup, -2, -1);
        }

        LinearLayout linearlayout1 = (LinearLayout)view.findViewById(0x7f07017e);
        linearlayout1.removeAllViews();
        NetStatGroup netstatgroup1 = new NetStatGroup(getContext());
        netstatgroup1.a(a);
        linearlayout1.addView(netstatgroup1);
    }

    protected View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        View.inflate(getContext(), 0x7f030082, viewgroup1);
        return view;
    }

    private boolean a;
}

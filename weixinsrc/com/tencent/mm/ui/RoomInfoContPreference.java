// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.Contact;

// Referenced classes of package com.tencent.mm.ui:
//            RoomInfoAdapter, MMGridView

public class RoomInfoContPreference extends Preference
{

    public RoomInfoContPreference(Context context)
    {
        super(context);
        d = null;
        g = null;
        h = null;
        c = context;
    }

    public RoomInfoContPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = null;
        g = null;
        h = null;
        c = context;
    }

    public RoomInfoContPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = null;
        g = null;
        h = null;
        c = context;
    }

    public final void a(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        h = onitemclicklistener;
    }

    public final void a(android.widget.AdapterView.OnItemLongClickListener onitemlongclicklistener)
    {
        g = onitemlongclicklistener;
    }

    public final void a(String s)
    {
        if(b != null)
            b.a(s);
    }

    public final void a(String s, boolean flag, int i)
    {
        d = s;
        if(flag)
            e = 2;
        else
            e = 1;
        f = i;
    }

    public final boolean a()
    {
        boolean flag;
        if(b != null)
            flag = b.a();
        else
            flag = false;
        return flag;
    }

    public final boolean a(int i)
    {
        boolean flag;
        if(b != null)
            flag = b.a(i);
        else
            flag = true;
        return flag;
    }

    public final boolean b(int i)
    {
        boolean flag;
        if(b != null)
            flag = b.b(i);
        else
            flag = true;
        return flag;
    }

    public final boolean c(int i)
    {
        boolean flag;
        if(b != null)
            flag = b.d(i);
        else
            flag = false;
        return flag;
    }

    public final boolean d(int i)
    {
        boolean flag;
        if(b != null)
            flag = b.c(i);
        else
            flag = false;
        return flag;
    }

    public final String e(int i)
    {
        String s;
        if(b != null && b.d(i))
            s = ((Contact)b.getItem(i)).s();
        else
            s = "";
        return s;
    }

    public void notifyChanged()
    {
        if(b != null)
            b.b();
    }

    public void onBindView(View view)
    {
        Log.d("MicroMsg.RoomInfoContPreference", (new StringBuilder()).append("MicroMsg.RoomInfoContPreference BindView  roomId : ").append(d).append(" roomType :").append(e).toString());
        a = (MMGridView)view.findViewById(0x7f070229);
        b = new RoomInfoAdapter(c, d, e, f);
        a.setAdapter(b);
        if(g != null)
            a.setOnItemLongClickListener(g);
        if(h != null)
            a.setOnItemClickListener(h);
        super.onBindView(view);
    }

    private MMGridView a;
    private RoomInfoAdapter b;
    private Context c;
    private String d;
    private int e;
    private int f;
    private android.widget.AdapterView.OnItemLongClickListener g;
    private android.widget.AdapterView.OnItemClickListener h;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import java.util.HashMap;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            DialogItem

class DialogListAdapter extends BaseAdapter
{

    public DialogListAdapter(Context context)
    {
        c = -1;
        f = context;
    }

    protected final void a()
    {
        int i = 0;
        if(a == null)
            a = new CharSequence[i];
        if(b == null)
            b = new CharSequence[i];
        int j;
        if(a.length == b.length)
            j = 1;
        else
            j = i;
        Assert.assertTrue("entries count different", j);
        e.clear();
        for(; i < b.length; i++)
        {
            DialogItem dialogitem = new DialogItem(a[i], 0x100000 + i);
            e.put(b[i], dialogitem);
        }

    }

    public int getCount()
    {
        return b.length;
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if(view == null)
        {
            view = View.inflate(f, 0x7f030086, null);
            ViewHolder viewholder1 = new ViewHolder();
            viewholder1.a = (TextView)view.findViewById(0x7f070181);
            viewholder1.b = (CheckBox)view.findViewById(0x7f070182);
            viewholder1.c = (RadioButton)view.findViewById(0x7f070183);
            view.setTag(viewholder1);
        }
        viewholder = (ViewHolder)view.getTag();
        viewholder.a.setText(a[i]);
        g;
        JVM INSTR tableswitch 1 2: default 120
    //                   1 142
    //                   2 185;
           goto _L1 _L2 _L3
_L1:
        viewholder.b.setVisibility(8);
        viewholder.c.setVisibility(8);
_L5:
        return view;
_L2:
        viewholder.b.setVisibility(8);
        viewholder.c.setVisibility(0);
        viewholder.c.setChecked(b[i].equals(d));
        continue; /* Loop/switch isn't completed */
_L3:
        viewholder.b.setVisibility(0);
        viewholder.c.setVisibility(8);
        viewholder.b.setChecked(b[i].equals(d));
        if(true) goto _L5; else goto _L4
_L4:
    }

    protected CharSequence a[];
    protected CharSequence b[];
    protected int c;
    protected String d;
    protected final HashMap e = new HashMap();
    private final Context f;
    private final int g = 1;

    private class ViewHolder
    {

        TextView a;
        CheckBox b;
        RadioButton c;

        ViewHolder()
        {
        }
    }

}

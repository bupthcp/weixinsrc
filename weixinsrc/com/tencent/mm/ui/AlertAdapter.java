// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.mm.platformtools.Util;
import java.util.ArrayList;
import java.util.List;

class AlertAdapter extends BaseAdapter
{

    public AlertAdapter(Context context, String s, String as[], String s1, String s2)
    {
        c = false;
        if(as == null || as.length == 0)
            a = new ArrayList();
        else
            a = Util.a(as);
        b = new int[3 + a.size()];
        d = context;
        if(s != null && !s.equals(""))
        {
            b[0] = 1;
            c = true;
            a.add(0, s);
        }
        if(s1 != null && !s1.equals(""))
        {
            b[a.size()] = 2;
            a.add(s1);
        }
        if(s2 != null && !s2.equals(""))
        {
            b[a.size()] = 3;
            a.add(s2);
        }
    }

    public int getCount()
    {
        return a.size();
    }

    public Object getItem(int i)
    {
        return a.get(i);
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        String s = (String)getItem(i);
        int j = b[i];
        ViewHolder viewholder1;
        if(view == null || ((ViewHolder)view.getTag()).b != j)
        {
            ViewHolder viewholder = new ViewHolder();
            if(j == 3)
                view = View.inflate(d, 0x7f030012, null);
            else
            if(j == 0)
                view = View.inflate(d, 0x7f030011, null);
            else
            if(j == 1)
                view = View.inflate(d, 0x7f030014, null);
            else
            if(j == 2)
                view = View.inflate(d, 0x7f030013, null);
            viewholder.a = (TextView)view.findViewById(0x7f07003c);
            viewholder.b = j;
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        viewholder1.a.setText(s);
        return view;
    }

    public boolean isEnabled(int i)
    {
        boolean flag;
        if(i == 0 && c)
            flag = false;
        else
            flag = super.isEnabled(i);
        return flag;
    }

    private List a;
    private int b[];
    private boolean c;
    private Context d;

    private class ViewHolder
    {

        TextView a;
        int b;

        ViewHolder()
        {
        }
    }

}

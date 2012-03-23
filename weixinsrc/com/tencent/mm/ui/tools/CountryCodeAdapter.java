// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui.tools:
//            CountryCode

public class CountryCodeAdapter extends BaseAdapter
{

    public CountryCodeAdapter(Context context, List list)
    {
        a = new ArrayList();
        c = context;
        b = list;
        b();
        c();
    }

    private void b()
    {
        int i = 0;
        for(int j = b.size(); i < j; i++)
            a.add(b.get(i));

    }

    private void c()
    {
        e = new int[b.size()];
        int i = b.size();
        for(int j = 0; j < i; j++)
            e[j] = ((CountryCode)b.get(j)).c();

    }

    public final void a(String s)
    {
        if(s != null)
        {
            d = s.trim();
            b.clear();
            int i = a.size();
            for(int j = 0; j < i; j++)
                if(((CountryCode)a.get(j)).a().contains(d) || ((CountryCode)a.get(j)).d().contains(d.toUpperCase()) || ((CountryCode)a.get(j)).b().contains(d))
                    b.add(a.get(j));

            c();
            super.notifyDataSetChanged();
        }
    }

    public final int[] a()
    {
        return e;
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int i)
    {
        return b.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CountryCode countrycode = (CountryCode)getItem(i);
        ViewHolder viewholder;
        int j;
        if(view == null)
        {
            view = View.inflate(c, 0x7f030045, null);
            viewholder = new ViewHolder();
            viewholder.a = (TextView)view.findViewById(0x7f0700fc);
            viewholder.b = (TextView)view.findViewById(0x7f0700ff);
            viewholder.c = (TextView)view.findViewById(0x7f070102);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        if(i > 0)
            j = e[i + -1];
        else
            j = -1;
        if(i == 0)
        {
            viewholder.a.setVisibility(0);
            viewholder.a.setText(String.valueOf((char)e[i]));
        } else
        if(i > 0 && e[i] != j)
        {
            viewholder.a.setVisibility(0);
            viewholder.a.setText(String.valueOf((char)e[i]));
        } else
        {
            viewholder.a.setVisibility(8);
        }
        viewholder.b.setText(countrycode.a());
        viewholder.c.setText(countrycode.b());
        return view;
    }

    private List a;
    private List b;
    private Context c;
    private String d;
    private int e[];

    private class ViewHolder
    {

        TextView a;
        TextView b;
        TextView c;

        ViewHolder()
        {
        }
    }

}

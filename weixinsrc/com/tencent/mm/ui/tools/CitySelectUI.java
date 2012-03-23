// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.os.Bundle;
import android.widget.ExpandableListView;
import com.tencent.mm.ui.MMActivity;

public class CitySelectUI extends MMActivity
{

    public CitySelectUI()
    {
        a = "";
    }

    static String[] a(CitySelectUI cityselectui)
    {
        return cityselectui.d;
    }

    static String[][] b(CitySelectUI cityselectui)
    {
        return cityselectui.e;
    }

    protected final int a()
    {
        return 0x7f03003a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a03b6);
        a = getString(0x7f0a0355);
        String as[] = a.trim().split(",");
        d = new String[as.length];
        e = new String[as.length][];
        for(int i = 0; i < as.length; i++)
        {
            int j = as[i].indexOf(":");
            d[i] = as[i].substring(0, j).trim();
            String as1[] = as[i].substring(j + 1, as[i].length()).trim().split("\\|");
            e[i] = as1;
        }

        b = (ExpandableListView)findViewById(0x7f0700c1);
        c = new CityExpandableListAdapter();
        b.setAdapter(c);
        b.setOnChildClickListener(new _cls1());
        b(0x7f0a0015, new _cls2());
    }

    private String a;
    private ExpandableListView b;
    private CityExpandableListAdapter c;
    private String d[];
    private String e[][];

    private class CityExpandableListAdapter extends BaseExpandableListAdapter
    {

        public volatile Object getChild(int i, int j)
        {
            return CitySelectUI.b(a)[i][j];
        }

        public long getChildId(int i, int j)
        {
            return (long)j;
        }

        public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
        {
            class ViewHolder
            {

                TextView a;
                ImageView b;
                private CityExpandableListAdapter c;

                ViewHolder()
                {
                    c = CityExpandableListAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder1;
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f03003b, null);
                viewholder.a = (TextView)view.findViewById(0x7f0700c2);
                view.setTag(viewholder);
                viewholder1 = viewholder;
            } else
            {
                viewholder1 = (ViewHolder)view.getTag();
            }
            viewholder1.a.setText(CitySelectUI.b(a)[i][j]);
            return view;
        }

        public int getChildrenCount(int i)
        {
            return CitySelectUI.b(a)[i].length;
        }

        public volatile Object getGroup(int i)
        {
            return CitySelectUI.a(a)[i];
        }

        public int getGroupCount()
        {
            return CitySelectUI.a(a).length;
        }

        public long getGroupId(int i)
        {
            return (long)i;
        }

        public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder1;
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f03003c, null);
                viewholder.b = (ImageView)view.findViewById(0x7f0700c3);
                viewholder.a = (TextView)view.findViewById(0x7f0700c4);
                view.setTag(viewholder);
                viewholder1 = viewholder;
            } else
            {
                viewholder1 = (ViewHolder)view.getTag();
            }
            if(flag)
                viewholder1.b.setImageDrawable(a.a(0x7f0201b1));
            else
                viewholder1.b.setImageDrawable(a.a(0x7f0201b0));
            viewholder1.a.setText(CitySelectUI.a(a)[i]);
            return view;
        }

        public boolean hasStableIds()
        {
            return true;
        }

        public boolean isChildSelectable(int i, int j)
        {
            return true;
        }

        private CitySelectUI a;

        CityExpandableListAdapter()
        {
            a = CitySelectUI.this;
            super();
        }
    }


    private class _cls1
        implements android.widget.ExpandableListView.OnChildClickListener
    {

        public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
        {
            MMCore.f().f().a(12293, CitySelectUI.a(a)[i]);
            MMCore.f().f().a(12292, CitySelectUI.b(a)[i][j]);
            Intent intent = new Intent();
            intent.putExtra("Contact_Province", CitySelectUI.a(a)[i]);
            intent.putExtra("Contact_City", CitySelectUI.b(a)[i][j]);
            a.setResult(-1, intent);
            a.finish();
            return false;
        }

        private CitySelectUI a;

        _cls1()
        {
            a = CitySelectUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private CitySelectUI a;

        _cls2()
        {
            a = CitySelectUI.this;
            super();
        }
    }

}

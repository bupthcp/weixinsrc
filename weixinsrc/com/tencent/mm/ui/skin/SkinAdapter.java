// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.skin;

import android.database.Cursor;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modeltheme.ThemeInfo;
import com.tencent.mm.modeltheme.ThemeInfoStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MListAdapter;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.skin:
//            SkinSelectUI

class SkinAdapter extends MListAdapter
{

    public SkinAdapter(SkinSelectUI skinselectui)
    {
        super(skinselectui, new ThemeInfo());
        a = skinselectui;
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        ThemeInfo themeinfo = (ThemeInfo)obj;
        if(themeinfo == null)
            themeinfo = new ThemeInfo();
        themeinfo.a(cursor);
        return themeinfo;
    }

    protected final void a()
    {
        b();
    }

    public final void b()
    {
        a(MMCore.f().Q().a());
        super.notifyDataSetChanged();
    }

    public int getCount()
    {
        return 1 + k().getCount();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        String s;
        ViewHolder viewholder1;
        View view2;
        View view3;
        s = a.e();
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            View view1 = View.inflate(a, 0x7f0300ec, null);
            viewholder.a = (Button)view1.findViewById(0x7f070284);
            viewholder.b = (ImageView)view1.findViewById(0x7f07027e);
            viewholder.c = (TextView)view1.findViewById(0x7f070281);
            viewholder.f = (TextView)view1.findViewById(0x7f070282);
            viewholder.d = (ProgressBar)view1.findViewById(0x7f070280);
            viewholder.e = (TextView)view1.findViewById(0x7f070283);
            viewholder.g = (ImageView)view1.findViewById(0x7f070285);
            viewholder.h = (TextView)view1.findViewById(0x7f07027f);
            view1.setTag(viewholder);
            viewholder1 = viewholder;
            view2 = view1;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
            view2 = view;
        }
        if(i != 0) goto _L2; else goto _L1
_L1:
        viewholder1.h.setText(0x7f0a0032);
        viewholder1.c.setVisibility(8);
        viewholder1.a.setVisibility(8);
        viewholder1.e.setVisibility(8);
        viewholder1.b.setImageDrawable(a.a(0x7f02013b));
        viewholder1.d.setVisibility(8);
        viewholder1.c.setVisibility(8);
        viewholder1.f.setVisibility(8);
        if(getCount() == 1)
            view2.setBackgroundDrawable(a.a(0x7f0201fe));
        else
            view2.setBackgroundDrawable(a.a(0x7f020201));
        if(s == null || s.equals(""))
            viewholder1.g.setVisibility(0);
        else
            viewholder1.g.setVisibility(8);
        view3 = view2;
_L10:
        return view3;
_L2:
        ThemeInfo themeinfo;
        boolean flag;
        if(i > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        themeinfo = (ThemeInfo)getItem(i + -1);
        themeinfo.g();
        JVM INSTR tableswitch 1001 1006: default 428
    //                   1001 900
    //                   1002 749
    //                   1003 535
    //                   1004 607
    //                   1005 962
    //                   1006 812;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        TextView textview;
        SkinSelectUI skinselectui;
        Object aobj[];
        int j;
        if(s != null && s.equals(themeinfo.i()))
            viewholder1.g.setVisibility(0);
        else
            viewholder1.g.setVisibility(8);
        if(i < -1 + getCount())
            view2.setBackgroundDrawable(a.a(0x7f0201fc));
        else
            view2.setBackgroundDrawable(a.a(0x7f0201fd));
        viewholder1.h.setText(themeinfo.h());
        viewholder1.b.setImageDrawable(new BitmapDrawable(MMCore.f().Q().c(themeinfo.c())));
        view3 = view2;
        if(true) goto _L10; else goto _L6
_L6:
        viewholder1.c.setVisibility(8);
        viewholder1.d.setVisibility(8);
        viewholder1.a.setVisibility(0);
        viewholder1.a.setText(0x7f0a002b);
        viewholder1.e.setVisibility(8);
        viewholder1.f.setVisibility(8);
        viewholder1.g.setVisibility(8);
          goto _L3
_L7:
        viewholder1.c.setVisibility(0);
        viewholder1.d.setVisibility(0);
        textview = viewholder1.c;
        skinselectui = a;
        aobj = new Object[1];
        if(themeinfo.e() == 0)
            j = 0;
        else
            j = (100 * themeinfo.f()) / themeinfo.e();
        aobj[0] = Integer.valueOf(j);
        textview.setText(skinselectui.getString(0x7f0a00a6, aobj));
        viewholder1.a.setVisibility(0);
        viewholder1.a.setText(0x7f0a0015);
        viewholder1.f.setVisibility(8);
        viewholder1.e.setVisibility(8);
        viewholder1.g.setVisibility(8);
          goto _L3
_L5:
        viewholder1.c.setVisibility(8);
        viewholder1.d.setVisibility(8);
        viewholder1.a.setVisibility(8);
        viewholder1.f.setVisibility(8);
        viewholder1.e.setVisibility(8);
        viewholder1.g.setVisibility(8);
          goto _L3
_L9:
        viewholder1.c.setVisibility(8);
        viewholder1.d.setVisibility(8);
        viewholder1.a.setVisibility(0);
        viewholder1.a.setText(0x7f0a002a);
        viewholder1.e.setVisibility(8);
        viewholder1.f.setVisibility(0);
        viewholder1.f.setText(Util.c(themeinfo.e()));
        viewholder1.g.setVisibility(8);
          goto _L3
_L4:
        viewholder1.c.setVisibility(8);
        viewholder1.d.setVisibility(8);
        viewholder1.a.setVisibility(8);
        viewholder1.f.setVisibility(8);
        viewholder1.e.setVisibility(8);
        viewholder1.g.setVisibility(0);
          goto _L3
_L8:
        viewholder1.c.setVisibility(8);
        viewholder1.d.setVisibility(8);
        viewholder1.a.setVisibility(8);
        viewholder1.e.setVisibility(0);
        viewholder1.f.setVisibility(8);
        viewholder1.e.setText(0x7f0a002c);
        viewholder1.g.setVisibility(8);
          goto _L3
    }

    private SkinSelectUI a;

    private class ViewHolder
    {

        Button a;
        ImageView b;
        TextView c;
        ProgressBar d;
        TextView e;
        TextView f;
        ImageView g;
        TextView h;

        ViewHolder()
        {
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelshake.ShakeItem;
import com.tencent.mm.modelshake.ShakeItemStorage;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.AvatarDrawable;
import com.tencent.mm.ui.MListAdapter;
import com.tencent.mm.ui.chatting.SpanUtil;

// Referenced classes of package com.tencent.mm.ui.shake:
//            ShakeReportUI

class ShakeFriendAdapter extends MListAdapter
{

    public ShakeFriendAdapter(ShakeReportUI shakereportui)
    {
        super(shakereportui, new ShakeItem());
        b = false;
        a = shakereportui;
        a();
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        ShakeItem shakeitem = (ShakeItem)obj;
        shakeitem.a(cursor);
        return shakeitem;
    }

    protected final void a()
    {
        n();
        b();
    }

    protected final void a(boolean flag)
    {
        b = flag;
        a();
    }

    public final void b()
    {
        if(b)
            a(MMCore.f().I().b());
        else
            a(MMCore.f().I().a());
        super.notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder1;
        ShakeItem shakeitem;
        int j;
        int k;
        int l;
        int i1;
        android.text.SpannableString spannablestring;
        AvatarDrawable avatardrawable;
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = View.inflate(a, 0x7f03009d, null);
            viewholder.a = (ImageView)view.findViewById(0x7f0701a1);
            viewholder.b = (TextView)view.findViewById(0x7f0701a2);
            viewholder.c = (TextView)view.findViewById(0x7f0701a3);
            viewholder.d = (ImageView)view.findViewById(0x7f0701a4);
            viewholder.e = (TextView)view.findViewById(0x7f0701a6);
            viewholder.f = (TextView)view.findViewById(0x7f0701a7);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        shakeitem = (ShakeItem)getItem(i);
        j = view.getPaddingBottom();
        k = view.getPaddingTop();
        l = view.getPaddingRight();
        i1 = view.getPaddingLeft();
        if(shakeitem.q() == 2)
            view.setBackgroundDrawable(a.a(0x7f0201a3));
        else
            view.setBackgroundDrawable(a.a(0x7f02019b));
        view.setPadding(i1, k, l, j);
        spannablestring = SpanUtil.a(a, shakeitem.d(), (int)viewholder1.b.getTextSize());
        viewholder1.b.setText(spannablestring);
        if(shakeitem.r() == 1)
            viewholder1.e.setText((new StringBuilder()).append(shakeitem.m()).append(a.getString(0x7f0a03f5)).toString());
        else
            viewholder1.e.setText(shakeitem.h());
        if(shakeitem.g() == null || shakeitem.g().trim().equals(""))
        {
            viewholder1.f.setVisibility(8);
        } else
        {
            viewholder1.f.setVisibility(0);
            android.text.SpannableString spannablestring1 = SpanUtil.a(a, shakeitem.g(), (int)viewholder1.b.getTextSize());
            viewholder1.f.setText(spannablestring1);
        }
        if(shakeitem.i() == 0)
            viewholder1.d.setVisibility(8);
        else
        if(shakeitem.i() == 1)
        {
            viewholder1.d.setVisibility(0);
            viewholder1.d.setImageDrawable(a.a(0x7f02013a));
        } else
        if(shakeitem.i() == 2)
        {
            viewholder1.d.setVisibility(0);
            viewholder1.d.setImageDrawable(a.a(0x7f020139));
        }
        avatardrawable = (AvatarDrawable)viewholder1.a.getDrawable();
        if(avatardrawable == null)
        {
            avatardrawable = new AvatarDrawable(viewholder1.a, AvatarDrawable.a(), AvatarDrawable.a());
            viewholder1.a.setImageDrawable(avatardrawable);
        }
        avatardrawable.a(shakeitem.c());
        if(MMCore.f().h().c(shakeitem.c()).l())
            viewholder1.c.setVisibility(0);
        else
            viewholder1.c.setVisibility(8);
        return view;
    }

    private final ShakeReportUI a;
    private boolean b;

    private class ViewHolder
    {

        ImageView a;
        TextView b;
        TextView c;
        ImageView d;
        TextView e;
        TextView f;

        ViewHolder()
        {
        }
    }

}

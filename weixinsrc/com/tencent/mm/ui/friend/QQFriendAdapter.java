// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelfriend.QQList;
import com.tencent.mm.modelfriend.QQListStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.MListAdapter;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;

class QQFriendAdapter extends MListAdapter
{

    public QQFriendAdapter(Context context, int i)
    {
        super(context, new QQList());
        b = (MMActivity)context;
        a = i;
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        QQList qqlist = (QQList)obj;
        if(qqlist == null)
            qqlist = new QQList();
        qqlist.a(cursor);
        return qqlist;
    }

    protected final void a()
    {
        b();
    }

    public final void b()
    {
        if(Util.i(f))
            a(MMCore.f().q().b(a));
        else
            a(MMCore.f().q().a(a, f));
        super.notifyDataSetChanged();
    }

    public final void b(String s)
    {
        f = Util.a(s.trim());
        n();
        b();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        QQList qqlist = (QQList)getItem(i);
        ViewHolder viewholder1;
        android.text.SpannableString spannablestring;
        android.graphics.Bitmap bitmap;
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = View.inflate(b, 0x7f0300a6, null);
            viewholder.b = (ImageView)view.findViewById(0x7f0700fe);
            viewholder.a = (TextView)view.findViewById(0x7f0701b4);
            viewholder.c = (TextView)view.findViewById(0x7f0701b5);
            viewholder.d = (ImageView)view.findViewById(0x7f0701b7);
            viewholder.e = (TextView)view.findViewById(0x7f0701b6);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        spannablestring = SpanUtil.a(b, qqlist.i(), (int)viewholder1.a.getTextSize());
        viewholder1.a.setText(spannablestring);
        viewholder1.c.setText((new StringBuilder()).append(qqlist.c()).append("").toString());
        if(qqlist.d() != 0 && !MMCore.f().h().a(qqlist.e()))
            viewholder1.e.setVisibility(0);
        else
            viewholder1.e.setVisibility(8);
        if(UIN.a((new StringBuilder()).append(qqlist.c()).append("").toString()) != 0)
            bitmap = AvatarLogic.a(qqlist.c());
        else
            bitmap = null;
        if(bitmap == null)
            viewholder1.b.setImageDrawable(b.a(0x7f020184));
        else
            viewholder1.b.setImageBitmap(bitmap);
        if(qqlist.d() == 1 || qqlist.d() == 2)
            viewholder1.d.setVisibility(0);
        else
            viewholder1.d.setVisibility(8);
        return view;
    }

    private int a;
    private MMActivity b;
    private String f;

    private class ViewHolder
    {

        TextView a;
        ImageView b;
        TextView c;
        ImageView d;
        TextView e;

        ViewHolder()
        {
        }
    }

}

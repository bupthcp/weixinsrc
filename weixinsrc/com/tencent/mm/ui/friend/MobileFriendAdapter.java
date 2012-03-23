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
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.MListAdapter;

class MobileFriendAdapter extends MListAdapter
{

    public MobileFriendAdapter(Context context)
    {
        super(context, new AddrUpload());
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        AddrUpload addrupload = (AddrUpload)obj;
        if(addrupload == null)
            addrupload = new AddrUpload();
        addrupload.a(cursor);
        return addrupload;
    }

    protected final void a()
    {
        b();
    }

    public final void b()
    {
        a(MMCore.f().t().d());
        super.notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        AddrUpload addrupload = (AddrUpload)getItem(i);
        ViewHolder viewholder1;
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = View.inflate(d, 0x7f030098, null);
            viewholder.a = (TextView)view.findViewById(0x7f070192);
            viewholder.b = (TextView)view.findViewById(0x7f070193);
            viewholder.c = (ImageView)view.findViewById(0x7f070195);
            viewholder.d = (TextView)view.findViewById(0x7f070194);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        viewholder1.a.setText(addrupload.d());
        viewholder1.b.setText(addrupload.g());
        if(addrupload.h() != 0 && !MMCore.f().h().a(addrupload.e()))
            viewholder1.d.setVisibility(0);
        else
            viewholder1.d.setVisibility(8);
        if(addrupload.h() == 1 || addrupload.h() == 2)
            viewholder1.c.setVisibility(0);
        else
            viewholder1.c.setVisibility(8);
        return view;
    }

    private class ViewHolder
    {

        TextView a;
        TextView b;
        ImageView c;
        TextView d;

        ViewHolder()
        {
        }
    }

}

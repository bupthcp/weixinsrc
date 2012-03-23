// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelfriend.FacebookFriend;
import com.tencent.mm.modelfriend.FacebookFriendStorage;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.MListAdapter;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;

class FacebookFriendAdapter extends MListAdapter
{

    public FacebookFriendAdapter(Context context, com.tencent.mm.ui.MListAdapter.CallBack callback)
    {
        super(context, new FacebookFriend());
        super.a(callback);
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        FacebookFriend facebookfriend = (FacebookFriend)obj;
        if(facebookfriend == null)
            facebookfriend = new FacebookFriend();
        facebookfriend.a(cursor);
        return facebookfriend;
    }

    protected final void a()
    {
        b();
    }

    public final void b()
    {
        a(MMCore.f().x().a());
        super.notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        FacebookFriend facebookfriend = (FacebookFriend)getItem(i);
        ViewHolder viewholder1;
        android.text.SpannableString spannablestring;
        android.graphics.Bitmap bitmap;
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = View.inflate(d, 0x7f0300a6, null);
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
        viewholder1.c.setVisibility(8);
        spannablestring = SpanUtil.a(d, facebookfriend.e(), (int)viewholder1.a.getTextSize());
        viewholder1.a.setText(spannablestring);
        if(facebookfriend.f() != 102 && !MMCore.f().h().a(facebookfriend.g()))
            viewholder1.e.setVisibility(0);
        else
            viewholder1.e.setVisibility(8);
        if(facebookfriend.f() == 100 || facebookfriend.f() == 101)
            viewholder1.d.setVisibility(0);
        else
            viewholder1.d.setVisibility(8);
        bitmap = AvatarLogic.b((new StringBuilder()).append("").append(facebookfriend.d()).toString());
        if(bitmap == null)
            viewholder1.b.setImageDrawable(((MMActivity)d).a(0x7f020184));
        else
            viewholder1.b.setImageBitmap(bitmap);
        return view;
    }

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

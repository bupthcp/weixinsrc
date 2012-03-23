// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui:
//            AddressAdapter, MMActivity

class MemberCardInfoAdapter extends AddressAdapter
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public MemberCardInfoAdapter(Context context, List list)
    {
        super(context, "", "");
        list.remove(ConfigStorageLogic.b());
        f = list;
    }

    public final Contact a(Contact contact, Cursor cursor)
    {
        if(contact == null)
            contact = new Contact();
        contact.a(cursor);
        return contact;
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        return a((Contact)obj, cursor);
    }

    protected final void a()
    {
        b();
    }

    public final void b()
    {
        if(f == null)
            a(MMCore.f().h().d());
        else
            a(MMCore.f().h().a(f));
        super.notifyDataSetChanged();
    }

    public final void b(String s)
    {
        if(f.contains(s))
            notifyDataSetChanged();
    }

    public int getCount()
    {
        return k().getCount();
    }

    public int getItemViewType(int i)
    {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Contact contact = (Contact)getItem(i);
        ViewHolder viewholder;
        android.text.SpannableString spannablestring;
        if(view == null)
        {
            view = View.inflate(b, 0x7f0300ca, null);
            ViewHolder viewholder1 = new ViewHolder();
            viewholder1.a = (TextView)view.findViewById(0x7f070227);
            viewholder1.b = (ImageView)view.findViewById(0x7f070106);
            viewholder1.c = (TextView)view.findViewById(0x7f070228);
            view.setTag(viewholder1);
            viewholder = viewholder1;
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        spannablestring = SpanUtil.a(b, contact.A(), (int)viewholder.a.getTextSize());
        viewholder.a.setText(spannablestring);
        viewholder.b.setImageBitmap(AvatarLogic.i(contact.s()));
        if(!contact.l() && !contact.s().equals(ConfigStorageLogic.b()))
            viewholder.c.setText((new StringBuilder()).append(contact.B()).append(b.getString(0x7f0a0389)).toString());
        else
            viewholder.c.setText(contact.B());
        return view;
    }

    public int getViewTypeCount()
    {
        return 1;
    }

    private List f;

    private class ViewHolder
    {

        TextView a;
        ImageView b;
        TextView c;

        ViewHolder()
        {
        }
    }

}

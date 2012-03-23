// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.ConversationAdapter;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;

class BottleConversationAdapter extends ConversationAdapter
{

    public BottleConversationAdapter(Context context, com.tencent.mm.ui.MListAdapter.CallBack callback)
    {
        super(context, callback);
        b = (MMActivity)context;
    }

    final String a(Contact contact)
    {
        String s;
        if(contact == null || Util.i(contact.M()))
            s = b.getString(0x7f0a03e6);
        else
            s = Util.h(contact.M()).trim();
        return s;
    }

    protected final int b(String s)
    {
        int i;
        i = 1;
        if(s == null || s.length() <= 0)
            break MISSING_BLOCK_LABEL_25;
        int j = Integer.valueOf(s).intValue();
        i = j;
_L2:
        return i;
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void b()
    {
        a(MMCore.f().j().d());
        if(e != null)
            e.a();
        super.notifyDataSetChanged();
    }

    public int getItemViewType(int i)
    {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Conversation conversation = (Conversation)getItem(i);
        com.tencent.mm.ui.ConversationAdapter.ViewHolder viewholder1;
        Contact contact;
        TextView textview;
        Object obj;
        String s;
        android.text.SpannableString spannablestring;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        if(view == null)
        {
            com.tencent.mm.ui.ConversationAdapter.ViewHolder viewholder = new com.tencent.mm.ui.ConversationAdapter.ViewHolder();
            view = View.inflate(b, 0x7f0300f6, null);
            viewholder.a = (ImageView)view.findViewById(0x7f070106);
            viewholder.b = (TextView)view.findViewById(0x7f070108);
            viewholder.e = (TextView)view.findViewById(0x7f07010b);
            viewholder.f = (TextView)view.findViewById(0x7f07010d);
            viewholder.g = (ImageView)view.findViewById(0x7f07010c);
            viewholder.h = (TextView)view.findViewById(0x7f070107);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (com.tencent.mm.ui.ConversationAdapter.ViewHolder)view.getTag();
        }
        contact = MMCore.f().h().c(conversation.g());
        viewholder1.b.setText(a(contact));
        textview = viewholder1.e;
        if(conversation.c() == 1)
            obj = b.getString(0x7f0a012d);
        else
            obj = Util.a(b, conversation.f(), true);
        textview.setText(((CharSequence) (obj)));
        b(viewholder1.a, ContactStorageLogic.u(conversation.g()));
        s = MsgInfoStorageLogic.a(conversation.d(), conversation.g(), conversation.h(), b(conversation.i()), b);
        spannablestring = SpanUtil.a(b, s, (int)viewholder1.f.getTextSize());
        viewholder1.f.setText(spannablestring);
        viewholder1.f.setTextColor(b.b(0x7f08001f));
        if(b(conversation.i()) == 34 && conversation.d() == 0 && !Util.i(conversation.h()) && !(new com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent(conversation.h())).d())
            viewholder1.f.setTextColor(b.b(0x7f080020));
        j = a(conversation.c());
        if(j != -1)
        {
            viewholder1.g.setBackgroundResource(j);
            viewholder1.g.setVisibility(0);
        } else
        {
            viewholder1.g.setVisibility(8);
        }
        k = view.getPaddingBottom();
        l = view.getPaddingTop();
        i1 = view.getPaddingRight();
        j1 = view.getPaddingLeft();
        if(conversation.b() > 100)
        {
            viewholder1.h.setText("...");
            viewholder1.h.setVisibility(0);
            view.setBackgroundDrawable(b.a(0x7f0201a3));
        } else
        if(conversation.b() > 0)
        {
            viewholder1.h.setText((new StringBuilder()).append("").append(conversation.b()).toString());
            viewholder1.h.setVisibility(0);
            view.setBackgroundDrawable(b.a(0x7f0201a3));
        } else
        {
            viewholder1.h.setVisibility(4);
            view.setBackgroundDrawable(b.a(0x7f02019b));
        }
        view.setPadding(j1, l, i1, k);
        return view;
    }

    public int getViewTypeCount()
    {
        return 1;
    }

    private final MMActivity b;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.*;
import com.tencent.mm.storage.Conversation;
import com.tencent.mm.storage.ConversationStorage;

// Referenced classes of package com.tencent.mm.ui:
//            ConversationAdapter, MMActivity

class QConversationAdapter extends ConversationAdapter
{

    public QConversationAdapter(Context context, MListAdapter.CallBack callback)
    {
        super(context, callback);
        b = (MMActivity)context;
    }

    public final void b()
    {
        a(MMCore.f().j().f(ContactStorageLogic.c));
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
        ConversationAdapter.ViewHolder viewholder1;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        if(view == null)
        {
            ConversationAdapter.ViewHolder viewholder = new ConversationAdapter.ViewHolder();
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
            viewholder1 = (ConversationAdapter.ViewHolder)view.getTag();
        }
        viewholder1.b.setText(ContactStorageLogic.e(conversation.g()));
        viewholder1.e.setText(a(conversation));
        b(viewholder1.a, conversation.g());
        viewholder1.f.setText(MsgInfoStorageLogic.a(conversation.d(), conversation.g(), conversation.h(), b(conversation.i()), b));
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

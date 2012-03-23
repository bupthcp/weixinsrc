// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.test.Test;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.util.*;

// Referenced classes of package com.tencent.mm.ui:
//            MListAdapter, MMActivity, AvatarDrawable

public class ConversationAdapter extends MListAdapter
{

    public ConversationAdapter(Context context, MListAdapter.CallBack callback)
    {
        super(context, new Conversation());
        b = null;
        f = new ColorStateList[2];
        super.a(callback);
        a = (MMActivity)context;
        Log.d("MicroMsg.ConversationAdapter", "set color");
        f[0] = a.b(0x7f08001f); //mm_list_textcolor_two
        f[1] = a.b(0x7f080020); //mm_list_textcolor_unread
        g = new HashMap();
    }

    protected static int a(int i)
    {
        int j = -1;
        i;
        JVM INSTR tableswitch 0 5: default 44
    //                   0 44
    //                   1 46
    //                   2 44
    //                   3 52
    //                   4 64
    //                   5 76;
           goto _L1 _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        return j;
_L2:
        j = 0x7f0201e5;
        continue; /* Loop/switch isn't completed */
_L3:
        if(Test.b)
            j = 0x7f0201e3;
        continue; /* Loop/switch isn't completed */
_L4:
        if(Test.b)
            j = 0x7f0201e4;
        continue; /* Loop/switch isn't completed */
_L5:
        j = 0x7f0201e2;
        if(true) goto _L1; else goto _L6
_L6:
    }

    protected static void b(ImageView imageview, String s)
    {
        AvatarDrawable avatardrawable = (AvatarDrawable)imageview.getDrawable();
        if(avatardrawable == null)
        {
            avatardrawable = new AvatarDrawable(imageview, AvatarDrawable.a(), AvatarDrawable.a());
            imageview.setImageDrawable(avatardrawable);
        }
        avatardrawable.a(s);
    }

    protected final CharSequence a(Conversation conversation)
    {
        Object obj;
        if(conversation.c() == 1)
            obj = a.getString(0x7f0a012d);
        else
        if(conversation.f() == 0x7fffffffffffffffL)
            obj = "";
        else
            obj = Util.a(a, conversation.f(), true);
        return ((CharSequence) (obj));
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        Conversation conversation = (Conversation)obj;
        if(conversation == null)
            conversation = new Conversation();
        conversation.a(cursor);
        return conversation;
    }

    protected final void a()
    {
        b();
    }

    protected final void a(ImageView imageview, String s)
    {
        if(s.toLowerCase().endsWith("@t.qq.com"))
        {
            imageview.setImageDrawable(a.a(0x7f020143));//icon_tencent_weibo
            imageview.setVisibility(0);
        } else
        {
            s.toLowerCase().endsWith("@chatroom");
            imageview.setVisibility(8);
        }
    }

    public final void a(List list)
    {
        if(list == null)
            list = new LinkedList();
        b = list;
        a_(null);
    }

    public final void a_(String s)
    {
        Log.e("MicroMsg.ConversationAdapter", (new StringBuilder()).append("notify [").append(s).append("] changed").toString());
        if(s == null || s.equals("") || g == null) goto _L2; else goto _L1
_L1:
        g.remove(s);
_L4:
        super.a_(s);
        return;
_L2:
        if(g != null)
            g.clear();
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected int b(String s)
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

    public void b()
    {
        a(MMCore.f().j().a(ContactStorageLogic.a, b));
        super.notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Conversation conversation = (Conversation)getItem(i);
        int j;
        ViewHolder viewholder;
        ConversationItem conversationitem;
        ConversationItem conversationitem1;
        int k;
        int l;
        String s;
        boolean flag;
        RoleInfo roleinfo;
        boolean flag1;
        boolean flag2;
        Object obj;
        int i1;
        if(b(conversation.i()) == 34 && conversation.d() == 0 && !Util.i(conversation.h()) && !(new com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent(conversation.h())).d())
            j = 1;
        else
            j = 0;
        if(view == null)
        {
            viewholder = new ViewHolder();
            view = View.inflate(a, 0x7f030044, null);//conversation_item
            viewholder.a = (ImageView)view.findViewById(0x7f070106);//avatar_iv
            viewholder.b = (TextView)view.findViewById(0x7f070108);//nickname_tv
            viewholder.c = (TextView)view.findViewById(0x7f07010a);//group_count_tv
            viewholder.d = (ImageView)view.findViewById(0x7f070109);//usericon_iv
            viewholder.e = (TextView)view.findViewById(0x7f07010b);//update_time_tv
            viewholder.f = (TextView)view.findViewById(0x7f07010d);//last_msg_tv
            viewholder.g = (ImageView)view.findViewById(0x7f07010c);//state_iv
            viewholder.h = (TextView)view.findViewById(0x7f070107);//tipcnt_tv
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        conversationitem = (ConversationItem)g.get(conversation.g());
        if(conversationitem != null) goto _L2; else goto _L1
_L1:
        conversationitem1 = new ConversationItem();
        conversationitem1.a = SpanUtil.a(a, ContactStorageLogic.e(conversation.g()), (int)viewholder.b.getTextSize());
        conversationitem1.c = a(conversation);
        k = (int)viewholder.f.getTextSize();
        l = ConfigStorageLogic.d();
        s = conversation.g();
        if(Util.a((Integer)MMCore.f().f().a(17)) == 1)
            flag = true;
        else
            flag = false;
        if(s.equals("qqmail") && !flag)
        {
            obj = a.getString(0x7f0a019f);
        } else
        {
            roleinfo = MMCore.f().m().a("@t.qq.com");
            if(roleinfo != null && roleinfo.b())
                flag1 = true;
            else
                flag1 = false;
            if(s.equals("tmessage") && !flag1)
            {
                obj = a.getString(0x7f0a019f);
            } else
            {
                if((l & 0x40) != 0)
                    flag2 = true;
                else
                    flag2 = false;
                if(s.equals("qmessage") && !flag2)
                    obj = a.getString(0x7f0a019f);
                else
                    obj = SpanUtil.a(a, MsgInfoStorageLogic.a(conversation.d(), conversation.g(), conversation.h(), b(conversation.i()), a), k);
            }
        }
        conversationitem1.d = ((CharSequence) (obj));
        if(ContactStorageLogic.b(conversation.g()))
            conversationitem1.b = (new StringBuilder()).append("(").append(ChatroomMembersLogic.e(conversation.g())).append(")").toString();
        else
            conversationitem1.b = null;
        conversationitem1.e = a(conversation.c());
        if(conversation.b() <= 100) goto _L4; else goto _L3
_L3:
        conversationitem1.f = "...";
_L6:
        g.put(conversation.g(), conversationitem1);
        conversationitem = conversationitem1;
_L2:
        viewholder.f.setTextColor(f[j]);
        a(viewholder.d, conversation.g());
        viewholder.b.setText(conversationitem.a);
        viewholder.e.setText(conversationitem.c);
        viewholder.c.setText(conversationitem.b);
        viewholder.f.setText(conversationitem.d);
        i1 = conversationitem.e;
        if(i1 != -1)
        {
            viewholder.g.setBackgroundDrawable(a.a(i1));
            viewholder.g.setVisibility(0);
        } else
        {
            viewholder.g.setVisibility(8);
        }
        b(viewholder.a, conversation.g());
        if(conversation.b() > 100)
        {
            viewholder.h.setText("...");
            viewholder.h.setVisibility(0);
        } else
        if(conversation.b() > 0)
        {
            viewholder.h.setText((new StringBuilder()).append("").append(conversation.b()).toString());
            viewholder.h.setVisibility(0);
        } else
        {
            viewholder.h.setVisibility(4);
        }
        return view;
_L4:
        if(conversation.b() > 0)
            conversationitem1.f = (new StringBuilder()).append("").append(conversation.b()).toString();
        if(true) goto _L6; else goto _L5
_L5:
    }

    protected MMActivity a;
    private List b;
    private ColorStateList f[];
    private HashMap g;

    private class ViewHolder
    {

        public ImageView a;
        public TextView b;
        public TextView c;
        public ImageView d;
        public TextView e;
        public TextView f;
        public ImageView g;
        public TextView h;

        public ViewHolder()
        {
        }
    }


    private class ConversationItem
    {

        public CharSequence a;
        public CharSequence b;
        public CharSequence c;
        public CharSequence d;
        public int e;
        public CharSequence f;
        private ConversationAdapter g;

        public ConversationItem()
        {
            g = ConversationAdapter.this;
            super();
        }
    }

}

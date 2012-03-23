// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.*;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MainTabUI, AvatarDrawable, TConversationAdapter, 
//            MListAdapter

public class TConversationUI extends MMActivity
{

    public TConversationUI()
    {
        d = "";
    }

    static MListAdapter a(TConversationUI tconversationui)
    {
        return tconversationui.c;
    }

    static String a(TConversationUI tconversationui, String s)
    {
        tconversationui.d = s;
        return s;
    }

    static void a(TConversationUI tconversationui, int i)
    {
        if(i <= 0)
        {
            tconversationui.b.setVisibility(0);
            tconversationui.a.setVisibility(8);
        } else
        {
            tconversationui.b.setVisibility(8);
            tconversationui.a.setVisibility(0);
        }
    }

    private static void b()
    {
        Conversation conversation;
        MsgInfo msginfo = MMCore.f().i().a(4);
        if(msginfo != null && msginfo.b() > 0L)
        {
            Log.d("MicroMsg.MicroBlogMsgUI", (new StringBuilder()).append("resetUnread: lastReadTime = ").append(msginfo.g()).toString());
            MMCore.f().f().a(12294, Long.valueOf(msginfo.g()));
        }
        conversation = MMCore.f().j().d("tmessage");
        if(conversation != null && Util.h(conversation.g()).length() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.MicroBlogMsgUI", "resetUnread: can not find TMessage");
_L4:
        return;
_L2:
        conversation.a(0);
        if(MMCore.f().j().a(conversation, conversation.g()) == -1)
            Log.a("MicroMsg.MicroBlogMsgUI", "reset tmessage unread failed");
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void b(TConversationUI tconversationui)
    {
        tconversationui.o();
    }

    static ListView c(TConversationUI tconversationui)
    {
        return tconversationui.a;
    }

    private void o()
    {
        Intent intent = new Intent(this, com/tencent/mm/ui/MainTabUI);
        intent.addFlags(0x4000000);
        startActivity(intent);
    }

    protected final int a()
    {
        return 0x7f0300f5;
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        super.onContextItemSelected(menuitem);
        menuitem.getItemId();
        JVM INSTR tableswitch 1 2: default 36
    //                   1 53
    //                   2 117;
           goto _L1 _L2 _L3
_L1:
        MMCore.g().b(new NetSceneSync(5));
        return true;
_L2:
        MsgInfo msginfo1 = MMCore.f().i().a(d);
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(d, msginfo1.c()));
        MsgInfoStorageLogic.d(d);
        MMCore.f().j().a(d);
        continue; /* Loop/switch isn't completed */
_L3:
        MsgInfo msginfo = MMCore.f().i().a(d);
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(d, msginfo.c()));
        MsgInfoStorageLogic.d(d);
        if(true) goto _L1; else goto _L4
_L4:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        AvatarDrawable.a(this);
        Contact contact = MMCore.f().h().c("tmessage");
        boolean flag;
        if(contact != null && contact.o() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("can not find tmessage", flag);
        a = (ListView)findViewById(0x7f070296);
        b = (TextView)findViewById(0x7f07018e);
        b.setText(0x7f0a0132);
        c = new TConversationAdapter(this, new _cls1(contact));
        a.setAdapter(c);
        registerForContextMenu(a);
        a.setOnItemClickListener(new _cls2());
        a.setOnItemLongClickListener(new _cls3());
        a(getString(0x7f0a0013), new _cls4(contact));
        b(new _cls5());
        a(new _cls6());
        MMCore.g().b(new NetSceneSync(9));
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        contextmenu.setHeaderTitle(MMCore.f().h().c(d).A());
        contextmenu.add(adaptercontextmenuinfo.position, 1, 0, 0x7f0a0122);
        contextmenu.add(adaptercontextmenuinfo.position, 2, 0, 0x7f0a0123);
    }

    public void onDestroy()
    {
        MMCore.f().j().b(c);
        com.tencent.mm.ui.AvatarDrawable.b(this);
        c.n();
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            o();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    public void onPause()
    {
        Log.e("MicroMsg.MicroBlogMsgUI", "on pause");
        MMCore.f().j().b(c);
        b();
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        b();
        MMCore.f().j().a(c);
        c.a_(null);
    }

    private ListView a;
    private TextView b;
    private MListAdapter c;
    private String d;

    private class _cls1
        implements MListAdapter.CallBack
    {

        public final void a()
        {
            TConversationUI tconversationui = b;
            String s = a.z();
            int i = MMCore.f().j().h(ContactStorageLogic.b);
            if(i <= 0)
                tconversationui.d(s);
            else
                tconversationui.d((new StringBuilder()).append(s).append("(").append(i).append(")").toString());
            TConversationUI.a(b, TConversationUI.a(b).getCount());
        }

        public final void b()
        {
        }

        private Contact a;
        private TConversationUI b;

        _cls1(Contact contact)
        {
            b = TConversationUI.this;
            a = contact;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            Conversation conversation = (Conversation)TConversationUI.a(a).getItem(i);
            if(conversation.b() > 0)
                MMAppMgr.e();
            Intent intent = new Intent(a, com/tencent/mm/ui/chatting/ChattingUI);
            intent.addFlags(0x4000000);
            intent.putExtra("Chat_User", conversation.g());
            a.startActivity(intent);
        }

        private TConversationUI a;

        _cls2()
        {
            a = TConversationUI.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
        {
            Conversation conversation = (Conversation)TConversationUI.a(a).getItem(i);
            TConversationUI.a(a, conversation.g());
            return false;
        }

        private TConversationUI a;

        _cls3()
        {
            a = TConversationUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(b, com/tencent/mm/ui/contact/ContactInfoUI);
            intent.putExtra("Contact_User", a.s());
            intent.putExtra("Chat_Readonly", true);
            b.startActivity(intent);
        }

        private Contact a;
        private TConversationUI b;

        _cls4(Contact contact)
        {
            b = TConversationUI.this;
            a = contact;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            com.tencent.mm.ui.TConversationUI.b(a);
        }

        private TConversationUI a;

        _cls5()
        {
            a = TConversationUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(TConversationUI.c(a));
        }

        private TConversationUI a;

        _cls6()
        {
            a = TConversationUI.this;
            super();
        }
    }

}

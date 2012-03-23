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
//            MMActivity, MainTabUI, AvatarDrawable, QConversationAdapter, 
//            MListAdapter

public class QConversationUI extends MMActivity
{

    public QConversationUI()
    {
        d = "";
    }

    static MListAdapter a(QConversationUI qconversationui)
    {
        return qconversationui.c;
    }

    static String a(QConversationUI qconversationui, String s)
    {
        qconversationui.d = s;
        return s;
    }

    static void a(QConversationUI qconversationui, int i)
    {
        if(i <= 0)
        {
            qconversationui.a.setVisibility(0);
            qconversationui.b.setVisibility(8);
        } else
        {
            qconversationui.a.setVisibility(8);
            qconversationui.b.setVisibility(0);
        }
    }

    private static void b()
    {
        Conversation conversation;
        MsgInfo msginfo = MMCore.f().i().a(2);
        if(msginfo != null && msginfo.b() > 0L)
        {
            Log.d("MicroMsg.MicroBlogMsgUI", (new StringBuilder()).append("resetUnread: lastReadTime = ").append(msginfo.g()).toString());
            MMCore.f().f().a(12295, Long.valueOf(msginfo.g()));
        }
        conversation = MMCore.f().j().d("qmessage");
        if(conversation != null && Util.h(conversation.g()).length() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.MicroBlogMsgUI", "resetUnread: can not find QMessage");
_L4:
        return;
_L2:
        conversation.a(0);
        if(MMCore.f().j().a(conversation, conversation.g()) == -1)
            Log.a("MicroMsg.MicroBlogMsgUI", "reset qmessage unread failed");
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void b(QConversationUI qconversationui)
    {
        qconversationui.o();
    }

    static ListView c(QConversationUI qconversationui)
    {
        return qconversationui.b;
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
        Contact contact = MMCore.f().h().c("qmessage");
        boolean flag;
        if(contact != null && contact.o() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("can not find qmessage", flag);
        b = (ListView)findViewById(0x7f070296);
        a = (TextView)findViewById(0x7f07018e);
        a.setText(0x7f0a0133);
        c = new QConversationAdapter(this, new _cls1(contact));
        b.setAdapter(c);
        registerForContextMenu(b);
        b.setOnItemClickListener(new _cls2());
        b.setOnItemLongClickListener(new _cls3());
        MMCore.g().b(new NetSceneSync(10));
        a(getString(0x7f0a0013), new _cls4(contact));
        b(new _cls5());
        a(new _cls6());
        MMCore.g().b(new NetSceneSync(10));
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

    private TextView a;
    private ListView b;
    private MListAdapter c;
    private String d;

    private class _cls1
        implements MListAdapter.CallBack
    {

        public final void a()
        {
            QConversationUI qconversationui = b;
            String s = a.z();
            int i = MMCore.f().j().h(ContactStorageLogic.c);
            if(i <= 0)
                qconversationui.d(s);
            else
                qconversationui.d((new StringBuilder()).append(s).append("(").append(i).append(")").toString());
            QConversationUI.a(b, QConversationUI.a(b).getCount());
        }

        public final void b()
        {
        }

        private Contact a;
        private QConversationUI b;

        _cls1(Contact contact)
        {
            b = QConversationUI.this;
            a = contact;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            Conversation conversation = (Conversation)QConversationUI.a(a).getItem(i);
            if(conversation.b() > 0)
                MMAppMgr.e();
            Intent intent = new Intent(a, com/tencent/mm/ui/chatting/ChattingUI);
            intent.addFlags(0x4000000);
            intent.putExtra("Chat_User", conversation.g());
            a.startActivity(intent);
        }

        private QConversationUI a;

        _cls2()
        {
            a = QConversationUI.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
        {
            Conversation conversation = (Conversation)QConversationUI.a(a).getItem(i);
            QConversationUI.a(a, conversation.g());
            return false;
        }

        private QConversationUI a;

        _cls3()
        {
            a = QConversationUI.this;
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
        private QConversationUI b;

        _cls4(Contact contact)
        {
            b = QConversationUI.this;
            a = contact;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            com.tencent.mm.ui.QConversationUI.b(a);
        }

        private QConversationUI a;

        _cls5()
        {
            a = QConversationUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(QConversationUI.c(a));
        }

        private QConversationUI a;

        _cls6()
        {
            a = QConversationUI.this;
            super();
        }
    }

}

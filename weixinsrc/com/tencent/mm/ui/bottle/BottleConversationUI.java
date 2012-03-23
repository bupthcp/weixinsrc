// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Intent;
import android.content.res.Resources;
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
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleConversationAdapter

public class BottleConversationUI extends MMActivity
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public BottleConversationUI()
    {
        e = "";
    }

    static BottleConversationAdapter a(BottleConversationUI bottleconversationui)
    {
        return bottleconversationui.c;
    }

    static String a(BottleConversationUI bottleconversationui, String s)
    {
        bottleconversationui.e = s;
        return s;
    }

    static TextView b(BottleConversationUI bottleconversationui)
    {
        return bottleconversationui.a;
    }

    static void b()
    {
        Conversation conversation;
        MsgInfo msginfo = MMCore.f().i().a(8);
        if(msginfo != null && msginfo.b() > 0L)
        {
            Log.d("MicroMsg.Bottle.BottleConversationUI", (new StringBuilder()).append("resetUnread: lastReadTime = ").append(msginfo.g()).toString());
            MMCore.f().f().a(12306, Long.valueOf(msginfo.g()));
        }
        conversation = MMCore.f().j().d("floatbottle");
        if(conversation != null && Util.h(conversation.g()).length() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.Bottle.BottleConversationUI", "resetUnread: can not find bottle");
_L4:
        return;
_L2:
        conversation.a(0);
        if(MMCore.f().j().a(conversation, conversation.g()) == -1)
            Log.a("MicroMsg.Bottle.BottleConversationUI", "reset bottle unread failed");
        if(true) goto _L4; else goto _L3
_L3:
    }

    static ListView c(BottleConversationUI bottleconversationui)
    {
        return bottleconversationui.b;
    }

    static String d(BottleConversationUI bottleconversationui)
    {
        return bottleconversationui.e;
    }

    protected final int a()
    {
        return 0x7f0300f5;
    }

    public final void a_(String s)
    {
        if(c != null)
            c.a_(null);
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        super.onContextItemSelected(menuitem);
        menuitem.getItemId();
        JVM INSTR tableswitch 1 2: default 36
    //                   1 53
    //                   2 88;
           goto _L1 _L2 _L3
_L1:
        MMCore.g().b(new NetSceneSync(5));
        return true;
_L2:
        MMAlert.a(this, getResources().getString(0x7f0a03e1), null, getResources().getString(0x7f0a03e2), new _cls7());
        continue; /* Loop/switch isn't completed */
_L3:
        MsgInfoStorageLogic.d(e);
        if(true) goto _L1; else goto _L4
_L4:
    }

    public void onCreate(Bundle bundle)
    {
        String s;
        super.onCreate(bundle);
        AvatarDrawable.a(this);
        MMCore.f().h().a(this);
        int i = ConfigStorageLogic.d();
        int j = ConfigStorageLogic.f();
        int k = i | 0x1000;
        int l = j & 0xffffffbf;
        MMCore.f().f().a(7, Integer.valueOf(k));
        MMCore.f().f().a(34, Integer.valueOf(l));
        b = (ListView)findViewById(0x7f070296);
        a = (TextView)findViewById(0x7f07018e);
        a.setText(0x7f0a03d8);
        c = new BottleConversationAdapter(this, new _cls1());
        b.setAdapter(c);
        registerForContextMenu(b);
        b.setOnItemClickListener(new _cls2());
        b.setOnItemLongClickListener(new _cls3());
        MMCore.g().b(new NetSceneSync(11));
        b(new _cls4());
        s = getIntent().getStringExtra("conversation_from");
        if(!Util.i(s) || !Util.i(d)) goto _L2; else goto _L1
_L1:
        _cls5 _lcls5 = new _cls5();
        a(getString(0x7f0a028a), _lcls5);
_L4:
        a(new _cls6());
        return;
_L2:
        if(!Util.i(s))
            d = s;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        Object aobj[] = new Object[1];
        aobj[0] = c.a(MMCore.f().h().c(e));
        contextmenu.setHeaderTitle(getString(0x7f0a03d7, aobj));
        contextmenu.add(adaptercontextmenuinfo.position, 1, 0, 0x7f0a03e4);
        contextmenu.add(adaptercontextmenuinfo.position, 2, 0, 0x7f0a03e5);
    }

    public void onDestroy()
    {
        MMCore.f().j().b(c);
        AvatarDrawable.b(this);
        MMCore.f().h().b(this);
        c.n();
        super.onDestroy();
    }

    public void onPause()
    {
        MMCore.f().j().b(c);
        b();
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        MMCore.f().j().a(c);
        c.a_(null);
    }

    private TextView a;
    private ListView b;
    private BottleConversationAdapter c;
    private String d;
    private String e;

    private class _cls7
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int i)
        {
            if(i == 0)
            {
                MsgInfo msginfo = MMCore.f().i().a(BottleConversationUI.d(a));
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(BottleConversationUI.d(a), msginfo.c()));
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDeleteBottle(BottleConversationUI.d(a), 0));
                MMCore.g().b(new NetSceneSync(5));
                MsgInfoStorageLogic.d(BottleConversationUI.d(a));
                MMCore.f().j().a(BottleConversationUI.d(a));
                MMCore.f().H().c(BottleLogic.a(BottleConversationUI.d(a)));
            }
        }

        private BottleConversationUI a;

        _cls7()
        {
            a = BottleConversationUI.this;
            super();
        }
    }


    private class _cls1
        implements com.tencent.mm.ui.MListAdapter.CallBack
    {

        public final void a()
        {
            BottleConversationUI bottleconversationui = a;
            String s = a.getString(0x7f0a03ce);
            int i = MMCore.f().j().e();
            if(i <= 0)
                bottleconversationui.d(s);
            else
                bottleconversationui.d((new StringBuilder()).append(s).append("(").append(i).append(")").toString());
            if(BottleConversationUI.a(a).getCount() <= 0)
            {
                com.tencent.mm.ui.bottle.BottleConversationUI.b(a).setVisibility(0);
                BottleConversationUI.c(a).setVisibility(8);
            } else
            {
                com.tencent.mm.ui.bottle.BottleConversationUI.b(a).setVisibility(8);
                BottleConversationUI.c(a).setVisibility(0);
            }
        }

        public final void b()
        {
        }

        private BottleConversationUI a;

        _cls1()
        {
            a = BottleConversationUI.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            Conversation conversation = (Conversation)BottleConversationUI.a(a).getItem(i);
            if(conversation.b() > 0)
                MMAppMgr.e();
            Intent intent = new Intent(a, com/tencent/mm/ui/bottle/BottleChattingUI);
            intent.addFlags(0x4000000);
            intent.putExtra("Chat_User", conversation.g());
            a.startActivity(intent);
        }

        private BottleConversationUI a;

        _cls2()
        {
            a = BottleConversationUI.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
        {
            Conversation conversation = (Conversation)BottleConversationUI.a(a).getItem(i);
            BottleConversationUI.a(a, conversation.g());
            return false;
        }

        private BottleConversationUI a;

        _cls3()
        {
            a = BottleConversationUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private BottleConversationUI a;

        _cls4()
        {
            a = BottleConversationUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/bottle/BottleBeachUI);
            a.startActivity(intent);
            a.finish();
        }

        private BottleConversationUI a;

        _cls5()
        {
            a = BottleConversationUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(BottleConversationUI.c(a));
        }

        private BottleConversationUI a;

        _cls6()
        {
            a = BottleConversationUI.this;
            super();
        }
    }

}

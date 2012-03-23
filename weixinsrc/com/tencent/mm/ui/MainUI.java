// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.*;
import android.view.*;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelbottle.BottleLogic;
import com.tencent.mm.modelgetcontact.GetContactInfoStorage;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelpmsg.PushMessage;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.masssend.model.MasSendInfoStorage;
import com.tencent.mm.plugin.readerapp.model.ReaderAppInfoStorage;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, NetWarnView, ADListView, ADListAdapter, 
//            LauncherUI, MMErrorProcessor, Updater, ConversationAdapter, 
//            AvatarWrapperScrollListener, MMAppMgr, AvatarDrawable, MMAlert

public class MainUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd, IOnSceneProgressEnd, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public MainUI()
    {
        c = null;
        d = null;
        h = "";
        a = new _cls1();
    }

    static PopupWindow a(MainUI mainui, PopupWindow popupwindow)
    {
        mainui.k = popupwindow;
        return popupwindow;
    }

    static String a(MainUI mainui, String s)
    {
        mainui.h = s;
        return s;
    }

    static void a(MainUI mainui)
    {
        mainui.o();
    }

    static void a(MainUI mainui, int i1)
    {
        if(i1 <= 0)
        {
            mainui.f.setVisibility(0);
            mainui.e.setVisibility(8);
        } else
        {
            mainui.f.setVisibility(8);
            mainui.e.setVisibility(0);
        }
    }

    static ConversationAdapter b(MainUI mainui)
    {
        return mainui.g;
    }

    static PopupWindow c(MainUI mainui)
    {
        return mainui.k;
    }

    static ListView d(MainUI mainui)
    {
        return mainui.e;
    }

    static ProgressDialog e(MainUI mainui)
    {
        return mainui.c;
    }

    private void o()
    {
        if(i != null && j != null)
            if(((NetWarnView)findViewById(0x7f0701a8)).a(this))
            {
                i.setVisibility(8);
            } else
            {
                PushMessage pushmessage = PushMessage.a(this);
                if(pushmessage == null)
                {
                    i.setVisibility(8);
                } else
                {
                    j.a(pushmessage);
                    j.b();
                    if(i.a())
                        i.setVisibility(0);
                    else
                        i.setVisibility(8);
                }
            }
    }

    protected final int a()
    {
        return 0x7f030064;  //main.xml
    }

    public final void a(int i1, int j1, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 38)
        {
            int k1;
            if(j1 != 0)
                k1 = (i1 * 100) / j1;
            else
                k1 = 0;
            (new Handler()).post(new _cls10(k1));
        }
    }

    public final void a(int i1, int j1, String s, NetSceneBase netscenebase)
    {
        boolean flag;
        flag = false;
        Log.c("MicroMsg.MainUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s).append(" type = ").append(netscenebase.b()).append(" @").append(hashCode()).toString());
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        if(d != null)
        {
            d.dismiss();
            d = null;
        }
        d = MMErrorProcessor.a(this, i1, j1, (new Intent()).setClass(this, com/tencent/mm/ui/LauncherUI).putExtra("Intro_Switch", true).addFlags(0x4000000));
        if(d == null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(i1 == 4)
        {
            Log.d("MicroMsg.MMErrorProcessor", (new StringBuilder()).append("errType = ").append(i1).append(" errCode = ").append(j1).toString());
            switch(j1)
            {
            default:
                break;

            case -16: 
                break; /* Loop/switch isn't completed */

            case -17: 
                break;
            }
            break MISSING_BLOCK_LABEL_342;
        }
_L4:
        if(!flag && netscenebase.b() == 38 && ((NetSceneSync)netscenebase).d())
        {
            (new Handler()).post(new _cls9());
            if((0x80 & ConfigStorageLogic.e()) != 0)
            {
                MMCore.f().u();
                MasSendInfoStorage.d();
                int k1 = 0xffffff7f & ConfigStorageLogic.e();
                MMCore.f().f().a(40, Integer.valueOf(k1));
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
        Updater.a(c(), 0x7f0a00d7, new MMErrorProcessor._cls3(this), flag).a(1, new MMErrorProcessor._cls4(this));
        flag = true;
          goto _L4
        Long long1 = (Long)MMCore.e().a(16);
        if(long1 != null && Util.d(long1.longValue()) < 0x15180L)
        {
            flag = true;
        } else
        {
            Updater.a(c(), 0x7f0a00d6, new MMErrorProcessor._cls5(this), true).a(2, new MMErrorProcessor._cls6(this));
            flag = true;
        }
          goto _L4
    }

    public final void a_(String s)
    {
        if("8193".equals(s))
            o();
    }

    public final void b()
    {
        int i1 = MMCore.f().j().h(ContactStorageLogic.a);
        if(i1 <= 0)
            d(0x7f0a011f);
        else
            d((new StringBuilder()).append(getString(0x7f0a011f)).append("(").append(i1).append(")").toString());
    }

    public final void b(String s)
    {
        if(Util.h(s).length() > 0 && s.equals(ConfigStorageLogic.b()))
            o();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        o();
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        super.onContextItemSelected(menuitem);
        menuitem.getItemId();
        JVM INSTR tableswitch 7 7: default 32
    //                   7 34;
           goto _L1 _L2
_L1:
        return true;
_L2:
        if(ContactStorageLogic.b(h))
        {
            MsgInfo msginfo1 = MMCore.f().i().a(h);
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(h, msginfo1.c()));
            MsgInfoStorageLogic.d(h);
            Contact contact1 = MMCore.f().h().c(h);
            contact1.k();
            MMCore.f().h().a(h, contact1);
            MMCore.f().j().a(h);
        } else
        if(ContactStorageLogic.z(h))
        {
            MMCore.f().j().c(h);
            MMCore.f().r().b(20);
        } else
        if(ContactStorageLogic.l(h))
            MMCore.f().j().c(h);
        else
        if(ContactStorageLogic.n(h))
        {
            MMCore.f().j().a(h);
            MMCore.f().u().a();
        } else
        {
            MsgInfo msginfo = MMCore.f().i().a(h);
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(h, msginfo.c()));
            MsgInfoStorageLogic.d(h);
            Contact contact = MMCore.f().h().c(h);
            contact.k();
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpAddContact(contact.s(), contact.t(), contact.w(), contact.x(), contact.p(), 63, contact.q(), contact.D(), contact.E(), contact.F(), contact.C(), contact.G(), contact.H(), contact.J(), contact.K(), contact.M(), contact.L(), contact.S(), contact.T()));
            MMCore.f().h().a(h, contact);
            MMCore.f().j().a(h);
        }
        if(!ContactStorageLogic.k(h))
            break; /* Loop/switch isn't completed */
        Log.d("MicroMsg.MainUI", "del all qmessage");
        MsgInfoStorageLogic.c();
        MMCore.f().j().c("@qqim");
_L5:
        MMCore.g().b(new NetSceneSync(5));
        if(true) goto _L1; else goto _L3
_L3:
        if(!ContactStorageLogic.i(h)) goto _L5; else goto _L4
_L4:
        Log.d("MicroMsg.MainUI", "del all tmessage");
        MsgInfoStorageLogic.d();
        MMCore.f().j().c("@t.qq.com");
          goto _L5
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.e("MicroMsg.MainUI", "onCreate");
        f = (TextView)findViewById(0x7f07014f);//empty_conversation_tv
        e = (ListView)findViewById(0x7f07014e);//main_chatting_lv
        g = new ConversationAdapter(this, new _cls3());
        View view = View.inflate(this, 0x7f030004, null);//adlist_item
        e.addHeaderView(view);
        e.setAdapter(g);
        i = (ADListView)view.findViewById(0x7f07000e);//adlist
        registerForContextMenu(e);
        e.setOnItemClickListener(new _cls4());
        e.setOnItemLongClickListener(new _cls5());
        e.setOnScrollListener(new AvatarWrapperScrollListener(new _cls6()));
        b();
        e.requestFocus();
        c(0x7f0201c4, new _cls7());//mm_title_btn_compose_normal
        a(new _cls8());
        MMAppMgr.a(this);
        MMCore.g().a(38, this);
        MMCore.f().y().a(this);
        AvatarDrawable.a(this);
        b = new Handler();
        l = new INetworkChange();
        try
        {
            if(MMCore.q() != null)
                MMCore.q().g().a(l);
        }
        catch(RemoteException remoteexception) { }
        if(Util.a((Integer)MMCore.f().f().a(15)) == 0)
        {
            NetSceneSync netscenesync = new NetSceneSync(this);
            MMCore.g().b(netscenesync);
            c = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a0027), true, new _cls2(netscenesync));
        }
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        contextmenu.setHeaderTitle(SpanUtil.a(this, MMCore.f().h().c(h).A(), -1));
        if(ContactStorageLogic.k(h))
            contextmenu.add(adaptercontextmenuinfo.position, 7, 0, 0x7f0a0124);
        else
        if(ContactStorageLogic.i(h))
            contextmenu.add(adaptercontextmenuinfo.position, 7, 0, 0x7f0a0125);
        else
        if(ContactStorageLogic.l(h))
        {
            contextmenu.add(adaptercontextmenuinfo.position, 7, 0, 0x7f0a0126);
        } else
        {
            int i1 = adaptercontextmenuinfo.position;
            int j1;
            if(ContactStorageLogic.b(h))
                j1 = 0x7f0a0381;
            else
                j1 = 0x7f0a0122;
            contextmenu.add(i1, 7, 0, j1);
        }
    }

    public void onDestroy()
    {
        Log.e("MicroMsg.MainUI", "on destroy");
        MMCore.g().b(38, this);
        g.n();
        g.m();
        com.tencent.mm.ui.AvatarDrawable.b(this);
        if(!MMCore.f().b())
        {
            MMCore.r();
        } else
        {
            MMCore.f().y().b(this);
            MMCore.f().Z();
            Util.g();
        }
        try
        {
            if(MMCore.q() != null)
                MMCore.q().g().b(l);
        }
        catch(RemoteException remoteexception) { }
        b.removeCallbacks(a);
        ((NetWarnView)findViewById(0x7f0701a8)).a();
        if(k != null)
            k.dismiss();
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        if(d != null)
        {
            d.dismiss();
            d = null;
        }
        super.onDestroy();
    }

    public void onPause()
    {
        MMCore.f().f().b(this);
        MMCore.f().j().b(g);
        MMCore.f().z().b(g);
        Log.e("MicroMsg.MainUI", "on pause");
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        Log.e("MicroMsg.MainUI", "onresume");
        if(MMCore.f().j().h(ContactStorageLogic.a) == 0)
            MMAppMgr.e();
        MMCore.f().j().a(g);
        MMCore.f().z().a(g);
        MMCore.f().y().a(2 * g.getCount());
        j = new ADListAdapter(this);
        i.a(j);
        i.a(new _cls11());
        o();
        if(BottleLogic.d())
        {
            LinkedList linkedlist = new LinkedList();
            linkedlist.add("floatbottle");
            g.a(linkedlist);
        } else
        {
            g.a(null);
        }
        g.a_(null);
        MMCore.f().f().a(this);
    }

    Runnable a;
    Handler b;
    private ProgressDialog c;
    private AlertDialog d;
    private ListView e;
    private TextView f;
    private ConversationAdapter g;
    private String h;
    private ADListView i;
    private ADListAdapter j;
    private PopupWindow k;
    private IOnNetworkChange_AIDL l;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            MainUI.a(a);
        }

        private MainUI a;

        _cls1()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls10
        implements Runnable
    {

        public void run()
        {
            if(MainUI.e(b) != null)
                MainUI.e(b).setMessage((new StringBuilder()).append(b.getString(0x7f0a0027)).append(a).append("%").toString());
        }

        private int a;
        private MainUI b;

        _cls10(int i1)
        {
            b = MainUI.this;
            a = i1;
            super();
        }
    }


    private class _cls9
        implements Runnable
    {

        public void run()
        {
            MMCore.g().b(new NetSceneSync(a));
        }

        private MainUI a;

        _cls9()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls3
        implements MListAdapter.CallBack
    {

        public final void a()
        {
            a.b();
            MainUI.a(a, com.tencent.mm.ui.MainUI.b(a).getCount());
        }

        public final void b()
        {
        }

        private MainUI a;

        _cls3()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls4
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            boolean flag = true;
            if(i1 != 0)
            {
                int j1 = i1 + -1;
                Conversation conversation = (Conversation)com.tencent.mm.ui.MainUI.b(a).getItem(j1);
                if(ContactStorageLogic.i(conversation.g()))
                {
                    if(ConfigStorageLogic.i())
                        a.a(com/tencent/mm/ui/TConversationUI);
                    else
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                } else
                if(ContactStorageLogic.k(conversation.g()))
                {
                    if(ConfigStorageLogic.g())
                        a.a(com/tencent/mm/ui/QConversationUI);
                    else
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                } else
                if(ContactStorageLogic.l(conversation.g()))
                {
                    if(ConfigStorageLogic.h())
                        a.a(com/tencent/mm/ui/bottle/BottleConversationUI);
                    else
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                } else
                if(ContactStorageLogic.o(conversation.g()))
                {
                    if(conversation.b() > 0)
                        MMAppMgr.e();
                    if(ConfigStorageLogic.j())
                        a.a(com/tencent/mm/ui/QQSyncUI);
                    else
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                } else
                if(ContactStorageLogic.g(conversation.g()))
                {
                    if(ConfigStorageLogic.n())
                        a.a(com/tencent/mm/ui/chatting/ChattingUI, (new Intent()).putExtra("Chat_User", conversation.g()));
                    else
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                } else
                if(ContactStorageLogic.z(conversation.g()))
                {
                    if((0x4000 & ConfigStorageLogic.f()) != 0)
                        flag = false;
                    if(flag)
                    {
                        Intent intent1 = new Intent(a, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
                        intent1.addFlags(0x4000000);
                        intent1.putExtra("type", 20);
                        a.startActivity(intent1);
                    } else
                    {
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                    }
                } else
                if(ContactStorageLogic.A(conversation.g()))
                {
                    if((0x40000 & ConfigStorageLogic.f()) != 0)
                        flag = false;
                    if(flag)
                    {
                        Intent intent = new Intent(a, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
                        intent.addFlags(0x4000000);
                        intent.putExtra("type", 11);
                        a.startActivity(intent);
                    } else
                    {
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                    }
                } else
                if(ContactStorageLogic.m(conversation.g()))
                    a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                else
                if(ContactStorageLogic.n(conversation.g()))
                {
                    if((0x10000 & ConfigStorageLogic.f()) != 0)
                        flag = false;
                    if(flag)
                        a.a(com/tencent/mm/plugin/masssend/ui/MassSendHistoryUI, (new Intent()).addFlags(0x4000000));
                    else
                        a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", conversation.g()));
                } else
                {
                    if(conversation.b() > 0)
                        MMAppMgr.e();
                    a.a(com/tencent/mm/ui/chatting/ChattingUI, (new Intent()).putExtra("Chat_User", conversation.g()));
                }
            }
        }

        private MainUI a;

        _cls4()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls5
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i1, long l1)
        {
            boolean flag;
            if(i1 == 0)
            {
                flag = true;
            } else
            {
                Conversation conversation = (Conversation)com.tencent.mm.ui.MainUI.b(a).getItem(i1 + -1);
                MainUI.a(a, conversation.g());
                flag = false;
            }
            return flag;
        }

        private MainUI a;

        _cls5()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls6
        implements android.widget.AbsListView.OnScrollListener
    {

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
            if(i1 >= 2 && !Util.b((Boolean)MMCore.f().f().a(12296)))
            {
                MMCore.f().f().a(12296, Boolean.valueOf(true));
                if(MainUI.c(a) != null)
                    MainUI.c(a).dismiss();
                MainUI.a(a, MMToast.a(a, a.getString(0x7f0a0131), 4000L));
            }
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
        }

        private MainUI a;

        _cls6()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/AddressUI);
            intent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
            intent.putExtra("List_Type", 0);
            a.startActivity(intent);
        }

        private MainUI a;

        _cls7()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(MainUI.d(a));
        }

        private MainUI a;

        _cls8()
        {
            a = MainUI.this;
            super();
        }
    }


    private class INetworkChange extends com.tencent.mm.network.IOnNetworkChange_AIDL.Stub
    {

        public final void a(int i1)
        {
            if(a.b != null)
            {
                a.b.removeCallbacks(a.a);
                a.b.post(a.a);
            }
        }

        private MainUI a;

        INetworkChange()
        {
            a = MainUI.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSync a;
        private MainUI b;

        _cls2(NetSceneSync netscenesync)
        {
            b = MainUI.this;
            a = netscenesync;
            super();
        }
    }


    private class _cls11
        implements ADListView.ADEvent
    {

        public final void a(String s)
        {
            PushMessage.b();
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpPsmStat(3, s));
        }

        public final void a(String s, String s1)
        {
            PushMessage.b();
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpPsmStat(2, s));
            Log.d("MicroMsg.MainUI", (new StringBuilder()).append("jump to ").append(s1).toString());
            SpanUtil.a(a, s1);
        }

        private MainUI a;

        _cls11()
        {
            a = MainUI.this;
            super();
        }
    }

}

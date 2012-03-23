// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.TabActivity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.LocalAccInfo;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.readerapp.ui.ReaderAppUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.bottle.BottleConversationUI;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.setting.SettingsUIGroup;
import com.tencent.mm.ui.skin.MMSkinFactory;
import java.util.*;

// Referenced classes of package com.tencent.mm.ui:
//            LauncherUI, Updater, MMAppMgr, AddressUIGroup, 
//            FindFriendUIGroup, MainUI, FindMoreFriendsUI, MMAlert

public class MainTabUI extends TabActivity
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public MainTabUI()
    {
        a = 0;
        j = false;
        k = false;
        l = false;
        r = "";
    }

    static int a(MainTabUI maintabui, int i1)
    {
        maintabui.a = i1;
        return i1;
    }

    static RadioButton a(MainTabUI maintabui)
    {
        return maintabui.d;
    }

    public static MainTabUI a()
    {
        return m;
    }

    private void a(Intent intent)
    {
        boolean flag;
        flag = false;
        Log.e("MicroMsg.MainTabUI", "handleJump");
        if(MMCore.f().b()) goto _L2; else goto _L1
_L1:
        startActivity((new Intent(this, com/tencent/mm/ui/LauncherUI)).putExtra("Intro_Switch", true).addFlags(0x4000000));
        finish();
_L4:
        return;
_L2:
        String s;
        int i1;
        if(intent.getBooleanExtra("show_update_dialog", flag))
        {
            Updater updater = Updater.a(this, null);
            int j1 = intent.getIntExtra("update_type", -1);
            Conversation conversation;
            if(j1 == -1)
                Log.a("MicroMsg.MainTabUI", "showUpdateDialog is true, but updateType is -1");
            else
                updater.a(j1, new _cls1());
        }
        s = intent.getStringExtra("Main_User");
        if(s == null || s.equals(""))
            break; /* Loop/switch isn't completed */
        conversation = MMCore.f().j().d(s);
        if(conversation == null)
            break; /* Loop/switch isn't completed */
        i1 = conversation.b();
_L5:
        if(!intent.getBooleanExtra("Intro_Is_Muti_Talker", true) && i1 > 0)
        {
            MMAppMgr.e();
            if(intent.getIntExtra("Intro_Bottle_unread_count", flag) > 0)
                startActivity(new Intent(this, com/tencent/mm/ui/bottle/BottleConversationUI));
            else
            if(ContactStorageLogic.z(s))
            {
                Intent intent1 = new Intent(this, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
                intent1.addFlags(0x4000000);
                intent1.putExtra("type", 20);
                startActivity(intent1);
            } else
            if(ContactStorageLogic.A(s))
            {
                Intent intent2 = new Intent(this, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
                intent2.addFlags(0x4000000);
                intent2.putExtra("type", 11);
                startActivity(intent2);
            } else
            {
                if(intent.getIntExtra("MainUI_User_Last_Msg_Type", 34) != 34)
                    flag = true;
                startActivity((new Intent(this, com/tencent/mm/ui/chatting/ChattingUI)).putExtra("Chat_User", s).putExtra("Chat_Mode", flag));
            }
        } else
        {
            b.setCurrentTabByTag("tab_main");
            c();
        }
        if(true) goto _L4; else goto _L3
_L3:
        i1 = ((flag) ? 1 : 0);
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    static RadioButton b(MainTabUI maintabui)
    {
        return maintabui.c;
    }

    private void b()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("qqmail", getString(0x7f0a0068));
        hashmap.put("fmessage", getString(0x7f0a0069));
        hashmap.put("tmessage", getString(0x7f0a006a));
        hashmap.put("qmessage", getString(0x7f0a006b));
        hashmap.put("qqsync", getString(0x7f0a004d));
        hashmap.put("floatbottle", getString(0x7f0a0050));
        hashmap.put("lbsapp", getString(0x7f0a0053));
        hashmap.put("shakeapp", getString(0x7f0a0056));
        hashmap.put("medianote", getString(0x7f0a0059));
        hashmap.put("qqfriend", getString(0x7f0a0062));
        hashmap.put("readerapp", getString(0x7f0a006c));
        hashmap.put("blogapp", getString(0x7f0a006f));
        hashmap.put("facebookapp", getString(0x7f0a005c));
        hashmap.put("masssendapp", getString(0x7f0a0065));
        hashmap.put("weixin", getString(0x7f0a0049));
        Contact.a(hashmap);
    }

    static RadioButton c(MainTabUI maintabui)
    {
        return maintabui.e;
    }

    private void c()
    {
        a = b.getCurrentTab();
        a;
        JVM INSTR tableswitch 0 3: default 44
    //                   0 45
    //                   1 80
    //                   2 115
    //                   3 150;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        c.setChecked(true);
        d.setChecked(false);
        e.setChecked(false);
        f.setChecked(false);
        continue; /* Loop/switch isn't completed */
_L3:
        d.setChecked(true);
        c.setChecked(false);
        e.setChecked(false);
        f.setChecked(false);
        continue; /* Loop/switch isn't completed */
_L4:
        e.setChecked(true);
        c.setChecked(false);
        d.setChecked(false);
        f.setChecked(false);
        continue; /* Loop/switch isn't completed */
_L5:
        f.setChecked(true);
        c.setChecked(false);
        d.setChecked(false);
        e.setChecked(false);
        if(true) goto _L1; else goto _L6
_L6:
    }

    static RadioButton d(MainTabUI maintabui)
    {
        return maintabui.f;
    }

    private void d()
    {
        int i1 = MMCore.f().j().h(ContactStorageLogic.a);
        int j1 = MMCore.f().j().e();
        int k1;
        if((0x8000 & ConfigStorageLogic.d()) == 0)
            k1 = i1 - j1;
        else
            k1 = i1;
        if(k1 > 0)
        {
            g.setVisibility(0);
            g.setText((new StringBuilder()).append(i1).append("").toString());
        } else
        {
            g.setVisibility(8);
        }
    }

    static int e(MainTabUI maintabui)
    {
        return maintabui.a;
    }

    private void e()
    {
        int i1 = MMCore.f().j().e();
        int j1 = ConfigStorageLogic.d();
        if(i1 > 0 && (j1 & 0x8000) == 0)
        {
            h.setText((new StringBuilder()).append("").append(i1).toString());
            h.setVisibility(0);
        } else
        {
            h.setVisibility(8);
        }
    }

    static TabHost f(MainTabUI maintabui)
    {
        return maintabui.b;
    }

    private void f()
    {
        Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
        intent.putExtra("can_finish", true);
        intent.addFlags(0x4000000);
        startActivity(intent);
        finish();
    }

    static boolean g(MainTabUI maintabui)
    {
        return maintabui.l;
    }

    static TextView h(MainTabUI maintabui)
    {
        return maintabui.i;
    }

    static boolean i(MainTabUI maintabui)
    {
        maintabui.l = false;
        return false;
    }

    public final void a_(String s)
    {
        d();
        e();
        k = Util.a((Boolean)MMCore.f().f().a(30), false);
        l = Util.a((Boolean)MMCore.f().f().a(39), false);
        if(k || l)
            i.setVisibility(0);
        else
            i.setVisibility(8);
    }

    public final void b(String s)
    {
        if(s != null && !s.equals("") && !s.equals(b.getCurrentTabTag()))
        {
            b.setCurrentTabByTag(s);
            c();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag;
        flag = true;
        Log.e("MicroMsg.MainTabUI", "ui group onKeyDown");
        if(keyevent.getKeyCode() != 4 || keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        if(a == 3) goto _L4; else goto _L3
_L3:
        f();
_L6:
        return flag;
_L4:
        if(SettingsUIGroup.a != null && SettingsUIGroup.a.c() <= flag)
        {
            f();
            continue; /* Loop/switch isn't completed */
        }
_L2:
        flag = super.dispatchKeyEvent(keyevent);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        Log.d("MicroMsg.MainTabUI", (new StringBuilder()).append("onConfigurationChanged: orientation = ").append(configuration.orientation).toString());
        Log.d("MicroMsg.MainTabUI", (new StringBuilder()).append("last countryCode ").append(r).toString());
        Log.d("MicroMsg.MainTabUI", (new StringBuilder()).append("new countryCode  ").append(configuration.locale.getCountry()).toString());
        if(r != null && !r.equals("") && !r.equals(configuration.locale.getCountry()))
        {
            if(AddressUIGroup.a != null)
                AddressUIGroup.a.finish();
            if(SettingsUIGroup.a != null)
                SettingsUIGroup.a.finish();
            if(FindFriendUIGroup.a != null)
                FindFriendUIGroup.a.finish();
            r = configuration.locale.getCountry();
            if(MMCore.f().b())
                MMCore.o().a("", MMCore.o().a());
            b();
        }
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        if(m != null)
        {
            Log.c("MicroMsg.MainTabUI", "finish last mainTabUI");
            m.finish();
        }
        m = this;
        n = 1 + n;
        Log.e("MicroMsg.MainTabUI", "onCreate");
        super.onCreate(bundle);
        if(Util.i())
            MMToast.ToastSdcard.a(this, 2);
        if(MMCore.q() != null) goto _L2; else goto _L1
_L1:
        startActivity((new Intent()).setClass(this, com/tencent/mm/ui/LauncherUI).addFlags(0x4000000));
        finish();
_L5:
        return;
_L2:
        String s = LocaleUtil.a(getSharedPreferences("com.tencent.mm_preferences", 0));
        if(!s.equals("zh_TW") && !s.equals("zh_HK")) goto _L4; else goto _L3
_L3:
        LocaleUtil.a(this, Locale.TAIWAN);
        r = "";
_L6:
        b();
        Intent intent;
        android.widget.TabHost.TabSpec tabspec;
        Intent intent1;
        android.widget.TabHost.TabSpec tabspec1;
        Intent intent2;
        android.widget.TabHost.TabSpec tabspec2;
        Intent intent3;
        android.widget.TabHost.TabSpec tabspec3;
        try
        {
            HashSet hashset = new HashSet();
            String as[] = getString(0x7f0a0359).split(";");
            hashset.add(as[0]);
            hashset.add(as[1]);
            ContactStorageLogic.a(hashset);
        }
        catch(Exception exception) { }
        SmileyUtil.a(this);
        o = (LayoutInflater)getSystemService("layout_inflater");
        requestWindowFeature(1);
        p = new MMSkinFactory(this);
        if(p.c() != null && !p.c().equals(""))
            o.setFactory(p);
        q = o.inflate(0x7f030065, null);
        setContentView(q);
        k = Util.a((Boolean)MMCore.f().f().a(30), false);
        l = Util.a((Boolean)MMCore.f().f().a(39), false);
        g = (TextView)findViewById(0x7f070152);
        h = (TextView)findViewById(0x7f070155);
        i = (TextView)findViewById(0x7f070157);
        d = (RadioButton)findViewById(0x7f070153);
        e = (RadioButton)findViewById(0x7f070154);
        c = (RadioButton)findViewById(0x7f070151);
        f = (RadioButton)findViewById(0x7f070156);
        i.setVisibility(8);
        if(k || l)
            i.setVisibility(0);
        else
            i.setVisibility(8);
        d.setOnClickListener(new _cls2());
        e.setOnClickListener(new _cls3());
        c.setOnClickListener(new _cls4());
        f.setOnClickListener(new _cls5());
        b = getTabHost();
        intent = new Intent(this, com/tencent/mm/ui/MainUI);
        tabspec = b.newTabSpec("tab_main").setIndicator("Tab1", getResources().getDrawable(0x7f02013b)).setContent(intent);
        b.addTab(tabspec);
        Log.e("MicroMsg.MainTabUI", (new StringBuilder()).append("child count:").append(b.getTabContentView().getChildCount()).toString());
        intent1 = new Intent(this, com/tencent/mm/ui/AddressUIGroup);
        tabspec1 = b.newTabSpec("tab_address").setIndicator("Tab2", getResources().getDrawable(0x7f02013b)).setContent(intent1);
        b.addTab(tabspec1);
        intent2 = new Intent(this, com/tencent/mm/ui/FindMoreFriendsUI);
        tabspec2 = b.newTabSpec("tab_find_friend").setIndicator("Tab3", getResources().getDrawable(0x7f02013b)).setContent(intent2);
        b.addTab(tabspec2);
        intent3 = new Intent(this, com/tencent/mm/ui/setting/SettingsUIGroup);
        tabspec3 = b.newTabSpec("tab_settings").setIndicator("Tab4", getResources().getDrawable(0x7f02013b)).setContent(intent3);
        b.addTab(tabspec3);
        Log.e("MicroMsg.MainTabUI", (new StringBuilder()).append("child count on init tab:").append(b.getTabContentView().getChildCount()).toString());
        b.setCurrentTab(a);
        a(getIntent());
        if(true) goto _L5; else goto _L4
_L4:
        if(s.equals("zh_CN"))
        {
            LocaleUtil.a(this, Locale.CHINA);
            r = "";
        } else
        if(s.equals("en"))
        {
            LocaleUtil.a(this, Locale.ENGLISH);
            r = "";
        } else
        {
            r = Locale.getDefault().getCountry();
        }
          goto _L6
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        menu.add(0, 1, 0, getString(0x7f0a0128)).setIcon(0x7f020180);
        return true;
    }

    protected void onDestroy()
    {
        int i1 = -1 + n;
        n = i1;
        if(i1 == 0)
            m = null;
        if(p != null)
        {
            p.a();
            p = null;
        }
        Log.e("MicroMsg.MainTabUI", "on destroy");
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        Log.e("MicroMsg.MainTabUI", "on new intent");
        super.onNewIntent(intent);
        a(intent);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 1 1: default 24
    //                   1 26;
           goto _L1 _L2
_L1:
        return true;
_L2:
        MMAlert.a(this, 0x7f0a012a, 0x7f0a0129, 0x7f0a001f, 0x7f0a0020, new _cls6(), null);
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected void onPause()
    {
        if(MMCore.f().b())
        {
            MMCore.f().j().b(this);
            MMCore.f().f().b(this);
        }
        super.onPause();
        Log.e("MicroMsg.MainTabUI", "on pause");
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        if(b != null)
            c();
    }

    protected void onResume()
    {
        Log.e("MicroMsg.MainTabUI", "onResume");
        super.onResume();
        MMCore.g().a(false);
        MMCore.f().j().a(this);
        MMCore.f().f().a(this);
        d();
        e();
    }

    public void onStart()
    {
        if(getSharedPreferences("com.tencent.mm_preferences", 0).getBoolean("settings_landscape_mode", false))
            setRequestedOrientation(-1);
        else
            setRequestedOrientation(1);
        super.onStart();
    }

    private static MainTabUI m;
    private static int n = 0;
    private int a;
    private TabHost b;
    private RadioButton c;
    private RadioButton d;
    private RadioButton e;
    private RadioButton f;
    private TextView g;
    private TextView h;
    private TextView i;
    private boolean j;
    private boolean k;
    private boolean l;
    private LayoutInflater o;
    private MMSkinFactory p;
    private View q;
    private String r;


    private class _cls1
        implements Updater.IOnUpdateEnd
    {

        public final void a()
        {
        }

        public final void a(Intent intent)
        {
            a.finish();
            MMAppMgr.a(a, intent);
        }

        private MainTabUI a;

        _cls1()
        {
            a = MainTabUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MainTabUI.a(a).setChecked(true);
            MainTabUI.b(a).setChecked(false);
            MainTabUI.c(a).setChecked(false);
            MainTabUI.d(a).setChecked(false);
            MainTabUI.a(a, 1);
            MainTabUI.f(a).setCurrentTab(MainTabUI.e(a));
        }

        private MainTabUI a;

        _cls2()
        {
            a = MainTabUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MainTabUI.c(a).setChecked(true);
            MainTabUI.b(a).setChecked(false);
            MainTabUI.a(a).setChecked(false);
            MainTabUI.d(a).setChecked(false);
            if(MainTabUI.e(a) == 2 && FindFriendUIGroup.a != null)
                FindFriendUIGroup.a.d();
            MainTabUI.a(a, 2);
            MainTabUI.f(a).setCurrentTab(MainTabUI.e(a));
        }

        private MainTabUI a;

        _cls3()
        {
            a = MainTabUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MainTabUI.b(a).setChecked(true);
            MainTabUI.a(a).setChecked(false);
            MainTabUI.c(a).setChecked(false);
            MainTabUI.d(a).setChecked(false);
            MainTabUI.a(a, 0);
            MainTabUI.f(a).setCurrentTab(MainTabUI.e(a));
        }

        private MainTabUI a;

        _cls4()
        {
            a = MainTabUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(MainTabUI.g(a))
            {
                MainTabUI.h(a).setVisibility(8);
                MMCore.f().f().a(39, Boolean.valueOf(false));
                MainTabUI.i(a);
            }
            MainTabUI.d(a).setChecked(true);
            MainTabUI.b(a).setChecked(false);
            MainTabUI.a(a).setChecked(false);
            MainTabUI.c(a).setChecked(false);
            if(MainTabUI.e(a) == 3 && SettingsUIGroup.a != null)
                SettingsUIGroup.a.d();
            MainTabUI.a(a, 3);
            MainTabUI.f(a).setCurrentTab(MainTabUI.e(a));
        }

        private MainTabUI a;

        _cls5()
        {
            a = MainTabUI.this;
            super();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            MMEntryLock.b("welcome_page_show");
            a.getSharedPreferences("com.tencent.mm_preferences", 0).edit().putBoolean("settings_fully_exit", true).commit();
            MMCore.f().a(MMCore.a());
            MMAppMgr.e();
            a.finish();
            MMAppMgr.a(a, null);
        }

        private MainTabUI a;

        _cls6()
        {
            a = MainTabUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.tools.WebViewUI;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            QQSyncHelper, HelperHeaderPreference

public class ContactWidgetQQSync
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetQQSync(Context context)
    {
        a = context;
        g = new QQSyncHelper(context);
    }

    static Context a(ContactWidgetQQSync contactwidgetqqsync)
    {
        return contactwidgetqqsync.a;
    }

    public static void a(Context context, boolean flag, MListAdapter mlistadapter)
    {
        String s;
        ProgressDialog progressdialog;
        _cls2 _lcls2;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls2 = new _cls2(flag, mlistadapter);
        (new Timer()).schedule(new _cls3(progressdialog, _lcls2), 1500L);
    }

    static void a(boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        String s;
        int i;
        int j;
        if(flag)
            s = "3";
        else
            s = "4";
        arraylist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(6, s));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(arraylist));
        i = ConfigStorageLogic.f();
        if(flag)
            j = i & 0xffffff7f;
        else
            j = i | 0x80;
        MMCore.f().f().a(34, Integer.valueOf(j));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
        MMCore.g().b(new NetSceneSync(5));
    }

    public static void b()
    {
        MsgInfoStorageLogic.d("qqsync");
        MMCore.f().j().a("qqsync");
    }

    private void c()
    {
        e = ConfigStorageLogic.j();
        b.a();
        if(f.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)f.get("contact_info_header_helper");
            helperheaderpreference.a(c, g);
            b.a(helperheaderpreference);
        }
        if(e) goto _L2; else goto _L1
_L1:
        if(f.containsKey("contact_info_qqsync_install"))
            b.a((Preference)f.get("contact_info_qqsync_install"));
_L4:
        return;
_L2:
        if(f.containsKey("contact_info_go_to_sync"))
            b.a((Preference)f.get("contact_info_go_to_sync"));
        if(f.containsKey("contact_info_remind_me_syncing_cat"))
            b.a((Preference)f.get("contact_info_remind_me_syncing_cat"));
        if(f.containsKey("contact_info_remind_me_syncing"))
            b.a((Preference)f.get("contact_info_remind_me_syncing"));
        if(f.containsKey("contact_info_remind_me_syncing_tip"))
            b.a((Preference)f.get("contact_info_remind_me_syncing_tip"));
        if(f.containsKey("contact_info_qqsync_intro"))
            b.a((Preference)f.get("contact_info_qqsync_intro"));
        if(f.containsKey("contact_info_qqsync_agreement"))
            b.a((Preference)f.get("contact_info_qqsync_agreement"));
        if(f.containsKey("contact_info_qqsync_hide_cat"))
            b.a((Preference)f.get("contact_info_qqsync_hide_cat"));
        if(f.containsKey("contact_info_qqsync_uninstall"))
            b.a((Preference)f.get("contact_info_qqsync_uninstall"));
        if(f.containsKey("contact_info_qqsync_hide_cat2"))
            b.a((Preference)f.get("contact_info_qqsync_hide_cat2"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.g().b(new NetSceneSync(5));
        MMCore.f().f().b(this);
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)b.a("contact_info_header_helper");
        if(helperheaderpreference != null)
            helperheaderpreference.a();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1 = false;
        boolean flag2;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ContactStorageLogic.o(contact.s()));
        MMCore.f().f().a(this);
        b = ipreferencescreen;
        d = flag;
        c = contact;
        ipreferencescreen.a(0x7f050010);
        ((HelperHeaderPreference)ipreferencescreen.a("contact_info_header_helper")).a(contact, g);
        ((CheckBoxPreference)ipreferencescreen.a("contact_info_remind_me_syncing")).setChecked(Util.b((Boolean)MMCore.f().f().a(0x10100)));
        Preference preference;
        for(Iterator iterator = ipreferencescreen.b().iterator(); iterator.hasNext(); f.put(preference.getKey(), preference))
            preference = (Preference)iterator.next();

        PreferenceCategory preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_qqsync_hide_cat");
        if(preferencecategory != null)
            f.put("contact_info_qqsync_hide_cat", preferencecategory);
        PreferenceCategory preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_qqsync_hide_cat2");
        if(preferencecategory1 != null)
            f.put("contact_info_qqsync_hide_cat2", preferencecategory1);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetQQSync", (new StringBuilder()).append("handlerEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if("contact_info_go_to_sync".equals(s))
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/QQSyncUI);
                if(d)
                {
                    intent.addFlags(0x4000000);
                    ((Activity)a).setResult(-1, intent);
                    ((Activity)a).finish();
                } else
                {
                    intent.addFlags(0x4000000);
                    a.startActivity(intent);
                    ((Activity)a).finish();
                }
                flag = true;
            } else
            if("contact_info_remind_me_syncing".equals(s))
            {
                CheckBoxPreference checkboxpreference = (CheckBoxPreference)b.a("contact_info_remind_me_syncing");
                MMCore.f().f().a(0x10100, Boolean.valueOf(checkboxpreference.isChecked()));
                ArrayList arraylist = new ArrayList();
                String s1;
                if(checkboxpreference.isChecked())
                    s1 = "1";
                else
                    s1 = "2";
                arraylist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(6, s1));
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(arraylist));
                flag = true;
            } else
            if("contact_info_qqsync_intro".equals(s))
            {
                Intent intent1 = new Intent();
                intent1.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
                intent1.putExtra("title", a.getString(0x7f0a0280));
                intent1.putExtra("rawUrl", a.getString(0x7f0a0001));
                a.startActivity(intent1);
                flag = true;
            } else
            if("contact_info_qqsync_agreement".equals(s))
            {
                Intent intent2 = new Intent();
                intent2.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
                intent2.putExtra("title", a.getString(0x7f0a0281));
                intent2.putExtra("rawUrl", a.getString(0x7f0a0003));
                a.startActivity(intent2);
                flag = true;
            } else
            if(s.equals("contact_info_qqsync_install"))
            {
                a(a, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_qqsync_uninstall"))
            {
                String as[] = a.getResources().getStringArray(0x7f060009);
                MMAlert.a(a, a.getString(0x7f0a01aa), as, "", new _cls1());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetQQSync", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(e != ConfigStorageLogic.j())
            c();
    }

    private Context a;
    private IPreferenceScreen b;
    private Contact c;
    private boolean d;
    private boolean e;
    private final Map f = new HashMap();
    private HelperHeaderPreference.IHandler g;

    private class _cls2 extends Handler
    {

        public final void handleMessage(Message message)
        {
            ContactWidgetQQSync.a(a);
            if(!a)
                ContactWidgetQQSync.b();
            if(b != null)
                b.a_(null);
        }

        private boolean a;
        private MListAdapter b;

        _cls2(boolean flag, MListAdapter mlistadapter)
        {
            a = flag;
            b = mlistadapter;
            super();
        }
    }


    private class _cls3 extends TimerTask
    {

        public final void run()
        {
            if(a != null)
            {
                a.dismiss();
                b.sendEmptyMessage(0);
            }
        }

        private ProgressDialog a;
        private Handler b;

        _cls3(ProgressDialog progressdialog, Handler handler)
        {
            a = progressdialog;
            b = handler;
            super();
        }
    }


    private class _cls1
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int i)
        {
            i;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetQQSync.a(ContactWidgetQQSync.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetQQSync a;

        _cls1()
        {
            a = ContactWidgetQQSync.this;
            super();
        }
    }

}

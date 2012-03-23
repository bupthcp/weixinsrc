// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.readerapp.model.ReaderAppGetPicService;
import com.tencent.mm.plugin.readerapp.model.ReaderAppInfoStorage;
import com.tencent.mm.plugin.readerapp.ui.ReaderAppSubscribeUI;
import com.tencent.mm.plugin.readerapp.ui.ReaderAppUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            ReaderAppNewsHelper, HelperHeaderPreference

public class ContactWidgetReaderAppNews
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetReaderAppNews(Context context)
    {
        d = new HashMap();
        b = context;
        e = new ReaderAppNewsHelper(context);
    }

    static Context a(ContactWidgetReaderAppNews contactwidgetreaderappnews)
    {
        return contactwidgetreaderappnews.b;
    }

    public static void a(Context context, boolean flag, MListAdapter mlistadapter)
    {
        String s;
        ProgressDialog progressdialog;
        _cls3 _lcls3;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls3 = new _cls3(flag, mlistadapter);
        (new Timer()).schedule(new _cls4(progressdialog, _lcls3), 1500L);
    }

    static void a(boolean flag)
    {
        int i = ConfigStorageLogic.e();
        int j;
        int k;
        if(flag)
            j = i | 0x10;
        else
            j = i & 0xffffffef;
        MMCore.f().f().a(40, Integer.valueOf(j));
        if(flag)
            k = 1;
        else
            k = 2;
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(20, k));
    }

    public static void b()
    {
        MMCore.f().r().b(20);
        MMCore.f().j().a("readerapp");
        ReaderAppGetPicService.a(20);
    }

    private void c()
    {
        boolean flag;
        if((0x4000 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        a.a();
        if(d.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)d.get("contact_info_header_helper");
            helperheaderpreference.a(c, e);
            a.a(helperheaderpreference);
        }
        if(flag) goto _L2; else goto _L1
_L1:
        if(d.containsKey("contact_info_readerappnews_install"))
            a.a((Preference)d.get("contact_info_readerappnews_install"));
_L4:
        return;
_L2:
        if(d.containsKey("contact_info_readerappnews_view"))
            a.a((Preference)d.get("contact_info_readerappnews_view"));
        if(d.containsKey("contact_info_readerappnews_cat"))
            a.a((Preference)d.get("contact_info_readerappnews_cat"));
        if(d.containsKey("contact_info_readerappnews_subscribe"))
            a.a((Preference)d.get("contact_info_readerappnews_subscribe"));
        if(d.containsKey("contact_info_readerappnews_cat2"))
            a.a((Preference)d.get("contact_info_readerappnews_cat2"));
        if(d.containsKey("contact_info_readerappnews_clear_data"))
            a.a((Preference)d.get("contact_info_readerappnews_clear_data"));
        if(d.containsKey("contact_info_readerappnews_cat3"))
            a.a((Preference)d.get("contact_info_readerappnews_cat3"));
        if(d.containsKey("contact_info_readerappnews_uninstall"))
            a.a((Preference)d.get("contact_info_readerappnews_uninstall"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.f().f().b(this);
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)d.get("contact_info_header_helper");
        if(helperheaderpreference != null)
            helperheaderpreference.a();
        MMCore.g().b(new NetSceneSync(5));
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1 = false;
        boolean flag2;
        Preference preference;
        Preference preference1;
        PreferenceCategory preferencecategory;
        Preference preference2;
        PreferenceCategory preferencecategory1;
        Preference preference3;
        PreferenceCategory preferencecategory2;
        Preference preference4;
        Preference preference5;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ContactStorageLogic.z(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050011);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            d.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_readerappnews_view");
        if(preference1 != null)
            d.put("contact_info_readerappnews_view", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_readerappnews_cat");
        if(preferencecategory != null)
            d.put("contact_info_readerappnews_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_readerappnews_subscribe");
        if(preference2 != null)
            d.put("contact_info_readerappnews_subscribe", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_readerappnews_cat2");
        if(preferencecategory1 != null)
            d.put("contact_info_readerappnews_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_readerappnews_clear_data");
        if(preference3 != null)
            d.put("contact_info_readerappnews_clear_data", preference3);
        preferencecategory2 = (PreferenceCategory)ipreferencescreen.a("contact_info_readerappnews_cat3");
        if(preferencecategory2 != null)
            d.put("contact_info_readerappnews_cat3", preferencecategory2);
        preference4 = ipreferencescreen.a("contact_info_readerappnews_install");
        if(preference4 != null)
            d.put("contact_info_readerappnews_install", preference4);
        preference5 = ipreferencescreen.a("contact_info_readerappnews_uninstall");
        if(preference5 != null)
            d.put("contact_info_readerappnews_uninstall", preference5);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetReaderAppNews", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_readerappnews_view"))
            {
                Intent intent = new Intent(b, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
                intent.addFlags(0x4000000);
                intent.putExtra("type", 20);
                b.startActivity(intent);
                ((Activity)b).finish();
                MMCore.g().b(new NetSceneSync(5));
                flag = true;
            } else
            if(s.equals("contact_info_readerappnews_subscribe"))
            {
                Intent intent1 = new Intent(b, com/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI);
                b.startActivity(intent1);
                flag = true;
            } else
            if(s.equals("contact_info_readerappnews_clear_data"))
            {
                String as1[] = b.getResources().getStringArray(0x7f06000a);
                MMAlert.a(b, null, as1, "", new _cls1());
                flag = true;
            } else
            if(s.equals("contact_info_readerappnews_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_readerappnews_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls2());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetReaderAppNews", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(s.equals("40") || s.equals("34"))
            c();
    }

    private IPreferenceScreen a;
    private Context b;
    private Contact c;
    private Map d;
    private HelperHeaderPreference.IHandler e;

    private class _cls3 extends Handler
    {

        public final void handleMessage(Message message)
        {
            int k;
            if(a)
                ContactWidgetReaderAppNews.a(true);
            int i = ConfigStorageLogic.f();
            int j;
            OpLogStorage oplogstorage;
            PluginInstall plugininstall;
            if(a)
                j = i & 0xffffbfff;
            else
                j = i | 0x4000;
            MMCore.f().f().a(34, Integer.valueOf(j));
            oplogstorage = MMCore.f().g();
            plugininstall = (new PluginInstall()).a(16384);
            if(!a) goto _L2; else goto _L1
_L1:
            k = 0;
_L3:
            oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpCommonProtobuf(39, plugininstall.b(k).b()));
_L4:
            if(!a)
            {
                ContactWidgetReaderAppNews.b();
                ContactWidgetReaderAppNews.a(false);
            }
            if(b != null)
                b.a_(null);
            return;
_L2:
            k = 1;
              goto _L3
            IOException ioexception;
            ioexception;
              goto _L4
        }

        private boolean a;
        private MListAdapter b;

        _cls3(boolean flag, MListAdapter mlistadapter)
        {
            a = flag;
            b = mlistadapter;
            super();
        }
    }


    private class _cls4 extends TimerTask
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

        _cls4(ProgressDialog progressdialog, Handler handler)
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
            ContactWidgetReaderAppNews.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetReaderAppNews a;

        _cls1()
        {
            a = ContactWidgetReaderAppNews.this;
            super();
        }
    }


    private class _cls2
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
            ContactWidgetReaderAppNews.a(ContactWidgetReaderAppNews.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetReaderAppNews a;

        _cls2()
        {
            a = ContactWidgetReaderAppNews.this;
            super();
        }
    }

}

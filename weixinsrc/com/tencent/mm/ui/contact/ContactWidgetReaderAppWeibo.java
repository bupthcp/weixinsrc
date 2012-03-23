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
import com.tencent.mm.plugin.readerapp.ui.ReaderAppUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            ReaderAppWeiboHelper, HelperHeaderPreference

public class ContactWidgetReaderAppWeibo
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetReaderAppWeibo(Context context)
    {
        d = new HashMap();
        b = context;
        e = new ReaderAppWeiboHelper(context);
    }

    static Context a(ContactWidgetReaderAppWeibo contactwidgetreaderappweibo)
    {
        return contactwidgetreaderappweibo.b;
    }

    public static void a(Context context, boolean flag, MListAdapter mlistadapter)
    {
        String s;
        ProgressDialog progressdialog;
        _cls4 _lcls4;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls4 = new _cls4(flag, mlistadapter);
        (new Timer()).schedule(new _cls5(progressdialog, _lcls4), 1500L);
    }

    static void a(boolean flag)
    {
        int i = ConfigStorageLogic.e();
        int j;
        int k;
        if(flag)
            j = i | 0x20;
        else
            j = i & 0xffffffdf;
        MMCore.f().f().a(40, Integer.valueOf(j));
        if(flag)
            k = 1;
        else
            k = 2;
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(21, k));
    }

    public static void b()
    {
        MMCore.f().r().b(11);
        MMCore.f().j().a("blogapp");
        ReaderAppGetPicService.a(11);
    }

    private void c()
    {
        boolean flag = false;
        boolean flag1;
        if((0x40000 & ConfigStorageLogic.f()) == 0)
            flag1 = true;
        else
            flag1 = flag;
        if(flag1 && ContactStorageLogic.d())
            flag = true;
        a.a();
        if(d.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)d.get("contact_info_header_helper");
            helperheaderpreference.a(c, e);
            a.a(helperheaderpreference);
        }
        if(flag) goto _L2; else goto _L1
_L1:
        if(d.containsKey("contact_info_readerappweibo_install"))
            a.a((Preference)d.get("contact_info_readerappweibo_install"));
_L4:
        return;
_L2:
        if(d.containsKey("contact_info_readerappweibo_view"))
            a.a((Preference)d.get("contact_info_readerappweibo_view"));
        if(d.containsKey("contact_info_readerappweibo_cat"))
            a.a((Preference)d.get("contact_info_readerappweibo_cat"));
        if(d.containsKey("contact_info_readerappweibo_clear_data"))
            a.a((Preference)d.get("contact_info_readerappweibo_clear_data"));
        if(d.containsKey("contact_info_readerappweibo_cat2"))
            a.a((Preference)d.get("contact_info_readerappweibo_cat2"));
        if(d.containsKey("contact_info_readerappweibo_uninstall"))
            a.a((Preference)d.get("contact_info_readerappweibo_uninstall"));
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
        Preference preference4;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ContactStorageLogic.A(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050012);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            d.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_readerappweibo_view");
        if(preference1 != null)
            d.put("contact_info_readerappweibo_view", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_readerappweibo_cat");
        if(preferencecategory != null)
            d.put("contact_info_readerappweibo_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_readerappweibo_clear_data");
        if(preference2 != null)
            d.put("contact_info_readerappweibo_clear_data", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_readerappweibo_cat2");
        if(preferencecategory1 != null)
            d.put("contact_info_readerappweibo_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_readerappweibo_install");
        if(preference3 != null)
            d.put("contact_info_readerappweibo_install", preference3);
        preference4 = ipreferencescreen.a("contact_info_readerappweibo_uninstall");
        if(preference4 != null)
            d.put("contact_info_readerappweibo_uninstall", preference4);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetReaderAppWeibo", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_readerappweibo_view"))
            {
                Intent intent = new Intent(b, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
                intent.addFlags(0x4000000);
                intent.putExtra("type", 11);
                b.startActivity(intent);
                ((Activity)b).finish();
                MMCore.g().b(new NetSceneSync(5));
                flag = true;
            } else
            if(s.equals("contact_info_readerappweibo_clear_data"))
            {
                String as1[] = b.getResources().getStringArray(0x7f06000a);
                MMAlert.a(b, null, as1, "", new _cls1());
                flag = true;
            } else
            if(s.equals("contact_info_readerappweibo_install"))
            {
                if(!ConfigStorageLogic.q())
                {
                    MMAlert.a(b, 0x7f0a04a7, 0x7f0a0010, new _cls3(), null);
                } else
                {
                    RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
                    if(roleinfo == null || Util.i(roleinfo.a()))
                        MMAlert.a(b, 0x7f0a04a8, 0x7f0a0010);
                    else
                        flag = true;
                }
                if(!flag)
                {
                    flag = true;
                } else
                {
                    a(b, true, null);
                    flag = true;
                }
            } else
            if(s.equals("contact_info_readerappweibo_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls2());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetReaderAppWeibo", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
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

    private class _cls4 extends Handler
    {

        public final void handleMessage(Message message)
        {
            int k;
            if(a)
            {
                RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
                if(!ConfigStorageLogic.q() || roleinfo == null || Util.i(roleinfo.a()))
                    ContactWidgetReaderAppWeibo.a(false);
                ContactWidgetReaderAppWeibo.a(true);
            }
            int i = ConfigStorageLogic.f();
            int j;
            OpLogStorage oplogstorage;
            PluginInstall plugininstall;
            if(a)
                j = i & 0xfffbffff;
            else
                j = i | 0x40000;
            MMCore.f().f().a(34, Integer.valueOf(j));
            oplogstorage = MMCore.f().g();
            plugininstall = (new PluginInstall()).a(0x40000);
            if(!a) goto _L2; else goto _L1
_L1:
            k = 0;
_L3:
            oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpCommonProtobuf(39, plugininstall.b(k).b()));
_L4:
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            if(!a)
            {
                ContactWidgetReaderAppWeibo.b();
                ContactWidgetReaderAppWeibo.a(false);
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

        _cls4(boolean flag, MListAdapter mlistadapter)
        {
            a = flag;
            b = mlistadapter;
            super();
        }
    }


    private class _cls5 extends TimerTask
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

        _cls5(ProgressDialog progressdialog, Handler handler)
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
            ContactWidgetReaderAppWeibo.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetReaderAppWeibo a;

        _cls1()
        {
            a = ContactWidgetReaderAppWeibo.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMWizardActivity.a(ContactWidgetReaderAppWeibo.a(a), new Intent(ContactWidgetReaderAppWeibo.a(a), com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private ContactWidgetReaderAppWeibo a;

        _cls3()
        {
            a = ContactWidgetReaderAppWeibo.this;
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
            ContactWidgetReaderAppWeibo.a(ContactWidgetReaderAppWeibo.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetReaderAppWeibo a;

        _cls2()
        {
            a = ContactWidgetReaderAppWeibo.this;
            super();
        }
    }

}

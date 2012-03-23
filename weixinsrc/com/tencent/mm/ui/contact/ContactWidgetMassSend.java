// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

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
import com.tencent.mm.plugin.masssend.model.MasSendInfoStorage;
import com.tencent.mm.plugin.masssend.ui.MassSendHistoryUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            MassSendHelper, HelperHeaderPreference

public class ContactWidgetMassSend
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetMassSend(Context context)
    {
        d = new HashMap();
        b = context;
        e = new MassSendHelper(context);
    }

    static Context a(ContactWidgetMassSend contactwidgetmasssend)
    {
        return contactwidgetmasssend.b;
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

    public static void b()
    {
        MMCore.f().u().a();
        MMCore.f().j().a("masssendapp");
    }

    private void c()
    {
        boolean flag;
        if((0x10000 & ConfigStorageLogic.f()) == 0)
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
        if(d.containsKey("contact_info_masssend_install"))
            a.a((Preference)d.get("contact_info_masssend_install"));
_L4:
        return;
_L2:
        if(d.containsKey("contact_info_masssend_view"))
            a.a((Preference)d.get("contact_info_masssend_view"));
        if(d.containsKey("contact_info_masssend_cat"))
            a.a((Preference)d.get("contact_info_masssend_cat"));
        if(d.containsKey("contact_info_masssend_clear_data"))
            a.a((Preference)d.get("contact_info_masssend_clear_data"));
        if(d.containsKey("contact_info_masssend_cat2"))
            a.a((Preference)d.get("contact_info_masssend_cat2"));
        if(d.containsKey("contact_info_masssend_uninstall"))
            a.a((Preference)d.get("contact_info_masssend_uninstall"));
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
        Assert.assertTrue(ContactStorageLogic.n(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050009);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            d.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_masssend_view");
        if(preference1 != null)
            d.put("contact_info_masssend_view", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_masssend_cat");
        if(preferencecategory != null)
            d.put("contact_info_masssend_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_masssend_clear_data");
        if(preference2 != null)
            d.put("contact_info_masssend_clear_data", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_masssend_cat2");
        if(preferencecategory1 != null)
            d.put("contact_info_masssend_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_masssend_install");
        if(preference3 != null)
            d.put("contact_info_masssend_install", preference3);
        preference4 = ipreferencescreen.a("contact_info_masssend_uninstall");
        if(preference4 != null)
            d.put("contact_info_masssend_uninstall", preference4);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetMassSend", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_masssend_view"))
            {
                Intent intent = new Intent(b, com/tencent/mm/plugin/masssend/ui/MassSendHistoryUI);
                b.startActivity(intent);
                flag = true;
            } else
            if(s.equals("contact_info_masssend_clear_data"))
            {
                String as1[] = b.getResources().getStringArray(0x7f06000a);
                MMAlert.a(b, null, as1, "", new _cls1());
                flag = true;
            } else
            if(s.equals("contact_info_masssend_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_masssend_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls2());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetMassSend", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(s.equals("7") || s.equals("34"))
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
            int i = ConfigStorageLogic.f();
            int j;
            if(a)
                j = i & 0xfffeffff;
            else
                j = i | 0x10000;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            if(!a)
                ContactWidgetMassSend.b();
            if(b != null)
                b.a_(null);
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
            ContactWidgetMassSend.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetMassSend a;

        _cls1()
        {
            a = ContactWidgetMassSend.this;
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
            ContactWidgetMassSend.a(ContactWidgetMassSend.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetMassSend a;

        _cls2()
        {
            a = ContactWidgetMassSend.this;
            super();
        }
    }

}

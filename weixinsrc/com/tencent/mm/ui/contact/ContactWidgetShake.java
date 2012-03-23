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
import com.tencent.mm.modelshake.ShakeItemStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.shake.ShakeReportUI;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            ShakeHelper, HelperHeaderPreference

public class ContactWidgetShake
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetShake(Context context)
    {
        d = new HashMap();
        b = context;
        e = new ShakeHelper(context);
    }

    static Context a(ContactWidgetShake contactwidgetshake)
    {
        return contactwidgetshake.b;
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

    public static void b()
    {
        MMCore.f().I().d();
    }

    private void c()
    {
        boolean flag;
        if((0x100 & ConfigStorageLogic.f()) == 0)
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
        if(d.containsKey("contact_info_shake_install"))
            a.a((Preference)d.get("contact_info_shake_install"));
_L4:
        return;
_L2:
        if(d.containsKey("contact_info_shake_go_shake"))
            a.a((Preference)d.get("contact_info_shake_go_shake"));
        if(d.containsKey("contact_info_shake_hide_cat"))
            a.a((Preference)d.get("contact_info_shake_hide_cat"));
        if(d.containsKey("contact_info_shake_uninstall"))
            a.a((Preference)d.get("contact_info_shake_uninstall"));
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
        Preference preference3;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ContactStorageLogic.x(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050014);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            d.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_shake_go_shake");
        if(preference1 != null)
            d.put("contact_info_shake_go_shake", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_shake_hide_cat");
        if(preferencecategory != null)
            d.put("contact_info_shake_hide_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_shake_install");
        if(preference2 != null)
            d.put("contact_info_shake_install", preference2);
        preference3 = ipreferencescreen.a("contact_info_shake_uninstall");
        if(preference3 != null)
            d.put("contact_info_shake_uninstall", preference3);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetShake", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_shake_go_shake"))
            {
                Intent intent = new Intent();
                intent.setClass(b, com/tencent/mm/ui/shake/ShakeReportUI);
                b.startActivity(intent);
                ((Activity)b).finish();
                flag = true;
            } else
            if(s.equals("contact_info_shake_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_shake_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls1());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetShake", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
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

    private class _cls2 extends Handler
    {

        public final void handleMessage(Message message)
        {
            int i = ConfigStorageLogic.f();
            int j;
            if(a)
                j = i & 0xfffffeff;
            else
                j = i | 0x100;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            if(!a)
                ContactWidgetShake.b();
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
            ContactWidgetShake.a(ContactWidgetShake.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetShake a;

        _cls1()
        {
            a = ContactWidgetShake.this;
            super();
        }
    }

}

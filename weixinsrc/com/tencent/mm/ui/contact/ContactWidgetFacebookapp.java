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
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.facebook.FacebookAuthUI;
import com.tencent.mm.ui.facebook.FacebookFriendUI;
import com.tencent.mm.ui.qrcode.ShowQRCodeStep1UI;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            FacebookappHelper, HelperHeaderPreference

public class ContactWidgetFacebookapp
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetFacebookapp(Context context)
    {
        d = new HashMap();
        b = context;
        e = new FacebookappHelper(context);
        MMCore.f().j().e("facebookapp");
    }

    static Context a(ContactWidgetFacebookapp contactwidgetfacebookapp)
    {
        return contactwidgetfacebookapp.b;
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

    private void b()
    {
        a.a();
        if(d.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)d.get("contact_info_header_helper");
            helperheaderpreference.a(c, e);
            a.a(helperheaderpreference);
        }
        boolean flag;
        if((0x2000 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        if(flag) goto _L2; else goto _L1
_L1:
        if(d.containsKey("contact_info_facebookapp_install"))
            a.a((Preference)d.get("contact_info_facebookapp_install"));
_L4:
        return;
_L2:
        if(ConfigStorageLogic.m())
            break; /* Loop/switch isn't completed */
        if(d.containsKey("contact_info_facebookapp_connect"))
            a.a((Preference)d.get("contact_info_facebookapp_connect"));
_L5:
        if(d.containsKey("contact_info_facebookapp_cat2"))
            a.a((Preference)d.get("contact_info_facebookapp_cat2"));
        if(d.containsKey("contact_info_facebookapp_uninstall"))
            a.a((Preference)d.get("contact_info_facebookapp_uninstall"));
        if(true) goto _L4; else goto _L3
_L3:
        if(d.containsKey("contact_info_facebookapp_listfriend"))
            a.a((Preference)d.get("contact_info_facebookapp_listfriend"));
        if(d.containsKey("contact_info_facebookapp_cat"))
            a.a((Preference)d.get("contact_info_facebookapp_cat"));
        if(d.containsKey("contact_info_facebookapp_addr"))
        {
            a.a((Preference)d.get("contact_info_facebookapp_addr"));
            ((Preference)d.get("contact_info_facebookapp_addr")).setSummary((String)MMCore.f().f().a(0x10122));
        }
        if(d.containsKey("contact_info_facebookapp_showqrcode"))
            a.a((Preference)d.get("contact_info_facebookapp_showqrcode"));
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
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
        Preference preference2;
        PreferenceCategory preferencecategory;
        Preference preference3;
        Preference preference4;
        PreferenceCategory preferencecategory1;
        Preference preference5;
        Preference preference6;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ContactStorageLogic.m(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050004);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            d.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_facebookapp_listfriend");
        if(preference1 != null)
            d.put("contact_info_facebookapp_listfriend", preference1);
        preference2 = ipreferencescreen.a("contact_info_facebookapp_connect");
        if(preference2 != null)
            d.put("contact_info_facebookapp_connect", preference2);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_facebookapp_cat");
        if(preferencecategory != null)
            d.put("contact_info_facebookapp_cat", preferencecategory);
        preference3 = ipreferencescreen.a("contact_info_facebookapp_addr");
        if(preference3 != null)
            d.put("contact_info_facebookapp_addr", preference3);
        preference4 = ipreferencescreen.a("contact_info_facebookapp_showqrcode");
        if(preference4 != null)
            d.put("contact_info_facebookapp_showqrcode", preference4);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_facebookapp_cat2");
        if(preferencecategory1 != null)
            d.put("contact_info_facebookapp_cat2", preferencecategory1);
        preference5 = ipreferencescreen.a("contact_info_facebookapp_install");
        if(preference5 != null)
            d.put("contact_info_facebookapp_install", preference5);
        preference6 = ipreferencescreen.a("contact_info_facebookapp_uninstall");
        if(preference6 != null)
            d.put("contact_info_facebookapp_uninstall", preference6);
        b();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetFacebookapp", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_facebookapp_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_facebookapp_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls1());
                flag = true;
            } else
            if(s.equals("contact_info_facebookapp_listfriend"))
            {
                b.startActivity(new Intent(b, com/tencent/mm/ui/facebook/FacebookFriendUI));
                flag = true;
            } else
            if(s.equals("contact_info_facebookapp_connect"))
            {
                Intent intent = new Intent(b, com/tencent/mm/ui/facebook/FacebookAuthUI);
                b.startActivity(intent);
                flag = true;
            } else
            if(s.equals("contact_info_facebookapp_addr"))
            {
                Intent intent1 = new Intent(b, com/tencent/mm/ui/facebook/FacebookAuthUI);
                b.startActivity(intent1);
                flag = true;
            } else
            if(s.equals("contact_info_facebookapp_showqrcode"))
            {
                Intent intent2 = new Intent(b, com/tencent/mm/ui/qrcode/ShowQRCodeStep1UI);
                intent2.putExtra("show_to", 4);
                b.startActivity(intent2);
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetFacebookapp", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(s.equals("40") || s.equals("34") || s.equals("65825"))
            b();
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
                j = i & 0xffffdfff;
            else
                j = i | 0x2000;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            if(!a)
            {
                MMCore.f().x().b();
                MMCore.f().f().a(0x10124, "");
                MMCore.f().j().a("facebookapp");
                MMCore.f().i().f("facebookapp");
            }
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
            ContactWidgetFacebookapp.a(ContactWidgetFacebookapp.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetFacebookapp a;

        _cls1()
        {
            a = ContactWidgetFacebookapp.this;
            super();
        }
    }

}

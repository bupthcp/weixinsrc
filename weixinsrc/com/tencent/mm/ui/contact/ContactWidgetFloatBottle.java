// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelbottle.BottleInfoStorage;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bottle.BottleBeachUI;
import com.tencent.mm.ui.bottle.BottleWizardStep1;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            FloatBottleHelper, HelperHeaderPreference

public class ContactWidgetFloatBottle
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetFloatBottle(Context context)
    {
        e = new HashMap();
        b = context;
        f = new FloatBottleHelper(context);
    }

    static Context a(ContactWidgetFloatBottle contactwidgetfloatbottle)
    {
        return contactwidgetfloatbottle.b;
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
        int i = ConfigStorageLogic.d();
        int j = ConfigStorageLogic.f();
        int k;
        int l;
        if(flag)
        {
            k = i | 0x1000;
            l = j & 0xffffffbf;
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(11, 1));
        } else
        {
            k = i & 0xffffefff;
            l = j | 0x40;
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(11, 2));
        }
        MMCore.f().f().a(7, Integer.valueOf(k));
        MMCore.f().f().a(34, Integer.valueOf(l));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", l, "", 0, "", 0));
        MMCore.g().b(new NetSceneSync(5));
    }

    public static void b()
    {
        Cursor cursor = MMCore.f().j().d();
        for(int i = 0; i < cursor.getCount(); i++)
        {
            cursor.moveToPosition(i);
            Conversation conversation = new Conversation();
            conversation.a(cursor);
            MsgInfo msginfo = MMCore.f().i().a(conversation.g());
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(conversation.g(), msginfo.c()));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDeleteBottle(conversation.g(), 0));
            MMCore.f().h().f(conversation.g());
        }

        cursor.close();
        MMCore.f().i().g("@bottle");
        MMCore.f().j().b();
        MMCore.f().j().c("floatbottle");
        MsgInfoStorageLogic.b();
        MMCore.f().H().a();
    }

    private void c()
    {
        boolean flag;
        if((0x40 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        d = flag;
        a.a();
        if(e.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)e.get("contact_info_header_helper");
            helperheaderpreference.a(c, f);
            a.a(helperheaderpreference);
        }
        if(d && e.containsKey("contact_info_goto_floatbottle"))
            a.a((Preference)e.get("contact_info_goto_floatbottle"));
        if(!d) goto _L2; else goto _L1
_L1:
        if(e.containsKey("contact_info_floatbottle_hide_cat"))
            a.a((Preference)e.get("contact_info_floatbottle_hide_cat"));
        if(e.containsKey("contact_info_floatbottle_clear_data"))
            a.a((Preference)e.get("contact_info_floatbottle_clear_data"));
        if(e.containsKey("contact_info_floatbottle_hide_cat2"))
            a.a((Preference)e.get("contact_info_floatbottle_hide_cat2"));
        if(e.containsKey("contact_info_floatbottle_uninstall"))
            a.a((Preference)e.get("contact_info_floatbottle_uninstall"));
_L4:
        return;
_L2:
        if(e.containsKey("contact_info_floatbottle_install"))
            a.a((Preference)e.get("contact_info_floatbottle_install"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.f().f().b(this);
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)e.get("contact_info_header_helper");
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
        Assert.assertTrue(ContactStorageLogic.j(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050005);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            e.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_goto_floatbottle");
        if(preference1 != null)
            e.put("contact_info_goto_floatbottle", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_floatbottle_hide_cat");
        if(preferencecategory != null)
            e.put("contact_info_floatbottle_hide_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_floatbottle_clear_data");
        if(preference2 != null)
            e.put("contact_info_floatbottle_clear_data", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_floatbottle_hide_cat2");
        if(preferencecategory1 != null)
            e.put("contact_info_floatbottle_hide_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_floatbottle_install");
        if(preference3 != null)
            e.put("contact_info_floatbottle_install", preference3);
        preference4 = ipreferencescreen.a("contact_info_floatbottle_uninstall");
        if(preference4 != null)
            e.put("contact_info_floatbottle_uninstall", preference4);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        Log.d("MicroMsg.ContactWidgetFloatBottle", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        boolean flag;
        if(Util.h(s).length() <= 0)
            flag = false;
        else
        if(s.equals("contact_info_goto_floatbottle"))
        {
            if(Util.a((Integer)MMCore.f().f().a(12290), 0) <= 0 || Util.h((String)MMCore.f().f().a(12293)).equals("") || Util.h((String)MMCore.f().f().a(12292)).equals(""))
                b.startActivity(new Intent(b, com/tencent/mm/ui/bottle/BottleWizardStep1));
            else
                b.startActivity(new Intent(b, com/tencent/mm/ui/bottle/BottleBeachUI));
            flag = true;
        } else
        if(s.equals("contact_info_floatbottle_clear_data"))
        {
            String as1[] = b.getResources().getStringArray(0x7f06000a);
            MMAlert.a(b, null, as1, "", new _cls1());
            flag = true;
        } else
        if(s.equals("contact_info_floatbottle_install"))
        {
            a(b, true, null);
            flag = true;
        } else
        if(s.equals("contact_info_floatbottle_uninstall"))
        {
            String as[] = b.getResources().getStringArray(0x7f060009);
            MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls2());
            flag = true;
        } else
        {
            Log.a("MicroMsg.ContactWidgetFloatBottle", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            flag = false;
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
    private boolean d;
    private Map e;
    private HelperHeaderPreference.IHandler f;

    private class _cls3 extends Handler
    {

        public final void handleMessage(Message message)
        {
            ContactWidgetFloatBottle.a(a);
            if(!a)
                ContactWidgetFloatBottle.b();
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
            ContactWidgetFloatBottle.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetFloatBottle a;

        _cls1()
        {
            a = ContactWidgetFloatBottle.this;
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
            ContactWidgetFloatBottle.a(ContactWidgetFloatBottle.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetFloatBottle a;

        _cls2()
        {
            a = ContactWidgetFloatBottle.this;
            super();
        }
    }

}

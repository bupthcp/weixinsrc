// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.friend.QQGroupUI;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            QQFriendHelper, HelperHeaderPreference

public class ContactWidgetQQFriend
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetQQFriend(Context context)
    {
        e = new HashMap();
        b = context;
        f = new QQFriendHelper(context);
    }

    static Context a(ContactWidgetQQFriend contactwidgetqqfriend)
    {
        return contactwidgetqqfriend.b;
    }

    public static void a(Context context, boolean flag)
    {
        String s;
        ProgressDialog progressdialog;
        _cls3 _lcls3;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls3 = new _cls3(flag);
        (new Timer()).schedule(new _cls4(progressdialog, _lcls3), 1500L);
    }

    static void a(boolean flag)
    {
        int i = ConfigStorageLogic.f();
        int j;
        if(flag)
            j = i & 0xffffefff;
        else
            j = i | 0x1000;
        MMCore.f().f().a(34, Integer.valueOf(j));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
    }

    private void b()
    {
        boolean flag;
        if((0x1000 & ConfigStorageLogic.f()) == 0)
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
        if(!d) goto _L2; else goto _L1
_L1:
        if(e.containsKey("contact_info_qqfriend_view"))
            a.a((Preference)e.get("contact_info_qqfriend_view"));
        if(e.containsKey("contact_info_qqfriend_hide_cat"))
            a.a((Preference)e.get("contact_info_qqfriend_hide_cat"));
        if(e.containsKey("contact_info_qqfriend_uninstall"))
            a.a((Preference)e.get("contact_info_qqfriend_uninstall"));
_L4:
        return;
_L2:
        if(e.containsKey("contact_info_qqfriend_install"))
            a.a((Preference)e.get("contact_info_qqfriend_install"));
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
        Assert.assertTrue(ContactStorageLogic.C(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f05000e);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            e.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_qqfriend_view");
        if(preference1 != null)
            e.put("contact_info_qqfriend_view", preference1);
        preference2 = ipreferencescreen.a("contact_info_qqfriend_hide_cat");
        if(preference2 != null)
            e.put("contact_info_qqfriend_hide_cat", preference2);
        preference3 = ipreferencescreen.a("contact_info_qqfriend_install");
        if(preference3 != null)
            e.put("contact_info_qqfriend_install", preference3);
        preference4 = ipreferencescreen.a("contact_info_qqfriend_uninstall");
        if(preference4 != null)
            e.put("contact_info_qqfriend_uninstall", preference4);
        b();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetQQFriend", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_qqfriend_view"))
            {
                if(!ConfigStorageLogic.q())
                {
                    MMAlert.a(b, 0x7f0a029a, 0x7f0a0010, new _cls1(), null);
                    flag = true;
                } else
                {
                    Intent intent = new Intent();
                    intent.setClass(b, com/tencent/mm/ui/friend/QQGroupUI);
                    b.startActivity(intent);
                    flag = true;
                }
            } else
            if(s.equals("contact_info_qqfriend_install"))
            {
                a(b, true);
                flag = true;
            } else
            if(s.equals("contact_info_qqfriend_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls2());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetQQFriend", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(s.equals("34"))
            b();
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
            ContactWidgetQQFriend.a(a);
            if(b != null)
                b.a_(null);
        }

        private boolean a;
        private MListAdapter b;

        _cls3(boolean flag)
        {
            a = flag;
            b = null;
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
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMWizardActivity.a(ContactWidgetQQFriend.a(a), new Intent(ContactWidgetQQFriend.a(a), com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private ContactWidgetQQFriend a;

        _cls1()
        {
            a = ContactWidgetQQFriend.this;
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
            ContactWidgetQQFriend.a(ContactWidgetQQFriend.a(a), false);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetQQFriend a;

        _cls2()
        {
            a = ContactWidgetQQFriend.this;
            super();
        }
    }

}

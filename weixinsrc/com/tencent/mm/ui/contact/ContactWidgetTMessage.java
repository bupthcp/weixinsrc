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
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            TMessageHelper, HelperHeaderPreference

public class ContactWidgetTMessage
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetTMessage(Context context)
    {
        f = new HashMap();
        b = context;
        g = new TMessageHelper(context);
    }

    static Context a(ContactWidgetTMessage contactwidgettmessage)
    {
        return contactwidgettmessage.b;
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
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        boolean flag1;
        if(roleinfo != null && Util.h(roleinfo.a()).length() > 0)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        roleinfo.a(flag);
        roleinfo.a(4);
        MMCore.f().m().a(roleinfo);
        if(flag)
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpOpenQQMicroBlog(roleinfo.a()));
        else
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpCloseMicroBlog(roleinfo.a()));
        MMCore.g().b(new NetSceneSync(5));
    }

    public static void b()
    {
        MsgInfoStorageLogic.d();
        MMCore.f().j().c("@t.qq.com");
        MMCore.f().j().a("tmessage");
    }

    private void c()
    {
        boolean flag;
        flag = true;
        boolean flag1;
        if((2 & ConfigStorageLogic.f()) == 0)
            flag1 = flag;
        else
            flag1 = false;
        e = flag1;
        a.a();
        if(f.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)f.get("contact_info_header_helper");
            helperheaderpreference.a(c, g);
            a.a(helperheaderpreference);
        }
        if(e) goto _L2; else goto _L1
_L1:
        if(f.containsKey("contact_info_tmessage_install"))
            a.a((Preference)f.get("contact_info_tmessage_install"));
_L4:
        return;
_L2:
        if(f.containsKey("contact_info_view_message"))
            a.a((Preference)f.get("contact_info_view_message"));
        if(f.containsKey("contact_info_tmessage_hide_cat"))
            a.a((Preference)f.get("contact_info_tmessage_hide_cat"));
        if(f.containsKey("contact_info_tmessage_recv_private_letter"))
        {
            CheckBoxPreference checkboxpreference = (CheckBoxPreference)f.get("contact_info_tmessage_recv_private_letter");
            RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
            if(roleinfo == null || !roleinfo.b())
                flag = false;
            checkboxpreference.setChecked(flag);
            a.a(checkboxpreference);
        }
        if(f.containsKey("contact_info_microblog_friends"))
            a.a((Preference)f.get("contact_info_microblog_friends"));
        if(f.containsKey("contact_info_tmessage_hide_cat2"))
            a.a((Preference)f.get("contact_info_tmessage_hide_cat2"));
        if(f.containsKey("contact_info_tmessage_clear_data"))
            a.a((Preference)f.get("contact_info_tmessage_clear_data"));
        if(f.containsKey("contact_info_tmessage_hide_cat3"))
            a.a((Preference)f.get("contact_info_tmessage_hide_cat3"));
        if(f.containsKey("contact_info_tmessage_uninstall"))
            a.a((Preference)f.get("contact_info_tmessage_uninstall"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.f().m().b(this);
        MMCore.f().f().b(this);
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)f.get("contact_info_header_helper");
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
        CheckBoxPreference checkboxpreference;
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
        Assert.assertTrue(ContactStorageLogic.i(contact.s()));
        MMCore.f().m().a(this);
        MMCore.f().f().a(this);
        c = contact;
        d = flag;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f050015);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            f.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_view_message");
        if(preference1 != null)
            f.put("contact_info_view_message", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_tmessage_hide_cat");
        if(preferencecategory != null)
            f.put("contact_info_tmessage_hide_cat", preferencecategory);
        checkboxpreference = (CheckBoxPreference)ipreferencescreen.a("contact_info_tmessage_recv_private_letter");
        if(checkboxpreference != null)
            f.put("contact_info_tmessage_recv_private_letter", checkboxpreference);
        preference2 = ipreferencescreen.a("contact_info_microblog_friends");
        if(preference2 != null)
            f.put("contact_info_microblog_friends", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_tmessage_hide_cat2");
        if(preferencecategory1 != null)
            f.put("contact_info_tmessage_hide_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_tmessage_clear_data");
        if(preference3 != null)
            f.put("contact_info_tmessage_clear_data", preference3);
        preferencecategory2 = (PreferenceCategory)ipreferencescreen.a("contact_info_tmessage_hide_cat3");
        if(preferencecategory2 != null)
            f.put("contact_info_tmessage_hide_cat3", preferencecategory2);
        preference4 = ipreferencescreen.a("contact_info_tmessage_install");
        if(preference4 != null)
            f.put("contact_info_tmessage_install", preference4);
        preference5 = ipreferencescreen.a("contact_info_tmessage_uninstall");
        if(preference5 != null)
            f.put("contact_info_tmessage_uninstall", preference5);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        boolean flag1 = true;
        Log.d("MicroMsg.ContactWidgetTMessage", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() <= 0)
            flag1 = flag;
        else
        if(s.equals("contact_info_view_message"))
        {
            Intent intent = new Intent(b, com/tencent/mm/ui/TConversationUI);
            if(d)
                ((Activity)b).setResult(-1, intent);
            else
                b.startActivity(intent);
            ((Activity)b).finish();
        } else
        if(s.equals("contact_info_tmessage_recv_private_letter"))
        {
            boolean flag2 = ((CheckBoxPreference)a.a(s)).isChecked();
            g.a(flag2);
        } else
        if(s.equals("contact_info_microblog_friends"))
        {
            GroupInfo groupinfo = GroupInfoLogic.b(b.getString(0x7f0a0046));
            if(groupinfo != null && groupinfo.a() == "@t.qq.com")
                flag = flag1;
            Assert.assertTrue(flag);
            Intent intent1 = new Intent();
            intent1.setClass(b, com/tencent/mm/ui/AddressUI);
            intent1.putExtra("Contact_GroupFilter_Type", groupinfo.a());
            intent1.putExtra("Contact_GroupFilter_DisplayName", groupinfo.c());
            b.startActivity(intent1);
        } else
        if(s.equals("contact_info_tmessage_install"))
            a(b, flag1, null);
        else
        if(s.equals("contact_info_tmessage_uninstall"))
        {
            String as1[] = b.getResources().getStringArray(0x7f060009);
            MMAlert.a(b, b.getString(0x7f0a01aa), as1, "", new _cls1());
        } else
        if(s.equals("contact_info_tmessage_clear_data"))
        {
            String as[] = b.getResources().getStringArray(0x7f06000a);
            MMAlert.a(b, null, as, "", new _cls2());
        } else
        {
            Log.a("MicroMsg.ContactWidgetTMessage", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            flag1 = flag;
        }
        return flag1;
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
    private boolean e;
    private Map f;
    private HelperHeaderPreference.IHandler g;

    private class _cls3 extends Handler
    {

        public final void handleMessage(Message message)
        {
            ContactWidgetTMessage.a(a);
            int i = ConfigStorageLogic.f();
            int j;
            if(a)
                j = i & -3;
            else
                j = i | 2;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            if(!a)
                ContactWidgetTMessage.b();
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
            ContactWidgetTMessage.a(ContactWidgetTMessage.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetTMessage a;

        _cls1()
        {
            a = ContactWidgetTMessage.this;
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
            ContactWidgetTMessage.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetTMessage a;

        _cls2()
        {
            a = ContactWidgetTMessage.this;
            super();
        }
    }

}

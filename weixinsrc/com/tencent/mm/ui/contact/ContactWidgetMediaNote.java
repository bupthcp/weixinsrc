// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

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
import com.tencent.mm.ui.chatting.ChattingUI;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            MediaNoteHelper, HelperHeaderPreference

public class ContactWidgetMediaNote
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetMediaNote(Context context)
    {
        d = new HashMap();
        b = context;
        e = new MediaNoteHelper(context);
    }

    static Context a(ContactWidgetMediaNote contactwidgetmedianote)
    {
        return contactwidgetmedianote.b;
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
        int i = ConfigStorageLogic.d();
        int j;
        int k;
        if(flag)
            j = i | 0x4000;
        else
            j = i & 0xffffbfff;
        MMCore.f().f().a(7, Integer.valueOf(j));
        if(flag)
            k = 1;
        else
            k = 2;
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(13, k));
    }

    public static void b()
    {
        MsgInfoStorageLogic.d("medianote");
        MMCore.f().j().a("medianote");
    }

    private void c()
    {
        boolean flag = false;
        boolean flag1;
        int i;
        if((0x10 & ConfigStorageLogic.f()) == 0)
            flag1 = true;
        else
            flag1 = flag;
        i = ConfigStorageLogic.d();
        if(!ConfigStorageLogic.q())
        {
            if((i & 0x4000) != 0)
            {
                int j = i & 0xffffbfff;
                MMCore.f().f().a(7, Integer.valueOf(j));
            }
        } else
        if((i & 0x4000) != 0)
            flag = true;
        a.a();
        if(d.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)d.get("contact_info_header_helper");
            helperheaderpreference.a(c, e);
            a.a(helperheaderpreference);
        }
        if(!flag1)
        {
            if(d.containsKey("contact_info_medianote_install"))
                a.a((Preference)d.get("contact_info_medianote_install"));
        } else
        {
            if(d.containsKey("contact_info_medianote_view"))
                a.a((Preference)d.get("contact_info_medianote_view"));
            if(d.containsKey("contact_info_medianote_cat"))
                a.a((Preference)d.get("contact_info_medianote_cat"));
            if(d.containsKey("contact_info_medianote_sync_to_qqmail"))
            {
                CheckBoxPreference checkboxpreference = (CheckBoxPreference)d.get("contact_info_medianote_sync_to_qqmail");
                checkboxpreference.setChecked(flag);
                a.a(checkboxpreference);
            }
            if(d.containsKey("contact_info_medianote_cat2"))
                a.a((Preference)d.get("contact_info_medianote_cat2"));
            if(d.containsKey("contact_info_medianote_clear_data"))
                a.a((Preference)d.get("contact_info_medianote_clear_data"));
            if(d.containsKey("contact_info_medianote_cat3"))
                a.a((Preference)d.get("contact_info_medianote_cat3"));
            if(d.containsKey("contact_info_medianote_uninstall"))
                a.a((Preference)d.get("contact_info_medianote_uninstall"));
        }
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
        Assert.assertTrue(ContactStorageLogic.y(contact.s()));
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        ipreferencescreen.a(0x7f05000a);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            d.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_medianote_view");
        if(preference1 != null)
            d.put("contact_info_medianote_view", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_medianote_cat");
        if(preferencecategory != null)
            d.put("contact_info_medianote_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_medianote_sync_to_qqmail");
        if(preference2 != null)
            d.put("contact_info_medianote_sync_to_qqmail", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_medianote_cat2");
        if(preferencecategory1 != null)
            d.put("contact_info_medianote_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_medianote_clear_data");
        if(preference3 != null)
            d.put("contact_info_medianote_clear_data", preference3);
        preferencecategory2 = (PreferenceCategory)ipreferencescreen.a("contact_info_medianote_cat3");
        if(preferencecategory2 != null)
            d.put("contact_info_medianote_cat3", preferencecategory2);
        preference4 = ipreferencescreen.a("contact_info_medianote_install");
        if(preference4 != null)
            d.put("contact_info_medianote_install", preference4);
        preference5 = ipreferencescreen.a("contact_info_medianote_uninstall");
        if(preference5 != null)
            d.put("contact_info_medianote_uninstall", preference5);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetMediaNote", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_medianote_view"))
            {
                Intent intent = new Intent();
                intent.putExtra("Chat_User", "medianote");
                intent.setClass(b, com/tencent/mm/ui/chatting/ChattingUI);
                b.startActivity(intent);
                MMCore.g().b(new NetSceneSync(5));
                flag = true;
            } else
            if(s.equals("contact_info_medianote_sync_to_qqmail"))
            {
                if(!ConfigStorageLogic.q())
                {
                    MMAlert.a(b, 0x7f0a0293, 0x7f0a0292, new _cls1(), null);
                    c();
                } else
                {
                    a(((CheckBoxPreference)a.a(s)).isChecked());
                }
                flag = true;
            } else
            if(s.equals("contact_info_medianote_clear_data"))
            {
                String as1[] = b.getResources().getStringArray(0x7f06000a);
                MMAlert.a(b, null, as1, "", new _cls2());
                flag = true;
            } else
            if(s.equals("contact_info_medianote_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_medianote_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls3());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetMediaNote", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
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

    private class _cls4 extends Handler
    {

        public final void handleMessage(Message message)
        {
            if(a)
                ContactWidgetMediaNote.a(true);
            int i = ConfigStorageLogic.f();
            int j;
            if(a)
                j = i & 0xffffffef;
            else
                j = i | 0x10;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            if(!a)
                ContactWidgetMediaNote.b();
            if(b != null)
                b.a_(null);
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
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMWizardActivity.a(ContactWidgetMediaNote.a(a), new Intent(ContactWidgetMediaNote.a(a), com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private ContactWidgetMediaNote a;

        _cls1()
        {
            a = ContactWidgetMediaNote.this;
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
            ContactWidgetMediaNote.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetMediaNote a;

        _cls2()
        {
            a = ContactWidgetMediaNote.this;
            super();
        }
    }


    private class _cls3
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
            ContactWidgetMediaNote.a(ContactWidgetMediaNote.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetMediaNote a;

        _cls3()
        {
            a = ContactWidgetMediaNote.this;
            super();
        }
    }

}

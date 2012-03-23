// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.*;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.view.View;
import android.widget.CheckBox;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneLbsFind;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.nearbyfriends.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            LBSHelper, HelperHeaderPreference

public class ContactWidgetLBS
    implements IOnSceneEnd, com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetLBS(Context context)
    {
        i = new HashMap();
        k = null;
        b = context;
        j = new LBSHelper(context);
        f = View.inflate(context, 0x7f03005a, null);
        g = (CheckBox)f.findViewById(0x7f070137);
        g.setChecked(false);
        MMCore.g().a(43, this);
    }

    static ProgressDialog a(ContactWidgetLBS contactwidgetlbs, ProgressDialog progressdialog)
    {
        contactwidgetlbs.d = progressdialog;
        return progressdialog;
    }

    static Context a(ContactWidgetLBS contactwidgetlbs)
    {
        return contactwidgetlbs.b;
    }

    static NetSceneLbsFind a(ContactWidgetLBS contactwidgetlbs, NetSceneLbsFind netscenelbsfind)
    {
        contactwidgetlbs.e = netscenelbsfind;
        return netscenelbsfind;
    }

    public static void a(Context context, boolean flag, MListAdapter mlistadapter)
    {
        String s;
        ProgressDialog progressdialog;
        _cls6 _lcls6;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        h = flag;
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls6 = new _cls6(flag, mlistadapter);
        (new Timer()).schedule(new _cls7(progressdialog, _lcls6), 1500L);
    }

    static CheckBox b(ContactWidgetLBS contactwidgetlbs)
    {
        return contactwidgetlbs.g;
    }

    public static void b()
    {
        MMCore.g().b(new NetSceneLbsFind(2, 0F, 0F, 0, 0, "", ""));
    }

    static NetSceneLbsFind c(ContactWidgetLBS contactwidgetlbs)
    {
        return contactwidgetlbs.e;
    }

    private void c()
    {
        boolean flag;
        if((0x200 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        a.a();
        if(i.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)i.get("contact_info_header_helper");
            helperheaderpreference.a(c, j);
            a.a(helperheaderpreference);
        }
        if(flag) goto _L2; else goto _L1
_L1:
        if(i.containsKey("contact_info_lbs_install"))
            a.a((Preference)i.get("contact_info_lbs_install"));
_L4:
        return;
_L2:
        if(i.containsKey("contact_info_lbs_go_lbs"))
            a.a((Preference)i.get("contact_info_lbs_go_lbs"));
        if(i.containsKey("contact_info_lbs_hide_cat"))
            a.a((Preference)i.get("contact_info_lbs_hide_cat"));
        if(i.containsKey("contact_info_lbs_clear_info"))
            a.a((Preference)i.get("contact_info_lbs_clear_info"));
        if(i.containsKey("contact_info_lbs_hide_cat2"))
            a.a((Preference)i.get("contact_info_lbs_hide_cat2"));
        if(i.containsKey("contact_info_lbs_uninstall"))
            a.a((Preference)i.get("contact_info_lbs_uninstall"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int l, int i1, String s, NetSceneBase netscenebase)
    {
        if(e != null || ((NetSceneLbsFind)netscenebase).f() != 2) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Log.c("MicroMsg.ContactWidgetLBS", (new StringBuilder()).append("onSceneEnd: errType = ").append(l).append(" errCode = ").append(i1).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 43)
        {
            if(d != null)
            {
                d.dismiss();
                d = null;
            }
            int j1;
            if(l == 0 && i1 == 0)
                j1 = 0x7f0a03c8;
            else
                j1 = 0x7f0a03c9;
            if(((NetSceneLbsFind)netscenebase).f() == 2 && h)
            {
                MMAlert.a(b, j1, 0x7f0a0010, new _cls8());
                e = null;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a(int l, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.f().f().b(this);
        MMCore.g().b(43, this);
        Log.e("MicroMsg.ContactWidgetLBS", "listener removed");
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)i.get("contact_info_header_helper");
        if(helperheaderpreference != null)
            helperheaderpreference.a();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int l)
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
        Assert.assertTrue(ContactStorageLogic.w(contact.s()));
        MMCore.f().f().a(this);
        Log.e("MicroMsg.ContactWidgetLBS", "listener added");
        c = contact;
        a = ipreferencescreen;
        h = true;
        ipreferencescreen.a(0x7f050008);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            i.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_lbs_go_lbs");
        if(preference1 != null)
            i.put("contact_info_lbs_go_lbs", preference1);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_lbs_hide_cat");
        if(preferencecategory != null)
            i.put("contact_info_lbs_hide_cat", preferencecategory);
        preference2 = ipreferencescreen.a("contact_info_lbs_clear_info");
        if(preference2 != null)
            i.put("contact_info_lbs_clear_info", preference2);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_lbs_hide_cat2");
        if(preferencecategory1 != null)
            i.put("contact_info_lbs_hide_cat2", preferencecategory1);
        preference3 = ipreferencescreen.a("contact_info_lbs_install");
        if(preference3 != null)
            i.put("contact_info_lbs_install", preference3);
        preference4 = ipreferencescreen.a("contact_info_lbs_uninstall");
        if(preference4 != null)
            i.put("contact_info_lbs_uninstall", preference4);
        c();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetLBS", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_lbs_go_lbs"))
            {
                Boolean boolean1 = (Boolean)MMCore.f().f().a(4103);
                if(boolean1 == null || !boolean1.booleanValue())
                {
                    b.startActivity(new Intent(b, com/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI));
                } else
                {
                    SelfPersonCard selfpersoncard = SelfPersonCard.b();
                    if(selfpersoncard == null)
                    {
                        b.startActivity(new Intent(b, com/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI));
                    } else
                    {
                        String s1 = Util.h(selfpersoncard.f());
                        String s2 = Util.h(selfpersoncard.e());
                        int l = selfpersoncard.d();
                        if(s1.equals("") || s2.equals("") || l == 0)
                        {
                            b.startActivity(new Intent(b, com/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI));
                        } else
                        {
                            Boolean boolean2 = (Boolean)MMCore.f().f().a(4104);
                            if(boolean2 == null || !boolean2.booleanValue())
                            {
                                b.startActivity(new Intent(b, com/tencent/mm/ui/nearbyfriends/NearbyFriendsUI));
                                ((Activity)b).finish();
                            } else
                            if(k == null)
                                k = MMAlert.a(b, b.getString(0x7f0a0010), f, new _cls2(), new _cls3());
                            else
                                k.show();
                        }
                    }
                }
                flag = true;
            } else
            if(s.equals("contact_info_lbs_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_lbs_clear_info"))
            {
                MMAlert.a(b, 0x7f0a03c7, 0x7f0a03c6, new _cls4(), new _cls5());
                flag = true;
            } else
            if(s.equals("contact_info_lbs_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls1());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetLBS", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(s.equals("7") || s.equals("34"))
            c();
    }

    private static boolean h = true;
    private IPreferenceScreen a;
    private Context b;
    private Contact c;
    private ProgressDialog d;
    private NetSceneLbsFind e;
    private View f;
    private CheckBox g;
    private Map i;
    private HelperHeaderPreference.IHandler j;
    private AlertDialog k;


    private class _cls6 extends Handler
    {

        public final void handleMessage(Message message)
        {
            int l = ConfigStorageLogic.f();
            int i1;
            if(a)
                i1 = l & 0xfffffdff;
            else
                i1 = l | 0x200;
            MMCore.f().f().a(34, Integer.valueOf(i1));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", i1, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            if(!a)
                ContactWidgetLBS.b();
            if(b != null)
                b.a_(null);
        }

        private boolean a;
        private MListAdapter b;

        _cls6(boolean flag, MListAdapter mlistadapter)
        {
            a = flag;
            b = mlistadapter;
            super();
        }
    }


    private class _cls7 extends TimerTask
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

        _cls7(ProgressDialog progressdialog, Handler handler)
        {
            a = progressdialog;
            b = handler;
            super();
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
        }

        private ContactWidgetLBS a;

        _cls8()
        {
            a = ContactWidgetLBS.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
            ConfigStorage configstorage = MMCore.f().f();
            boolean flag;
            if(!ContactWidgetLBS.b(a).isChecked())
                flag = true;
            else
                flag = false;
            configstorage.a(4104, Boolean.valueOf(flag));
            ContactWidgetLBS.a(a).startActivity(new Intent(ContactWidgetLBS.a(a), com/tencent/mm/ui/nearbyfriends/NearbyFriendsUI));
            ((Activity)ContactWidgetLBS.a(a)).finish();
        }

        private ContactWidgetLBS a;

        _cls2()
        {
            a = ContactWidgetLBS.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
        }

        private ContactWidgetLBS a;

        _cls3()
        {
            a = ContactWidgetLBS.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
            ContactWidgetLBS.a(a, new NetSceneLbsFind(2, 0F, 0F, 0, 0, "", ""));
            MMCore.g().b(ContactWidgetLBS.c(a));
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface1)
                {
                    MMCore.g().a(ContactWidgetLBS.c(a.a));
                }

                private _cls4 a;

                _cls1()
                {
                    a = _cls4.this;
                    super();
                }
            }

            ContactWidgetLBS.a(a, MMAlert.a(ContactWidgetLBS.a(a), ContactWidgetLBS.a(a).getString(0x7f0a0010), ContactWidgetLBS.a(a).getString(0x7f0a03ca), true, new _cls1()));
        }

        final ContactWidgetLBS a;

        _cls4()
        {
            a = ContactWidgetLBS.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
        }

        private ContactWidgetLBS a;

        _cls5()
        {
            a = ContactWidgetLBS.this;
            super();
        }
    }


    private class _cls1
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int l)
        {
            l;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetLBS.a(ContactWidgetLBS.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetLBS a;

        _cls1()
        {
            a = ContactWidgetLBS.this;
            super();
        }
    }

}

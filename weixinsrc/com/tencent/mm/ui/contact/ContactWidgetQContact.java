// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.preference.Preference;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneBatchGetContactProfile;
import com.tencent.mm.modelqmsg.QContact;
import com.tencent.mm.modelqmsg.QContactStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.test.Test;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMAlert;
import java.util.HashSet;
import java.util.Set;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            NormalUserHeaderPreference

public class ContactWidgetQContact
    implements IOnSceneEnd, ContactInfoUI.IBodyWidget
{

    public ContactWidgetQContact(Context context)
    {
        b = context;
    }

    static Context a(ContactWidgetQContact contactwidgetqcontact)
    {
        return contactwidgetqcontact.b;
    }

    private void b()
    {
        QContact qcontact = MMCore.f().D().a(d.s());
        if(qcontact == null || Util.h(qcontact.b()).length() <= 0)
        {
            Log.a("MicroMsg.ContactWidgetQContact", "updateProfile : Qcontact is null");
        } else
        {
            if(Util.h(qcontact.c()).length() <= 0)
                Log.a("MicroMsg.ContactWidgetQContact", "updateProfile: QContact extInfo is null");
            Preference preference = c.a("contact_info_qcontact_sex");
            Preference preference1 = c.a("contact_info_qcontact_age");
            Preference preference2 = c.a("contact_info_qcontact_birthday");
            Preference preference3 = c.a("contact_info_qcontact_address");
            QExtInfoContent qextinfocontent = new QExtInfoContent();
            qextinfocontent.a(qcontact.c());
            if(preference != null)
                preference.setSummary(qextinfocontent.a());
            if(preference1 != null)
                preference1.setSummary(qextinfocontent.b());
            if(preference2 != null)
                preference2.setSummary(qextinfocontent.d());
            if(preference3 != null)
                preference3.setSummary(qextinfocontent.c());
            c.notifyDataSetChanged();
        }
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        int k = 1;
        if(netscenebase.b() == 42) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(a == null) goto _L4; else goto _L3
_L3:
        a.dismiss();
        a = null;
        i;
        JVM INSTR tableswitch 1 2: default 56
    //                   1 146
    //                   2 211;
           goto _L5 _L6 _L7
_L5:
        k = 0;
_L9:
        if(k != 0) goto _L1; else goto _L4
_L4:
        if(i == 0 && j == 0)
        {
            QContact qcontact = MMCore.f().D().a(d.s());
            Context context;
            Context context1;
            Object aobj[];
            Context context2;
            Context context3;
            Object aobj1[];
            if(qcontact == null || Util.h(qcontact.b()).length() <= 0)
            {
                Log.a("MicroMsg.ContactWidgetQContact", (new StringBuilder()).append("resetUpdateStatus: did not find this QContact, username = ").append(d.s()).toString());
            } else
            {
                qcontact.a(8);
                qcontact.b(0);
                if(!MMCore.f().D().a(d.s(), qcontact))
                    Log.a("MicroMsg.ContactWidgetQContact", (new StringBuilder()).append("resetUpdateStatus: update Qcontact failed, username = ").append(d.s()).toString());
            }
            b();
        }
          goto _L1
_L6:
        if(!Test.a) goto _L5; else goto _L8
_L8:
        context2 = b;
        context3 = b;
        aobj1 = new Object[2];
        aobj1[0] = Integer.valueOf(k);
        aobj1[k] = Integer.valueOf(j);
        Toast.makeText(context2, context3.getString(0x7f0a0079, aobj1), 3000).show();
          goto _L9
_L7:
        if(!Test.a) goto _L5; else goto _L10
_L10:
        context = b;
        context1 = b;
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(2);
        aobj[k] = Integer.valueOf(j);
        Toast.makeText(context, context1.getString(0x7f0a007a, aobj), 3000).show();
          goto _L9
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.g().b(42, this);
        NormalUserHeaderPreference normaluserheaderpreference = (NormalUserHeaderPreference)c.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            normaluserheaderpreference.a();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1 = false;
        boolean flag2;
        boolean flag3;
        NormalUserHeaderPreference normaluserheaderpreference;
        QContact qcontact;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag3 = true;
        else
            flag3 = flag1;
        Assert.assertTrue(flag3);
        Assert.assertTrue(ContactStorageLogic.r(contact.s()));
        MMCore.g().a(42, this);
        d = contact;
        c = ipreferencescreen;
        ipreferencescreen.a(0x7f05000c);
        normaluserheaderpreference = (NormalUserHeaderPreference)ipreferencescreen.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            normaluserheaderpreference.a(contact);
        b();
        qcontact = MMCore.f().D().a(d.s());
        if(qcontact == null || Util.h(qcontact.b()).length() <= 0)
        {
            Log.a("MicroMsg.ContactWidgetQContact", "getProfileOrNot: QContact is null, should not in this way");
            qcontact = new QContact();
            qcontact.a(d.s());
            qcontact.a(-1);
            MMCore.f().D().a(qcontact);
        }
        if(qcontact.d() == 1)
        {
            String s = d.s();
            boolean flag4;
            HashSet hashset;
            NetSceneBatchGetContactProfile netscenebatchgetcontactprofile;
            if(Util.h(qcontact.c()).length() <= 0)
                flag4 = true;
            else
                flag4 = flag1;
            if(Util.h(s).length() > 0)
                flag1 = true;
            Assert.assertTrue(flag1);
            hashset = new HashSet();
            hashset.add(s);
            netscenebatchgetcontactprofile = new NetSceneBatchGetContactProfile(hashset);
            (new Handler()).post(new _cls1(netscenebatchgetcontactprofile));
            if(flag4)
                a = MMAlert.a(b, b.getString(0x7f0a0010), b.getString(0x7f0a0027), true, new _cls2(netscenebatchgetcontactprofile));
        }
        return true;
    }

    public final boolean a(String s)
    {
        return true;
    }

    private ProgressDialog a;
    private Context b;
    private IPreferenceScreen c;
    private Contact d;

    private class QExtInfoContent
    {

        public final String a()
        {
            String s;
            if(a == null)
                s = "";
            else
                s = a;
            return s;
        }

        public final void a(String s)
        {
            if(Util.h(s).length() > 0) goto _L2; else goto _L1
_L1:
            Log.a("MicroMsg.ContactWidgetQContact", "QExtInfoContent : parse xml, but xml is null");
_L4:
            return;
_L2:
            Map map = Util.b(s, "extinfo");
            if(map != null)
            {
                a = (String)map.get(".extinfo.sex");
                b = (String)map.get(".extinfo.age");
                d = (String)map.get(".extinfo.bd");
                e = (String)map.get(".extinfo.country");
                g = (String)map.get(".extinfo.province");
                f = (String)map.get(".extinfo.city");
            }
            if(a != null && a.equals("1"))
                a = ContactWidgetQContact.a(h).getString(0x7f0a0072);
            else
                a = ContactWidgetQContact.a(h).getString(0x7f0a0073);
            if(e != null)
                c = (new StringBuilder()).append(c).append(e).append(" ").toString();
            if(g != null)
                c = (new StringBuilder()).append(c).append(g).append(" ").toString();
            if(f != null)
                c = (new StringBuilder()).append(c).append(f).toString();
            if(true) goto _L4; else goto _L3
_L3:
        }

        public final String b()
        {
            String s;
            if(b == null)
                s = "";
            else
                s = b;
            return s;
        }

        public final String c()
        {
            String s;
            if(c == null)
                s = "";
            else
                s = c;
            return s;
        }

        public final String d()
        {
            String s;
            if(d == null)
                s = "";
            else
                s = d;
            return s;
        }

        private String a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g;
        private ContactWidgetQContact h;

        QExtInfoContent()
        {
            this((byte)0);
        }

        private QExtInfoContent(byte byte0)
        {
            h = ContactWidgetQContact.this;
            super();
            a = "";
            b = "";
            c = "";
            d = "";
            e = "";
            f = "";
            g = "";
        }
    }


    private class _cls1
        implements Runnable
    {

        public void run()
        {
            MMCore.g().b(a);
        }

        private NetSceneBatchGetContactProfile a;
        private ContactWidgetQContact b;

        _cls1(NetSceneBatchGetContactProfile netscenebatchgetcontactprofile)
        {
            b = ContactWidgetQContact.this;
            a = netscenebatchgetcontactprofile;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneBatchGetContactProfile a;
        private ContactWidgetQContact b;

        _cls2(NetSceneBatchGetContactProfile netscenebatchgetcontactprofile)
        {
            b = ContactWidgetQContact.this;
            a = netscenebatchgetcontactprofile;
            super();
        }
    }

}

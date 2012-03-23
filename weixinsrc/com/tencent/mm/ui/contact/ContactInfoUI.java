// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMPreference;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            ContactWidgetSetAvatar, ContactWidgetQQMail, ContactWidgetFMessage, ContactWidgetFloatBottle, 
//            ContactWidgetTMessage, ContactWidgetQMessage, ContactWidgetQContact, ContactWidgetGroupCard, 
//            ContactWidgetQQSync, ContactWidgetBottleContact, ContactWidgetLBS, ContactWidgetShake, 
//            ContactWidgetMediaNote, ContactWidgetReaderAppNews, ContactWidgetReaderAppWeibo, ContactWidgetFacebookapp, 
//            ContactWidgetGmail, ContactWidgetQQFriend, ContactWidgetMassSend, ContactWidgetNormal

public class ContactInfoUI extends MMPreference
{

    public ContactInfoUI()
    {
        d = false;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        Log.c("MicroMsg.ContactInfoUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        if(b != null)
            b.a(s);
        return false;
    }

    public final int d_()
    {
        return -1;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if(b != null)
            b.a(i, intent);
    }

    public void onCreate(Bundle bundle)
    {
        long l1;
        super.onCreate(bundle);
        a = q();
        e = getIntent().getIntExtra("Contact_Scene", 9);
        c = getIntent().getBooleanExtra("Chat_Readonly", false);
        String s = getIntent().getStringExtra("Contact_User");
        String s1 = getIntent().getStringExtra("Contact_Alias");
        f = MMCore.f().h().c(s);
        String s2 = getIntent().getStringExtra("Contact_Nick");
        int i = getIntent().getIntExtra("Contact_Sex", 0);
        String s3 = getIntent().getStringExtra("Contact_Province");
        String s4 = getIntent().getStringExtra("Contact_City");
        String s5 = getIntent().getStringExtra("Contact_Signature");
        int j = getIntent().getIntExtra("Contact_VUser_Info_Flag", 0);
        String s6 = getIntent().getStringExtra("Contact_VUser_Info");
        String s7 = getIntent().getStringExtra("Contact_Distance");
        int k = getIntent().getIntExtra("Contact_KWeibo_flag", 0);
        String s8 = getIntent().getStringExtra("Contact_KWeibo");
        String s9 = getIntent().getStringExtra("Contact_KWeiboNick");
        String s10 = getIntent().getStringExtra("Contact_KFacebookName");
        long l = getIntent().getLongExtra("Contact_KFacebookId", 0L);
        d = getIntent().getBooleanExtra("User_From_Fmessage", false);
        int i1 = getIntent().getIntExtra("Contact_verify_Scene", 9);
        long l2;
        if(f == null || f.o() == 0 || Util.h(f.s()).length() <= 0)
        {
            f = new Contact();
            f.a(s);
            f.f(s1);
            f.b(s2);
            f.d(getIntent().getStringExtra("Contact_PyInitial"));
            f.e(getIntent().getStringExtra("Contact_QuanPin"));
            f.c(i);
            f.i(s3);
            f.j(s4);
            f.h(s5);
            f.j(j);
            f.o(s6);
            f.p(s7);
            f.k(i1);
            f.q(s8);
            f.m(k);
            f.r(s9);
            f.b(l);
            f.c(s10);
        } else
        {
            if(f.p() == 0)
                f.c(i);
            if(s3 != null && !s3.equals(""))
                f.i(s3);
            if(s4 != null && !s4.equals(""))
                f.j(s4);
            if(s5 != null && !s5.equals(""))
                f.h(s5);
            if(j != 0)
                f.j(j);
            if(s6 != null && !s6.equals(""))
                f.o(s6);
            if(s2 != null && !s2.equals(""))
                f.b(s2);
            f.p(s7);
            f.k(i1);
            f.b(l);
            f.c(s10);
        }
        if(!f.s().equals(ConfigStorageLogic.b()))
            break MISSING_BLOCK_LABEL_892;
        l2 = Long.parseLong((String)MMCore.f().f().a(0x10121));
        l1 = l2;
_L1:
        if(l1 > 0L)
        {
            f.b(l1);
            f.c((String)MMCore.f().f().a(0x10122));
        }
_L2:
        String s11;
        String s12;
        int j1;
        String s13;
        boolean flag;
        int k1;
        Exception exception;
        if(Util.h(f.s()).length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("initView: contact username is null", flag);
        if(ContactStorageLogic.E(s))
            k1 = 0x7f0a01a1;
        else
            k1 = 0x7f0a0233;
        d(k1);
        if(ContactStorageLogic.b(f.s()))
            d(0x7f0a0235);
        if(getIntent().getBooleanExtra("User_Avatar", false))
            b = new ContactWidgetSetAvatar(this);
        else
        if(ContactStorageLogic.g(f.s()))
            b = new ContactWidgetQQMail(this);
        else
        if(ContactStorageLogic.h(f.s()))
        {
            b = new ContactWidgetFMessage(this);
            d(0x7f0a01a1);
        } else
        if(ContactStorageLogic.j(f.s()))
        {
            b = new ContactWidgetFloatBottle(this);
            d(0x7f0a01a1);
        } else
        if(ContactStorageLogic.i(f.s()))
        {
            b = new ContactWidgetTMessage(this);
            d(0x7f0a01a1);
        } else
        if(ContactStorageLogic.k(f.s()))
        {
            b = new ContactWidgetQMessage(this);
            d(0x7f0a01a1);
        } else
        if(ContactStorageLogic.r(f.s()))
            b = new ContactWidgetQContact(this);
        else
        if(ContactStorageLogic.c(f.s()))
            b = new ContactWidgetGroupCard(this);
        else
        if(ContactStorageLogic.o(f.s()))
            b = new ContactWidgetQQSync(this);
        else
        if(ContactStorageLogic.t(f.s()))
            b = new ContactWidgetBottleContact(this);
        else
        if(ContactStorageLogic.w(f.s()))
            b = new ContactWidgetLBS(this);
        else
        if(ContactStorageLogic.x(f.s()))
            b = new ContactWidgetShake(this);
        else
        if(ContactStorageLogic.y(f.s()))
            b = new ContactWidgetMediaNote(this);
        else
        if(ContactStorageLogic.z(f.s()))
            b = new ContactWidgetReaderAppNews(this);
        else
        if(ContactStorageLogic.A(f.s()))
            b = new ContactWidgetReaderAppWeibo(this);
        else
        if(ContactStorageLogic.m(f.s()))
            b = new ContactWidgetFacebookapp(this);
        else
        if(ContactStorageLogic.B(f.s()))
            b = new ContactWidgetGmail(this);
        else
        if(ContactStorageLogic.C(f.s()))
            b = new ContactWidgetQQFriend(this);
        else
        if(ContactStorageLogic.n(f.s()))
            b = new ContactWidgetMassSend(this);
        else
            b = new ContactWidgetNormal(this);
        if(b != null)
            b.a(a, f, c, e);
        b(new _cls1());
        return;
        exception;
        l1 = 0L;
          goto _L1
        if(f.s().equals(ContactStorageLogic.u(ConfigStorageLogic.b())))
        {
            s11 = Util.h((String)MMCore.f().f().a(12293));
            s12 = Util.h((String)MMCore.f().f().a(12292));
            if(s11 != "" && s12 != "")
            {
                f.i(s11);
                f.j(s12);
            }
            j1 = Util.a((Integer)MMCore.f().f().a(12290), 0);
            s13 = Util.h((String)MMCore.f().f().a(12291));
            f.c(j1);
            f.h(s13);
        }
          goto _L2
    }

    public void onDestroy()
    {
        if(b != null)
            b.a();
        super.onDestroy();
    }

    private IPreferenceScreen a;
    private IBodyWidget b;
    private boolean c;
    private boolean d;
    private int e;
    private Contact f;

    private class IBodyWidget
    {

        public abstract void a(int i, Intent intent);

        public abstract boolean a();

        public abstract boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i);

        public abstract boolean a(String s);
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private ContactInfoUI a;

        _cls1()
        {
            a = ContactInfoUI.this;
            super();
        }
    }

}

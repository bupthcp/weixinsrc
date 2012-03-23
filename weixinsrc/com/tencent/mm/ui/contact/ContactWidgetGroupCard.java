// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.preference.PreferenceCategory;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.RoomInfoContPreference;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            NormalUserFooterPreference, ContactInfoUI

public class ContactWidgetGroupCard
    implements ContactInfoUI.IBodyWidget
{

    public ContactWidgetGroupCard(Context context)
    {
        a = context;
    }

    static RoomInfoContPreference a(ContactWidgetGroupCard contactwidgetgroupcard)
    {
        return contactwidgetgroupcard.h;
    }

    static Context b(ContactWidgetGroupCard contactwidgetgroupcard)
    {
        return contactwidgetgroupcard.a;
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        NormalUserFooterPreference normaluserfooterpreference = (NormalUserFooterPreference)b.a("contact_info_footer_normal");
        if(normaluserfooterpreference != null)
            normaluserfooterpreference.a();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1;
        boolean flag2;
        boolean flag3;
        PreferenceCategory preferencecategory;
        PreferenceCategory preferencecategory1;
        NormalUserFooterPreference normaluserfooterpreference;
        if(contact != null)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(Util.h(contact.s()).length() > 0)
            flag2 = true;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(ipreferencescreen != null)
            flag3 = true;
        else
            flag3 = false;
        Assert.assertTrue(flag3);
        b = ipreferencescreen;
        c = contact;
        d = flag;
        e = i;
        f = ((Activity)a).getIntent().getBooleanExtra("User_Verify", false);
        g = ((Activity)a).getIntent().getIntExtra("Kdel_from", -1);
        b.a();
        preferencecategory = new PreferenceCategory(a);
        b.a(preferencecategory);
        h = new RoomInfoContPreference(a);
        h.setTitle(0x7f0a000f);
        h.setKey("roominfo_contact");
        h.setLayoutResource(0x7f0300cb);
        b.a(h);
        h.a(c.s(), true, 1);
        h.a(new _cls1());
        preferencecategory1 = new PreferenceCategory(a);
        b.a(preferencecategory1);
        normaluserfooterpreference = new NormalUserFooterPreference(a);
        normaluserfooterpreference.setLayoutResource(0x7f03003e);
        normaluserfooterpreference.setKey("contact_info_footer_normal");
        if(normaluserfooterpreference.a(c, d, f, false, e, g, false, false))
            b.a(normaluserfooterpreference);
        return true;
    }

    public final boolean a(String s)
    {
        Log.d("MicroMsg.ContactWidgetGroupCard", (new StringBuilder()).append("handleEvent ").append(s).toString());
        Contact contact = MMCore.f().h().c(s);
        if(contact != null)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/contact/ContactInfoUI);
            intent.putExtra("Contact_User", contact.s());
            a.startActivity(intent);
        }
        return true;
    }

    private Context a;
    private IPreferenceScreen b;
    private Contact c;
    private boolean d;
    private int e;
    private boolean f;
    private int g;
    private RoomInfoContPreference h;

    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(ContactWidgetGroupCard.a(a).c(i))
            {
                String s = ContactWidgetGroupCard.a(a).e(i);
                Intent intent = new Intent();
                intent.setClass(ContactWidgetGroupCard.b(a), com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", s);
                ContactWidgetGroupCard.b(a).startActivity(intent);
            }
        }

        private ContactWidgetGroupCard a;

        _cls1()
        {
            a = ContactWidgetGroupCard.this;
            super();
        }
    }

}

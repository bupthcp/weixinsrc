// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.KeyValuePreference;
import com.tencent.mm.ui.chatting.SpanUtil;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            FriendPreference, NormalUserHeaderPreference, NormalUserFooterPreference

public class ContactWidgetBottleContact
    implements ContactInfoUI.IBodyWidget
{

    public ContactWidgetBottleContact(Context context)
    {
        a = context;
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        FriendPreference friendpreference = (FriendPreference)b.a("contact_info_friend");
        if(friendpreference != null)
            friendpreference.c();
        NormalUserHeaderPreference normaluserheaderpreference = (NormalUserHeaderPreference)b.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            normaluserheaderpreference.a();
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
        NormalUserHeaderPreference normaluserheaderpreference;
        NormalUserFooterPreference normaluserfooterpreference;
        boolean flag4;
        KeyValuePreference keyvaluepreference;
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
        ipreferencescreen.a();
        ipreferencescreen.a(0x7f050002);
        normaluserheaderpreference = (NormalUserHeaderPreference)ipreferencescreen.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            normaluserheaderpreference.a(contact);
        normaluserfooterpreference = (NormalUserFooterPreference)ipreferencescreen.a("contact_info_footer_normal");
        flag4 = ((Activity)a).getIntent().getBooleanExtra("Contact_FMessageCard", false);
        if(normaluserfooterpreference != null && !normaluserfooterpreference.a(contact, flag, false, true, 25, 0, flag4, false))
            ipreferencescreen.b(normaluserfooterpreference);
        keyvaluepreference = (KeyValuePreference)ipreferencescreen.a("contact_info_signature");
        if(contact.K() != null && !contact.K().trim().equals(""))
        {
            if(keyvaluepreference != null)
            {
                keyvaluepreference.a(false);
                keyvaluepreference.setTitle(a.getString(0x7f0a0264));
                keyvaluepreference.setSummary(SpanUtil.a(a, contact.K(), -2));
                keyvaluepreference.a();
            }
        } else
        {
            ipreferencescreen.b(keyvaluepreference);
        }
        return true;
    }

    public final boolean a(String s)
    {
        return true;
    }

    private final Context a;
    private IPreferenceScreen b;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.preference.PreferenceCategory;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.tools.WebViewUI;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            VerifyUserHeaderPreference, NormalUserFooterPreference, LbsUserFooterInfoPreference

public class ContactWidgetVerify
    implements ContactInfoUI.IBodyWidget
{

    public final void a(int j, Intent intent)
    {
    }

    public final boolean a()
    {
        VerifyUserHeaderPreference verifyuserheaderpreference = (VerifyUserHeaderPreference)b.a("contact_info_header_vertfy");
        if(verifyuserheaderpreference != null)
        {
            MMCore.f().h().b(verifyuserheaderpreference);
            MMCore.f().y().b(verifyuserheaderpreference);
        }
        NormalUserFooterPreference normaluserfooterpreference = (NormalUserFooterPreference)b.a("contact_info_footer_normal");
        if(normaluserfooterpreference != null)
            normaluserfooterpreference.a();
        LbsUserFooterInfoPreference lbsuserfooterinfopreference = (LbsUserFooterInfoPreference)i.get("clear_lbs_info");
        if(lbsuserfooterinfopreference != null)
            lbsuserfooterinfopreference.b();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int j)
    {
        boolean flag1;
        boolean flag2;
        boolean flag3;
        VerifyUserHeaderPreference verifyuserheaderpreference;
        NormalUserFooterPreference normaluserfooterpreference;
        int k;
        long l;
        String s;
        String s1;
        VerifyUserHeaderPreference verifyuserheaderpreference1;
        NormalUserFooterPreference normaluserfooterpreference1;
        boolean flag4;
        boolean flag5;
        PreferenceCategory preferencecategory1;
        LbsUserFooterInfoPreference lbsuserfooterinfopreference1;
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
        e = j;
        f = ((Activity)a).getIntent().getBooleanExtra("User_Verify", false);
        g = ((Activity)a).getIntent().getBooleanExtra("Contact_IsLBSFriend", false);
        h = ((Activity)a).getIntent().getIntExtra("Kdel_from", -1);
        ipreferencescreen.a(0x7f050016);
        verifyuserheaderpreference = (VerifyUserHeaderPreference)ipreferencescreen.a("contact_info_header_vertfy");
        if(verifyuserheaderpreference != null)
            i.put("contact_info_header_vertfy", verifyuserheaderpreference);
        normaluserfooterpreference = (NormalUserFooterPreference)ipreferencescreen.a("contact_info_footer_normal");
        if(normaluserfooterpreference != null)
            i.put("contact_info_footer_normal", normaluserfooterpreference);
        contact.Q();
        JVM INSTR tableswitch 18 18: default 220
    //                   18 565;
           goto _L1 _L2
_L1:
        b.a();
        k = ((Activity)a).getIntent().getIntExtra("Contact_from_msgType", 0);
        l = ((Activity)a).getIntent().getLongExtra("Contact_Uin", -1L);
        s = ((Activity)a).getIntent().getStringExtra("Contact_Mobile_MD5");
        s1 = ((Activity)a).getIntent().getStringExtra("Contact_full_Mobile_MD5");
        verifyuserheaderpreference1 = (VerifyUserHeaderPreference)i.get("contact_info_header_vertfy");
        if(verifyuserheaderpreference1 != null)
        {
            verifyuserheaderpreference1.a(c, e, k, l, s, s1);
            b.a(verifyuserheaderpreference1);
        }
        normaluserfooterpreference1 = (NormalUserFooterPreference)i.get("contact_info_footer_normal");
        flag4 = ((Activity)a).getIntent().getBooleanExtra("User_From_Fmessage", false);
        flag5 = ((Activity)a).getIntent().getBooleanExtra("Contact_FMessageCard", false);
        ((Activity)a).getIntent().getBooleanExtra("Contact_KHideExpose", false);
        if(normaluserfooterpreference1 != null && normaluserfooterpreference1.a(c, d, f, g, e, h, flag5, flag4))
            b.a(normaluserfooterpreference1);
        preferencecategory1 = (PreferenceCategory)i.get("clear_lbs_info_cat");
        if(preferencecategory1 != null)
            b.a(preferencecategory1);
        lbsuserfooterinfopreference1 = (LbsUserFooterInfoPreference)i.get("clear_lbs_info");
        if(lbsuserfooterinfopreference1 != null)
        {
            lbsuserfooterinfopreference1.a();
            b.a(lbsuserfooterinfopreference1);
        }
        return true;
_L2:
        LbsUserFooterInfoPreference lbsuserfooterinfopreference = (LbsUserFooterInfoPreference)ipreferencescreen.a("clear_lbs_info");
        if(lbsuserfooterinfopreference != null)
            i.put("clear_lbs_info", lbsuserfooterinfopreference);
        PreferenceCategory preferencecategory = (PreferenceCategory)ipreferencescreen.a("clear_lbs_info_cat");
        if(preferencecategory != null)
            i.put("clear_lbs_info_cat", preferencecategory);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(String s)
    {
        if(s.equals("contact_info_weibo"))
        {
            String s1 = c.S();
            if(!s1.startsWith("http://t.qq.com/"))
                s1 = (new StringBuilder()).append("http://t.qq.com/").append(s1).toString();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
            intent.putExtra("title", a.getString(0x7f0a0263));
            intent.putExtra("zoom", true);
            intent.putExtra("vertical_scroll", false);
            intent.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
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
    private boolean g;
    private int h;
    private Map i;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.preference.PreferenceCategory;
import b.a.e;
import com.tencent.mm.model.*;
import com.tencent.mm.modelfriend.*;
import com.tencent.mm.modelgetvuserinfo.SceneGetVUserInfo;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.KeyValuePreference;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.tools.WebViewUI;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            FriendPreference, NormalUserHeaderPreference, NormalUserFooterPreference, LbsUserFooterInfoPreference, 
//            DomainMailListPreference

public class ContactWidgetNormal
    implements ContactInfoUI.IBodyWidget
{

    public ContactWidgetNormal(Context context)
    {
        a = context;
        i = new HashMap();
    }

    public final void a(int j, Intent intent)
    {
    }

    public final boolean a()
    {
        FriendPreference friendpreference = (FriendPreference)b.a("contact_info_friend");
        if(friendpreference != null)
            friendpreference.c();
        FriendPreference friendpreference1 = (FriendPreference)b.a("contact_info_facebook");
        if(friendpreference1 != null)
            friendpreference1.c();
        NormalUserHeaderPreference normaluserheaderpreference = (NormalUserHeaderPreference)b.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            normaluserheaderpreference.a();
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
        boolean flag4;
        boolean flag5;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        NormalUserHeaderPreference normaluserheaderpreference;
        NormalUserFooterPreference normaluserfooterpreference;
        android.preference.Preference preference;
        android.preference.Preference preference1;
        android.preference.Preference preference2;
        android.preference.Preference preference3;
        android.preference.Preference preference4;
        android.preference.Preference preference5;
        PreferenceCategory preferencecategory1;
        PreferenceCategory preferencecategory2;
        DomainMailListPreference domainmaillistpreference;
        FriendPreference friendpreference;
        NormalUserHeaderPreference normaluserheaderpreference1;
        String s;
        long l;
        String s1;
        FriendPreference friendpreference1;
        NormalUserFooterPreference normaluserfooterpreference1;
        boolean flag7;
        boolean flag8;
        PreferenceCategory preferencecategory3;
        LbsUserFooterInfoPreference lbsuserfooterinfopreference1;
        PreferenceCategory preferencecategory4;
        KeyValuePreference keyvaluepreference1;
        android.graphics.Bitmap bitmap;
        AddrUpload addrupload;
        FriendPreference friendpreference3;
        PreferenceCategory preferencecategory6;
        PreferenceCategory preferencecategory7;
        FriendPreference friendpreference4;
        KeyValuePreference keyvaluepreference3;
        KeyValuePreference keyvaluepreference4;
        StringBuilder stringbuilder;
        Context context;
        Object aobj[];
        KeyValuePreference keyvaluepreference5;
        KeyValuePreference keyvaluepreference6;
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
        ipreferencescreen.a(0x7f05000b);
        normaluserheaderpreference = (NormalUserHeaderPreference)ipreferencescreen.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            i.put("contact_info_header_normal", normaluserheaderpreference);
        normaluserfooterpreference = (NormalUserFooterPreference)ipreferencescreen.a("contact_info_footer_normal");
        if(normaluserfooterpreference != null)
            i.put("contact_info_footer_normal", normaluserfooterpreference);
        contact.Q();
        JVM INSTR tableswitch 18 18: default 220
    //                   18 1923;
           goto _L1 _L2
_L1:
        preference = ipreferencescreen.a("contact_info_district");
        if(preference != null)
            i.put("contact_info_district", preference);
        preference1 = ipreferencescreen.a("contact_info_weibo");
        if(preference1 != null)
            i.put("contact_info_weibo", preference1);
        preference2 = ipreferencescreen.a("contact_info_facebook");
        if(preference2 != null)
            i.put("contact_info_facebook", preference2);
        preference3 = ipreferencescreen.a("contact_info_signature");
        if(preference3 != null)
            i.put("contact_info_signature", preference3);
        preference4 = ipreferencescreen.a("contact_info_verifyuser");
        if(preference4 != null)
            i.put("contact_info_verifyuser", preference4);
        preference5 = ipreferencescreen.a("contact_info_source");
        if(preference5 != null)
            i.put("contact_info_source", preference5);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_domainmail_cat");
        if(preferencecategory1 != null)
            i.put("contact_info_domainmail_cat", preferencecategory1);
        preferencecategory2 = (PreferenceCategory)ipreferencescreen.a("contact_info_friend_cat");
        if(preferencecategory2 != null)
            i.put("contact_info_friend_cat", preferencecategory2);
        domainmaillistpreference = (DomainMailListPreference)ipreferencescreen.a("contact_info_domainmail");
        if(domainmaillistpreference != null)
            i.put("contact_info_domainmail", domainmaillistpreference);
        friendpreference = (FriendPreference)ipreferencescreen.a("contact_info_friend");
        if(friendpreference != null)
            i.put("contact_info_friend", friendpreference);
        b.a();
        normaluserheaderpreference1 = (NormalUserHeaderPreference)i.get("contact_info_header_normal");
        if(normaluserheaderpreference1 != null)
        {
            normaluserheaderpreference1.a(c);
            b.a(normaluserheaderpreference1);
        }
        flag4 = false;
        if(c.L() != null && !c.L().equals("") && c.M() != null && !c.M().equals(""))
        {
            keyvaluepreference6 = (KeyValuePreference)i.get("contact_info_district");
            if(keyvaluepreference6 != null)
            {
                keyvaluepreference6.setTitle(a.getString(0x7f0a0262));
                keyvaluepreference6.setSummary((new StringBuilder()).append(ContactStorageLogic.L(c.L())).append("  ").append(c.M()).toString());
                keyvaluepreference6.a();
                b.a(keyvaluepreference6);
                flag4 = true;
            }
        }
        if(c.K() != null && !c.K().trim().equals(""))
        {
            keyvaluepreference5 = (KeyValuePreference)i.get("contact_info_signature");
            if(keyvaluepreference5 != null)
            {
                keyvaluepreference5.a(false);
                keyvaluepreference5.setTitle(a.getString(0x7f0a0264));
                keyvaluepreference5.setSummary(SpanUtil.a(a, c.K(), -2));
                keyvaluepreference5.a();
                b.a(keyvaluepreference5);
                flag4 = true;
            }
        }
        Log.d("MicroMsg.ContactWidgetNormal", (new StringBuilder()).append("contact Widght Normal weiboFlag").append(c.T()).append(" weibo ").append(c.S()).toString());
        if(ContactStorageLogic.g(c))
        {
            keyvaluepreference4 = (KeyValuePreference)i.get("contact_info_weibo");
            if(keyvaluepreference4 != null && c.S() != null && !c.S().equals(""))
            {
                stringbuilder = (new StringBuilder()).append(Util.a(c.U(), ""));
                context = a;
                aobj = new Object[1];
                aobj[0] = ContactStorageLogic.K(c.S());
                keyvaluepreference4.setSummary(stringbuilder.append(context.getString(0x7f0a018e, aobj)).toString());
                keyvaluepreference4.a();
                b.a(keyvaluepreference4);
                flag4 = true;
            }
        }
        if(c.R() != 18) goto _L4; else goto _L3
_L3:
        keyvaluepreference3 = (KeyValuePreference)i.get("contact_info_source");
        if(keyvaluepreference3 != null)
        {
            keyvaluepreference3.a(true);
            keyvaluepreference3.setTitle(a.getString(0x7f0a0268));
            keyvaluepreference3.a(a.getResources().getDrawable(0x7f0200f3));
            keyvaluepreference3.setSummary(a.getString(0x7f0a0269));
            keyvaluepreference3.a();
            b.a(keyvaluepreference3);
            flag4 = true;
        }
        flag5 = flag4;
_L7:
        if(c.v() > 0L)
        {
            friendpreference4 = (FriendPreference)i.get("contact_info_facebook");
            if(friendpreference4 != null && friendpreference4.a(c, null, 0L, null, c.v()))
                b.a(friendpreference4);
        }
        s = ((Activity)a).getIntent().getStringExtra("Contact_Mobile_MD5");
        l = ((Activity)a).getIntent().getLongExtra("Contact_Uin", 0L);
        s1 = ((Activity)a).getIntent().getStringExtra("Contact_QQNick");
        friendpreference1 = (FriendPreference)i.get("contact_info_friend");
        boolean flag6;
        if(friendpreference1 != null && friendpreference1.a(c, s, l, s1, 0L))
        {
            b.a(friendpreference1);
            preferencecategory7 = (PreferenceCategory)i.get("contact_info_friend_cat");
            if(preferencecategory7 != null)
                b.a(preferencecategory7);
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        if(!flag6)
        {
            Log.d("MicroMsg.ContactWidgetNormal", (new StringBuilder()).append("initDomainMail : domainmail = ").append(null).toString());
            LbsUserFooterInfoPreference lbsuserfooterinfopreference;
            PreferenceCategory preferencecategory;
            KeyValuePreference keyvaluepreference;
            boolean flag9;
            String s2;
            KeyValuePreference keyvaluepreference2;
            if(Util.h(null).length() <= 0)
            {
                flag9 = false;
            } else
            {
                DomainMailListPreference domainmaillistpreference1 = (DomainMailListPreference)i.get("contact_info_domainmail");
                if(domainmaillistpreference1 == null)
                {
                    flag9 = false;
                } else
                {
                    domainmaillistpreference1.a(a.getString(0x7f0a025d));
                    b.a(domainmaillistpreference1);
                    flag9 = true;
                }
            }
            if(flag9)
                flag5 = true;
            addrupload = MMCore.f().t().a(c.s());
            if(addrupload != null && addrupload.h() == 2)
                s2 = addrupload.b();
            else
                s2 = null;
            if(s2 != null && s2.length() > 0)
            {
                friendpreference3 = (FriendPreference)i.get("contact_info_friend");
                if(friendpreference3 != null && friendpreference3.a(c, s2, 0L, null, 0L))
                {
                    b.a(friendpreference3);
                    preferencecategory6 = (PreferenceCategory)i.get("contact_info_friend_cat");
                    if(preferencecategory6 != null)
                        b.a(preferencecategory6);
                }
            } else
            {
                QQList qqlist = MMCore.f().q().a(c.s());
                QQList qqlist1;
                if(qqlist != null && qqlist.d() == 2)
                    qqlist1 = qqlist;
                else
                    qqlist1 = null;
                if(qqlist1 != null)
                {
                    FriendPreference friendpreference2 = (FriendPreference)i.get("contact_info_friend");
                    if(friendpreference2 != null && friendpreference2.a(c, null, qqlist1.c(), qqlist1.i(), 0L))
                    {
                        b.a(friendpreference2);
                        PreferenceCategory preferencecategory5 = (PreferenceCategory)i.get("contact_info_friend_cat");
                        if(preferencecategory5 != null)
                            b.a(preferencecategory5);
                    }
                }
            }
        }
        if(!Util.i(c.O()))
        {
            keyvaluepreference1 = (KeyValuePreference)i.get("contact_info_verifyuser");
            if(keyvaluepreference1 != null)
            {
                keyvaluepreference1.a(false);
                keyvaluepreference1.a(a.getString(0x7f0a0265));
                bitmap = b.a.e.a(SceneGetVUserInfo.a(c.N()), 1.5F);
                keyvaluepreference1.b(new BitmapDrawable(a.getResources(), bitmap));
                keyvaluepreference1.setSummary(SpanUtil.a(a, c.O(), -2));
                keyvaluepreference1.a();
                b.a(keyvaluepreference1);
                flag5 = true;
            }
        }
        if(flag5)
        {
            preferencecategory4 = (PreferenceCategory)i.get("contact_info_domainmail_cat");
            if(preferencecategory4 != null)
                b.a(preferencecategory4);
        }
        normaluserfooterpreference1 = (NormalUserFooterPreference)i.get("contact_info_footer_normal");
        flag7 = ((Activity)a).getIntent().getBooleanExtra("User_From_Fmessage", false);
        flag8 = ((Activity)a).getIntent().getBooleanExtra("Contact_FMessageCard", false);
        ((Activity)a).getIntent().getBooleanExtra("Contact_KHideExpose", false);
        if(normaluserfooterpreference1 != null && normaluserfooterpreference1.a(c, d, f, g, e, h, flag8, flag7))
            b.a(normaluserfooterpreference1);
        preferencecategory3 = (PreferenceCategory)i.get("clear_lbs_info_cat");
        if(preferencecategory3 != null)
            b.a(preferencecategory3);
        lbsuserfooterinfopreference1 = (LbsUserFooterInfoPreference)i.get("clear_lbs_info");
        if(lbsuserfooterinfopreference1 != null)
        {
            lbsuserfooterinfopreference1.a();
            b.a(lbsuserfooterinfopreference1);
        }
        return true;
_L2:
        lbsuserfooterinfopreference = (LbsUserFooterInfoPreference)ipreferencescreen.a("clear_lbs_info");
        if(lbsuserfooterinfopreference != null)
            i.put("clear_lbs_info", lbsuserfooterinfopreference);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("clear_lbs_info_cat");
        if(preferencecategory != null)
            i.put("clear_lbs_info_cat", preferencecategory);
          goto _L1
_L4:
        if(c.R() != 30) goto _L6; else goto _L5
_L5:
        keyvaluepreference2 = (KeyValuePreference)i.get("contact_info_source");
        if(keyvaluepreference2 != null)
        {
            keyvaluepreference2.a(true);
            keyvaluepreference2.setTitle(a.getString(0x7f0a0268));
            keyvaluepreference2.a(a.getResources().getDrawable(0x7f020253));
            keyvaluepreference2.setSummary(a.getString(0x7f0a0350));
            keyvaluepreference2.a();
            b.a(keyvaluepreference2);
            flag4 = true;
        }
        flag5 = flag4;
          goto _L7
_L6:
        if(c.R() != 21 && c.R() != 22 && c.R() != 23 && c.R() != 24 && c.R() != 26 && c.R() != 27 && c.R() != 28 && c.R() != 29) goto _L9; else goto _L8
_L8:
        keyvaluepreference = (KeyValuePreference)i.get("contact_info_source");
        if(keyvaluepreference == null) goto _L9; else goto _L10
_L10:
        keyvaluepreference.a(true);
        keyvaluepreference.setTitle(a.getString(0x7f0a0268));
        keyvaluepreference.a(a.getResources().getDrawable(0x7f0200f4));
        keyvaluepreference.setSummary(a.getString(0x7f0a026a));
        keyvaluepreference.a();
        b.a(keyvaluepreference);
        flag5 = true;
          goto _L7
_L9:
        flag5 = flag4;
          goto _L7
    }

    public final boolean a(String s)
    {
        if(!s.equals("contact_info_weibo")) goto _L2; else goto _L1
_L1:
        String s3 = c.S();
        if(!s3.startsWith("http://t.qq.com/"))
            s3 = (new StringBuilder()).append("http://t.qq.com/").append(s3).toString();
        Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(s3));
        intent1.putExtra("title", a.getString(0x7f0a0263));
        intent1.putExtra("zoom", true);
        intent1.putExtra("vertical_scroll", false);
        intent1.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
        a.startActivity(intent1);
_L4:
        return true;
_L2:
        if(s.equals("contact_info_friend"))
        {
            FriendPreference friendpreference = (FriendPreference)i.get("contact_info_friend");
            if(friendpreference != null && friendpreference.a() == 1)
            {
                String s1 = friendpreference.b();
                if(s1 != null && s1.length() != 0)
                {
                    int j = 1 + s1.indexOf(' ');
                    if(j > 0)
                    {
                        String s2 = s1.substring(j);
                        Intent intent = new Intent("android.intent.action.DIAL");
                        intent.setFlags(0x10000000);
                        intent.setData(Uri.parse((new StringBuilder()).append("tel://").append(s2).toString()));
                        a.startActivity(intent);
                    }
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
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

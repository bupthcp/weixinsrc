// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage, ConfigStorageLogic

public final class ContactStorageLogic
{

    private ContactStorageLogic()
    {
    }

    public static boolean A(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("blogapp");
        else
            flag = false;
        return flag;
    }

    public static boolean B(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("gmailapp");
        else
            flag = false;
        return flag;
    }

    public static boolean C(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("qqfriend");
        else
            flag = false;
        return flag;
    }

    public static boolean D(String s1)
    {
        String s2 = (String)MMCore.f().f().a(21);
        boolean flag;
        boolean flag1;
        if(s2 != null && s2.equalsIgnoreCase(s1) || s1.equalsIgnoreCase("weixin"))
            flag = true;
        else
            flag = false;
        if(flag)
            flag1 = true;
        else
        if(E(s1))
            flag1 = true;
        else
            flag1 = false;
        return flag1;
    }

    public static boolean E(String s1)
    {
        boolean flag = false;
        String as[] = d;
        int i1 = as.length;
        int j1 = ((flag) ? 1 : 0);
        do
        {
label0:
            {
                if(j1 < i1)
                {
                    if(!as[j1].equalsIgnoreCase(s1))
                        break label0;
                    flag = true;
                }
                return flag;
            }
            j1++;
        } while(true);
    }

    public static boolean F(String s1)
    {
        boolean flag;
        flag = true;
        break MISSING_BLOCK_LABEL_2;
        if(!E(s1) && !r(s1) && !p(s1) && !t(s1))
            flag = false;
        return flag;
    }

    public static int G(String s1)
    {
        int i1 = 1;
        boolean flag;
        String s2;
        if(Util.h(s1).length() > 0)
            flag = i1;
        else
            flag = false;
        Assert.assertTrue(flag);
        s2 = s1.trim().toLowerCase();
        if(!s2.endsWith("@chatroom"))
            if(p(s2))
                i1 = 11;
            else
            if(r(s2))
                i1 = 36;
            else
            if(!t(s2));
        return i1;
    }

    public static int H(String s1)
    {
        boolean flag;
        String s2;
        byte byte0;
        if(Util.h(s1).length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        s2 = s1.trim().toLowerCase();
        if(s2.endsWith("@chatroom"))
            byte0 = 23;
        else
        if(p(s2))
            byte0 = 13;
        else
        if(r(s2))
            byte0 = 39;
        else
        if(t(s2))
            byte0 = 3;
        else
        if(s2.contains("@"))
            byte0 = 33;
        else
            byte0 = 3;
        return byte0;
    }

    public static boolean I(String s1)
    {
        boolean flag = true;
        if(MMCore.f().h().c(s1).H() != flag)
            flag = false;
        return flag;
    }

    public static boolean J(String s1)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(s1 != null && s1.length() > 0 && (s1.startsWith("t.qq.com/") || s1.startsWith("http://t.qq.com/")))
            flag = true;
        return flag;
    }

    public static String K(String s1)
    {
        String s2;
        if(J(s1))
            s2 = s1.replace("http://t.qq.com/", "").replace("t.qq.com/", "");
        else
            s2 = "";
        return s2;
    }

    public static String L(String s1)
    {
        if(e.contains(s1))
            s1 = "";
        return s1;
    }

    public static String M(String s1)
    {
        return MMCore.f().t().a(s1).d();
    }

    public static List a()
    {
        LinkedList linkedlist = new LinkedList();
        Cursor cursor = MMCore.f().h().b();
        if(cursor.moveToFirst())
            do
                linkedlist.add(cursor.getString(4));
            while(cursor.moveToNext());
        cursor.close();
        return linkedlist;
    }

    public static void a(Contact contact, String s1)
    {
        boolean flag;
        if(contact != null && s1 != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        contact.a(32768L);
        contact.k(s1);
        i(contact);
    }

    public static void a(Set set)
    {
        e = set;
    }

    public static boolean a(Contact contact)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(contact != null && contact.s().endsWith("@chatroom") && contact.l())
            flag = true;
        return flag;
    }

    public static boolean a(String s1)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(s1 != null && s1.length() > 0 && (!s1.contains("@") || s1.endsWith("@micromsg.qq.com")))
            flag = true;
        return flag;
    }

    public static boolean a(List list)
    {
        boolean flag = false;
        if(list != null && list.size() > 0) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int i1 = ((flag) ? 1 : 0);
        do
        {
            if(i1 < list.size())
            {
label0:
                {
                    if(!p((String)list.get(i1)))
                        break label0;
                    flag = true;
                }
            }
            if(true)
                continue;
            i1++;
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int[] a(String s1, String s2, List list, String s3)
    {
        int ai[];
        int i1;
        int ai1[];
        ai = null;
        i1 = 0;
        ai1 = MMCore.f().h().a(s1, s2, s3, list);
        if(ai1 != null && ai1.length > 0) goto _L2; else goto _L1
_L1:
        return ai;
_L2:
        int ai2[] = MMCore.f().h().b(s1, s2, s3, list);
        if(ai2 != null)
        {
            int j1;
            int ai3[];
            int k1;
            if(ai1.length == ai2.length)
                j1 = 1;
            else
                j1 = i1;
            Assert.assertTrue(j1);
            ai3 = new int[ai2.length];
            k1 = i1;
            int i2;
            for(int l1 = i1; i1 < ai1.length; l1 = i2)
            {
                i2 = l1 + 1;
                ai3[l1] = k1;
                k1 += ai2[i1];
                i1++;
            }

            ai = ai3;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String[] a(String s1, String s2, String s3, List list)
    {
        int i1 = 0;
        int ai[] = MMCore.f().h().a(s1, s2, s3, list);
        String as[];
        if(ai == null || ai.length <= 0)
        {
            as = null;
        } else
        {
            String as1[] = new String[ai.length];
            int j1 = i1;
            while(i1 < ai.length) 
            {
                char c1 = (char)ai[i1];
                if(c1 == '{')
                {
                    int l1 = j1 + 1;
                    as1[j1] = "#";
                    j1 = l1;
                } else
                {
                    int k1 = j1 + 1;
                    as1[j1] = (new StringBuilder()).append("").append(c1).toString();
                    j1 = k1;
                }
                i1++;
            }
            as = as1;
        }
        return as;
    }

    public static void b(Contact contact)
    {
        boolean flag;
        if(contact != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        contact.a(4L);
        contact.j();
        i(contact);
    }

    public static boolean b()
    {
        return MMCore.f().h().e("@t.qq.com");
    }

    public static boolean b(String s1)
    {
        boolean flag;
        if(s1 == null || s1.length() <= 0)
            flag = false;
        else
            flag = s1.endsWith("@chatroom");
        return flag;
    }

    public static void c(Contact contact)
    {
        boolean flag;
        if(contact != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        contact.a(4L);
        contact.h();
        i(contact);
    }

    public static boolean c()
    {
        return MMCore.f().h().e("@qqim");
    }

    public static boolean c(String s1)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        while(true) 
        {
            do
                return flag;
            while(s1 == null || s1.length() <= 0 || !s1.endsWith("@chatroom"));
            Contact contact = MMCore.f().h().c(s1);
            if(contact != null && contact.l())
                flag = true;
        }
    }

    public static void d(Contact contact)
    {
        boolean flag;
        if(contact != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        contact.a(4L);
        contact.i();
        i(contact);
    }

    public static boolean d()
    {
        boolean flag = false;
        if(ConfigStorageLogic.q()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        if(roleinfo != null && !Util.i(roleinfo.a()))
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean d(String s1)
    {
        boolean flag;
        if(s1 == null || s1.length() <= 0)
            flag = false;
        else
            flag = s1.endsWith("@groupcard");
        return flag;
    }

    public static String e(String s1)
    {
        if(s1 != null && s1.length() > 0) goto _L2; else goto _L1
_L1:
        s1 = "";
_L4:
        return s1;
_L2:
        Contact contact = MMCore.f().h().c(s1);
        if(s1.toLowerCase().endsWith("@chatroom") && contact.t().equals(""))
            s1 = MMCore.f().n().a(s1);
        else
        if(contact.A() != null && contact.A().length() > 0)
            s1 = contact.A();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static void e(Contact contact)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if(contact != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(contact.o() != 0)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(contact.s().length() <= 0)
            flag = false;
        Assert.assertTrue(flag);
        contact.a(4L);
        contact.f();
        MMCore.f().h().a(contact.s(), contact);
    }

    public static boolean e()
    {
        boolean flag = false;
        if(ConfigStorageLogic.q()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        if(roleinfo != null && Util.h(roleinfo.a()).length() != 0)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void f(Contact contact)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if(contact != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(contact.o() != 0)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(contact.s().length() <= 0)
            flag = false;
        Assert.assertTrue(flag);
        contact.a(4L | contact.c());
        contact.f();
        MMCore.f().h().a(contact.s(), contact);
        i(contact);
    }

    public static boolean f(String s1)
    {
        boolean flag;
        if(s1 == null || s1.length() <= 0)
            flag = true;
        else
            flag = MMCore.f().h().c(s1).l();
        return flag;
    }

    public static boolean g(Contact contact)
    {
        boolean flag;
        if((1 & contact.T()) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean g(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("qqmail");
        else
            flag = false;
        return flag;
    }

    public static boolean h(Contact contact)
    {
        boolean flag;
        if((1 & contact.T()) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean h(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("fmessage");
        else
            flag = false;
        return flag;
    }

    private static void i(Contact contact)
    {
        boolean flag;
        if(contact != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(contact.o() == 0)
        {
            contact.a(-2L);
            contact.b(MMCore.f().h().c(contact));
        }
        MMCore.f().h().a(contact.s(), contact);
        Log.d("MicroMsg.ContactStorageLogic", (new StringBuilder()).append("userName :").append(contact.s()).append(" flag: ").append(contact.c()).append(" type : ").append(contact.q()).append(" isContact: ").append(contact.l()).toString());
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpAddContact(contact.s(), contact.t(), contact.w(), contact.x(), contact.p(), 63, contact.q(), contact.D(), contact.E(), contact.F(), contact.C(), contact.G(), contact.H(), contact.J(), contact.K(), contact.M(), contact.L(), contact.S(), contact.T()));
    }

    public static boolean i(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("tmessage");
        else
            flag = false;
        return flag;
    }

    public static boolean j(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("floatbottle");
        else
            flag = false;
        return flag;
    }

    public static boolean k(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("qmessage");
        else
            flag = false;
        return flag;
    }

    public static boolean l(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("floatbottle");
        else
            flag = false;
        return flag;
    }

    public static boolean m(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("facebookapp");
        else
            flag = false;
        return flag;
    }

    public static boolean n(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("masssendapp");
        else
            flag = false;
        return flag;
    }

    public static boolean o(String s1)
    {
        return "qqsync".equalsIgnoreCase(s1);
    }

    public static boolean p(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.endsWith("@t.qq.com");
        else
            flag = false;
        return flag;
    }

    public static boolean q(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.endsWith("@qr");
        else
            flag = false;
        return flag;
    }

    public static boolean r(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.endsWith("@qqim");
        else
            flag = false;
        return flag;
    }

    public static boolean s(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.endsWith("@fb");
        else
            flag = false;
        return flag;
    }

    public static boolean t(String s1)
    {
        boolean flag = false;
        if(s1 != null && (s1.contains("@bottle:") || s1.endsWith("@bottle")))
            flag = true;
        return flag;
    }

    public static String u(String s1)
    {
        if(t(s1))
        {
            String as[] = s1.split(":");
            if(as != null && as.length > 0)
                s1 = as[0];
        } else
        if(s1.contains("@"))
            s1 = "";
        else
            s1 = (new StringBuilder()).append(s1).append("@bottle").toString();
        return s1;
    }

    public static boolean v(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("weixin");
        else
            flag = false;
        return flag;
    }

    public static boolean w(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("lbsapp");
        else
            flag = false;
        return flag;
    }

    public static boolean x(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("shakeapp");
        else
            flag = false;
        return flag;
    }

    public static boolean y(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("medianote");
        else
            flag = false;
        return flag;
    }

    public static boolean z(String s1)
    {
        boolean flag;
        if(s1 != null)
            flag = s1.equalsIgnoreCase("readerapp");
        else
            flag = false;
        return flag;
    }

    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d[];
    private static Set e = new HashSet();

    static 
    {
        String as[] = new String[2];
        as[0] = "@chatroom";
        as[1] = "@micromsg.qq.com";
        a = ContactStorage.a("conversation.username", as);
        String as1[] = new String[1];
        as1[0] = "@t.qq.com";
        b = ContactStorage.a("conversation.username", as1);
        String as2[] = new String[1];
        as2[0] = "@qqim";
        c = ContactStorage.a("conversation.username", as2);
        String as3[] = new String[15];
        as3[0] = "qqmail";
        as3[1] = "fmessage";
        as3[2] = "tmessage";
        as3[3] = "qmessage";
        as3[4] = "qqsync";
        as3[5] = "floatbottle";
        as3[6] = "lbsapp";
        as3[7] = "shakeapp";
        as3[8] = "medianote";
        as3[9] = "gmailapp";
        as3[10] = "qqfriend";
        as3[11] = "readerapp";
        as3[12] = "blogapp";
        as3[13] = "facebookapp";
        as3[14] = "masssendapp";
        d = as3;
    }
}

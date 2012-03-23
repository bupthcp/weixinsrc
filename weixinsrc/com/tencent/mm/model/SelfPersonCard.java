// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public class SelfPersonCard
{

    public SelfPersonCard()
    {
        a = 0;
        b = 0;
        c = "";
        d = "";
        e = "";
        f = "";
    }

    public static SelfPersonCard a()
    {
        SelfPersonCard selfpersoncard = new SelfPersonCard();
        selfpersoncard.a = 1;
        selfpersoncard.b = Util.a((Integer)MMCore.f().f().a(12290), 0);
        selfpersoncard.c = (String)MMCore.f().f().a(12293);
        selfpersoncard.d = (String)MMCore.f().f().a(12292);
        selfpersoncard.e = (String)MMCore.f().f().a(12291);
        selfpersoncard.f = (String)MMCore.f().f().a(12307);
        return selfpersoncard;
    }

    public static com.tencent.mm.storage.OpLogStorage.OpModUserInfo a(SelfPersonCard selfpersoncard)
    {
        MMCore.f().f().a(12289, Integer.valueOf(selfpersoncard.a));
        MMCore.f().f().a(12290, Integer.valueOf(selfpersoncard.b));
        if(WSConcat.a((String)MMCore.f().f().a(12293), selfpersoncard.c))
            MMCore.f().f().a(12293, selfpersoncard.c);
        if(WSConcat.a((String)MMCore.f().f().a(12292), selfpersoncard.d))
            MMCore.f().f().a(12292, selfpersoncard.d);
        if(WSConcat.a((String)MMCore.f().f().a(12291), selfpersoncard.e))
            MMCore.f().f().a(12291, selfpersoncard.e);
        if(WSConcat.a((String)MMCore.f().f().a(12307), selfpersoncard.f))
            MMCore.f().f().a(12307, selfpersoncard.f);
        return new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(128, "", "", 0, "", "", "", 0, selfpersoncard.b, selfpersoncard.a, selfpersoncard.e, selfpersoncard.d, selfpersoncard.c, 0, selfpersoncard.f, 0, "", 0);
    }

    public static SelfPersonCard b()
    {
        SelfPersonCard selfpersoncard;
        if(Util.a((Integer)MMCore.f().f().a(12289), 0) == 0)
            selfpersoncard = null;
        else
            selfpersoncard = a();
        return selfpersoncard;
    }

    public final void a(int i)
    {
        b = i;
    }

    public final void a(String s)
    {
        e = s;
    }

    public final void b(String s)
    {
        d = s;
    }

    public final void c()
    {
        a = 1;
    }

    public final void c(String s)
    {
        c = s;
    }

    public final int d()
    {
        return b;
    }

    public final void d(String s)
    {
        f = s;
    }

    public final String e()
    {
        return d;
    }

    public final String f()
    {
        return c;
    }

    public final String g()
    {
        return f;
    }

    private int a;
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;

    private class WSConcat
    {

        private static String a(String s)
        {
            char ac[] = s.toCharArray();
            String s1;
            int i;
            int j;
            i = ac.length;
            s1 = "";
            j = 0;
_L1:
            String s2;
            if(j >= i)
                break MISSING_BLOCK_LABEL_86;
            char c1 = ac[j];
            StringBuilder stringbuilder = (new StringBuilder()).append(s1);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(c1);
            s2 = stringbuilder.append(String.format("%02x", aobj)).toString();
            j++;
            s1 = s2;
              goto _L1
            Exception exception;
            exception;
            s1 = "";
            return s1;
        }

        public static boolean a(String s, String s1)
        {
            boolean flag = true;
            if(!Util.i(s)) goto _L2; else goto _L1
_L1:
            return flag;
_L2:
            String s2 = b(a(s));
            if(!Util.i(s2) && s2.equals(s1))
                flag = false;
            if(true) goto _L1; else goto _L3
_L3:
        }

        private static String b(String s)
        {
            if(!Util.i(s) && s.length() % 2 == 0) goto _L2; else goto _L1
_L1:
            String s1 = "";
_L6:
            return s1;
_L2:
            int i;
            s1 = "";
            i = 0;
_L4:
            String s2;
            if(i >= s.length())
                continue; /* Loop/switch isn't completed */
            s2 = (new StringBuilder()).append(s1).append((char)Integer.parseInt(s.substring(i, i + 2), 16)).toString();
            i += 2;
            s1 = s2;
            if(true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            s1 = "";
            if(true) goto _L6; else goto _L5
_L5:
        }

        private WSConcat()
        {
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public final class ConfigStorageLogic
{

    private ConfigStorageLogic()
    {
    }

    public static int a()
    {
        Integer integer = (Integer)MMCore.f().f().a(9);
        int i1;
        if(integer == null)
            i1 = 0;
        else
            i1 = integer.intValue();
        return i1;
    }

    public static boolean a(String s)
    {
        boolean flag = false;
        if(s != null && s.length() > 0)
        {
            String s1 = b();
            if(s1 == null || s1.length() <= 0)
                Log.a("MicroMsg.ConfigStorageLogic", "get userinfo fail");
            else
                flag = s1.equals(s);
        }
        return flag;
    }

    public static String b()
    {
        return (String)MMCore.f().f().a(2);
    }

    public static String c()
    {
        return (String)MMCore.f().f().a(42);
    }

    public static int d()
    {
        Integer integer = (Integer)MMCore.f().f().a(7);
        int i1;
        if(integer == null)
            i1 = 0;
        else
            i1 = integer.intValue();
        return i1;
    }

    public static int e()
    {
        Integer integer = (Integer)MMCore.f().f().a(40);
        int i1;
        if(integer == null)
            i1 = 0;
        else
            i1 = integer.intValue();
        return i1;
    }

    public static int f()
    {
        Integer integer = (Integer)MMCore.f().f().a(34);
        int i1;
        if(integer == null)
            i1 = 0;
        else
            i1 = integer.intValue();
        return i1;
    }

    public static boolean g()
    {
        boolean flag;
        if((0x40 & d()) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean h()
    {
        boolean flag;
        if((0x1000 & d()) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean i()
    {
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        boolean flag;
        if(roleinfo != null && roleinfo.b())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean j()
    {
        boolean flag;
        if((0x80 & f()) == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean k()
    {
        return Util.b((Boolean)MMCore.f().f().a(8200));
    }

    public static boolean l()
    {
        boolean flag;
        if((0x2000 & f()) == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean m()
    {
        String s = (String)MMCore.f().f().a(0x10121);
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        if(s.equals("0"))
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        long l1 = Util.a(Long.valueOf(Long.parseLong(s)));
        Exception exception;
        if(l1 == 0L)
            flag = false;
        else
            flag = true;
        continue; /* Loop/switch isn't completed */
        exception;
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean n()
    {
        boolean flag;
        if(Util.a((Integer)MMCore.f().f().a(17)) == 1)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static int o()
    {
        return Util.a((Integer)MMCore.f().f().a(8201), 22);
    }

    public static int p()
    {
        return Util.a((Integer)MMCore.f().f().a(8208), 8);
    }

    public static boolean q()
    {
        boolean flag;
        if((new UIN(Util.a((Integer)MMCore.f().f().a(9)))).longValue() != 0L)
            flag = true;
        else
            flag = false;
        return flag;
    }
}

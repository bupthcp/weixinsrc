// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.storage.RoleStorage;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage, ConfigStorageLogic

public final class DomainEmailLogic
{

    private DomainEmailLogic()
    {
    }

    public static boolean a(String s)
    {
        boolean flag;
        if(s == null || s.length() <= 0)
        {
            Log.a((new StringBuilder()).append("MicroMsg.DomainEmailLogic").append(CodeInfo.a()).toString(), "mailAddr is null");
            flag = false;
        } else
        {
            MMCore.f().m().e(s);
            flag = true;
        }
        return flag;
    }

    public static void b(String s)
    {
        if(a(s))
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelUserDomainEmail(ConfigStorageLogic.b(), s));
    }
}

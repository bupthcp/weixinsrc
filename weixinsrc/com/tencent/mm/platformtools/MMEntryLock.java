// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public final class MMEntryLock
{

    private MMEntryLock()
    {
    }

    public static boolean a(String s)
    {
        boolean flag;
        if(c(s))
        {
            Log.d("MicroMsg.MMEntryLock", (new StringBuilder()).append("locked-").append(s).toString());
            flag = false;
        } else
        {
            Log.d("MicroMsg.MMEntryLock", (new StringBuilder()).append("lock-").append(s).toString());
            flag = a.add(s);
        }
        return flag;
    }

    public static void b(String s)
    {
        a.remove(s);
        Log.d("MicroMsg.MMEntryLock", (new StringBuilder()).append("unlock-").append(s).toString());
    }

    public static boolean c(String s)
    {
        return a.contains(s);
    }

    private static Set a = new HashSet();

}

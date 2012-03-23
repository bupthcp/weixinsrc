// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import java.util.*;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public final class PostTaskFMessageCardStat
{

    private PostTaskFMessageCardStat()
    {
    }

    public static void a()
    {
        boolean flag;
        if(1000L * Util.d(Util.a((Long)MMCore.f().f().a(0x10503), 0L)) > 0x1b7740L)
            flag = true;
        else
            flag = false;
        if(flag)
            b();
    }

    public static void a(int i)
    {
        int j = 1 + Util.a((Integer)a.get(Integer.valueOf(i)));
        a.put(Integer.valueOf(i), Integer.valueOf(j));
    }

    public static void b()
    {
        Iterator iterator = a.entrySet().iterator();
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            if(!iterator.hasNext())
                break;
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(entry != null && entry.getKey() != null && entry.getValue() != null && ((Integer)entry.getValue()).intValue() != 0)
            {
                stringbuilder.append(entry.getKey());
                stringbuilder.append("=");
                stringbuilder.append(entry.getValue());
                stringbuilder.append(",");
            }
        } while(true);
        a.clear();
        if(stringbuilder.length() > 0)
        {
            Log.d("MicroMsg.PostTaskFMessageCardStat", "append fmesage card click");
            LinkedList linkedlist = new LinkedList();
            linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(10, stringbuilder.toString()));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(linkedlist));
        }
        MMCore.f().f().a(0x10503, Long.valueOf(Util.c()));
    }

    private static final Map a = new HashMap();

}

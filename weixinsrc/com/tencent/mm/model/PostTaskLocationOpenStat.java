// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public final class PostTaskLocationOpenStat
{

    private PostTaskLocationOpenStat()
    {
    }

    public static void a()
    {
        boolean flag = true;
        ConfigStorage configstorage = MMCore.f().f();
        LinkedList linkedlist = new LinkedList();
        int i = Util.a((Integer)configstorage.a(0x10801), 0);
        boolean flag1;
        int j;
        if(i > 0)
        {
            configstorage.a(0x10801, Integer.valueOf(0));
            linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(15, (new StringBuilder()).append("").append(i).toString()));
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        j = Util.a((Integer)configstorage.a(0x10802), 0);
        if(j > 0)
        {
            configstorage.a(0x10802, Integer.valueOf(0));
            linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(16, (new StringBuilder()).append("").append(j).toString()));
        } else
        {
            flag = flag1;
        }
        if(flag)
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(linkedlist));
        MMCore.f().f().a(0x10803, Long.valueOf(Util.c()));
    }
}

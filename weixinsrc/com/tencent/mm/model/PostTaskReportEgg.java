// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public final class PostTaskReportEgg
{

    private PostTaskReportEgg()
    {
    }

    public static void a()
    {
        boolean flag;
        if(MMCore.f().b() && !MMCore.w())
            flag = true;
        else
            flag = false;
        if(flag)
        {
            boolean flag1;
            if(1000L * Util.d(Util.a((Long)MMCore.f().f().a(0x10a01), 0L)) > 0x36ee80L)
                flag1 = true;
            else
                flag1 = false;
            if(flag1)
            {
                LinkedList linkedlist = new LinkedList();
                for(int i = 0; i < a.length; i++)
                {
                    int l = Util.a((Integer)MMCore.f().f().a(b[i]), 0);
                    if(l > 0)
                    {
                        Log.d("MicroMsg.PostTaskReportEgg", (new StringBuilder()).append("egg send:  tyep:").append(a[i]).append("  count:").append(l).toString());
                        linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(17, (new StringBuilder()).append(a[i]).append(",").append(l).toString()));
                    }
                }

                for(int j = 0; j < a.length; j++)
                {
                    int k = Util.a((Integer)MMCore.f().f().a(c[j]), 0);
                    if(k > 0)
                    {
                        Log.d("MicroMsg.PostTaskReportEgg", (new StringBuilder()).append("egg recv:  tyep:").append(a[j]).append("  count:").append(k).toString());
                        linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(18, (new StringBuilder()).append(a[j]).append(",").append(k).toString()));
                    }
                }

                if(!linkedlist.isEmpty())
                {
                    MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(linkedlist));
                    MMCore.f().f().a(0x10a01, Long.valueOf(Util.c()));
                }
            }
        }
    }

    private static int a[];
    private static int b[];
    private static int c[];

    static 
    {
        int ai[] = new int[4];
        ai[0] = 1;
        ai[1] = 2;
        ai[2] = 3;
        ai[3] = 4;
        a = ai;
        int ai1[] = new int[4];
        ai1[0] = 0x10a02;
        ai1[1] = 0x10a04;
        ai1[2] = 0x10a06;
        ai1[3] = 0x10a08;
        b = ai1;
        int ai2[] = new int[4];
        ai2[0] = 0x10a03;
        ai2[1] = 0x10a05;
        ai2[2] = 0x10a07;
        ai2[3] = 0x10a09;
        c = ai2;
    }
}

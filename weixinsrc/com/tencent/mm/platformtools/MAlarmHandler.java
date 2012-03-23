// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.platformtools:
//            Util, Log

public class MAlarmHandler
{

    public MAlarmHandler(CallBack callback, boolean flag)
    {
        d = 0L;
        e = 0L;
        Assert.assertTrue("bumper not initialized", i);
        g = callback;
        c = flag;
        if(a >= 8192)
            a = 0;
        int j = 1 + a;
        a = j;
        b = j;
    }

    public static long a()
    {
        LinkedList linkedlist;
        Iterator iterator;
        long l;
        linkedlist = new LinkedList();
        iterator = f.entrySet().iterator();
        l = 0x7fffffffffffffffL;
_L2:
        long l1;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        MAlarmHandler malarmhandler = (MAlarmHandler)entry.getValue();
        if(malarmhandler == null)
            break MISSING_BLOCK_LABEL_250;
        long l2 = Util.f(malarmhandler.d);
        if(l2 < 0L)
            l2 = 0L;
        if(l2 > malarmhandler.e)
        {
            if(!malarmhandler.g.a() || !malarmhandler.c)
                linkedlist.add(entry.getKey());
            else
                l = malarmhandler.e;
            malarmhandler.d = Util.e();
            continue; /* Loop/switch isn't completed */
        }
        if(malarmhandler.e - l2 >= l)
            break MISSING_BLOCK_LABEL_250;
        l1 = malarmhandler.e - l2;
_L3:
        l = l1;
        if(true) goto _L2; else goto _L1
_L1:
        for(int j = 0; j < linkedlist.size(); j++)
            f.remove(linkedlist.get(j));

        if(l == 0x7fffffffffffffffL && h != null)
        {
            h.b();
            Log.e("MicroMsg.MAlarmHandler", "cancel bumper for no more handler");
        }
        return l;
        l1 = l;
          goto _L3
    }

    public static void a(IBumper ibumper)
    {
        i = true;
        h = ibumper;
    }

    public final void a(long l)
    {
        e = l;
        d = Util.e();
        b();
        f.put(Integer.valueOf(b), this);
        if(h != null)
        {
            Log.e("MicroMsg.MAlarmHandler", "prepare bumper");
            h.a();
        }
    }

    public final void b()
    {
        f.remove(Integer.valueOf(b));
    }

    public final boolean c()
    {
        boolean flag;
        if(!f.containsKey(Integer.valueOf(b)))
            flag = true;
        else
            flag = false;
        return flag;
    }

    protected void finalize()
    {
        b();
        super.finalize();
    }

    private static int a;
    private static Map f = new HashMap();
    private static IBumper h;
    private static boolean i = false;
    private final int b;
    private final boolean c;
    private long d;
    private long e;
    private final CallBack g;


    private class CallBack
    {

        public abstract boolean a();
    }


    private class IBumper
    {

        public abstract void a();

        public abstract void b();
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.*;

public final class MMBuiltInIP
{

    public MMBuiltInIP()
    {
        a = 0;
        b = 80;
        c = "";
    }

    public static NetworkControl a(String s, String s1)
    {
        Log.d("MicroMsg.MMBuiltInIP", "parsing network control params:");
        Log.d("MicroMsg.MMBuiltInIP", (new StringBuilder()).append("ports = ").append(s).toString());
        Log.d("MicroMsg.MMBuiltInIP", (new StringBuilder()).append("timeouts = ").append(s1).toString());
        int ai[] = Util.p(s);
        int ai1[] = Util.p(s1);
        if(ai1 == null || ai1.length < 2)
        {
            ai1 = new int[2];
            ai1[0] = 0;
            ai1[1] = 0;
            Log.a("MicroMsg.MMBuiltInIP", "invalid timeouts");
        }
        return new NetworkControl(null, ai, (int)(1000L * (long)ai1[0]), (int)(1000L * (long)ai1[1]));
    }

    public static void a(List list)
    {
        Log.e("MicroMsg.MMBuiltInIP", "--> MMBuiltInIP dump begin");
        Iterator iterator = list.iterator();
        int j;
        for(int i = 1; iterator.hasNext(); i = j)
        {
            MMBuiltInIP mmbuiltinip = (MMBuiltInIP)iterator.next();
            StringBuilder stringbuilder = (new StringBuilder()).append("");
            j = i + 1;
            StringBuilder stringbuilder1 = stringbuilder.append(i).append(". ip=").append(mmbuiltinip.c()).append(":").append(mmbuiltinip.b()).append(", type=");
            String s = "";
            if((1 & mmbuiltinip.a) != 0)
                s = (new StringBuilder()).append(s).append("wifi ").toString();
            if((2 & mmbuiltinip.a) != 0)
                s = (new StringBuilder()).append(s).append("edge ").toString();
            if((4 & mmbuiltinip.a) != 0)
                s = (new StringBuilder()).append(s).append("cmcc ").toString();
            if((8 & mmbuiltinip.a) != 0)
                s = (new StringBuilder()).append(s).append("unicom ").toString();
            if((0x10 & mmbuiltinip.a) != 0)
                s = (new StringBuilder()).append(s).append("chinatel ").toString();
            Log.e("MicroMsg.MMBuiltInIP", stringbuilder1.append(s).toString());
        }

        Log.e("MicroMsg.MMBuiltInIP", "<-- MMBuiltInIP dump end");
    }

    public static MMBuiltInIP b(String s)
    {
        MMBuiltInIP mmbuiltinip;
        String as[];
        mmbuiltinip = null;
        as = s.split(",");
        if(as.length >= 3) goto _L2; else goto _L1
_L1:
        return mmbuiltinip;
_L2:
        MMBuiltInIP mmbuiltinip1 = new MMBuiltInIP();
        mmbuiltinip1.a = Integer.parseInt(as[0]);
        mmbuiltinip1.c = Util.h(as[1]);
        mmbuiltinip1.b = Integer.parseInt(as[2]);
        mmbuiltinip = mmbuiltinip1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String b(List list)
    {
        Iterator iterator = list.iterator();
        String s;
        MMBuiltInIP mmbuiltinip;
        for(s = ""; iterator.hasNext(); s = (new StringBuilder()).append(s).append(mmbuiltinip.toString()).append("|").toString())
            mmbuiltinip = (MMBuiltInIP)iterator.next();

        return s;
    }

    public static List c(String s)
    {
        LinkedList linkedlist = new LinkedList();
        if(s != null)
        {
            String as[] = s.split("\\|");
            int i = as.length;
            for(int j = 0; j < i; j++)
            {
                MMBuiltInIP mmbuiltinip = b(as[j]);
                if(mmbuiltinip != null)
                    linkedlist.add(mmbuiltinip);
            }

        }
        return linkedlist;
    }

    public final int a()
    {
        return a;
    }

    public final void a(int i)
    {
        a = i;
    }

    public final void a(String s)
    {
        c = s;
    }

    public final int b()
    {
        return b;
    }

    public final void b(int i)
    {
        b = i;
    }

    public final String c()
    {
        return c;
    }

    public final String toString()
    {
        return (new StringBuilder()).append(a).append(",").append(c).append(",").append(b).toString();
    }

    private int a;
    private int b;
    private String c;

    private class NetworkControl
    {

        public int[] a()
        {
            return a;
        }

        public int[] b()
        {
            return b;
        }

        public int c()
        {
            return c;
        }

        public int d()
        {
            return d;
        }

        private final int a[];
        private final int b[];
        private final int c;
        private final int d;

        public NetworkControl(int ai[], int ai1[], int i, int j)
        {
            a = ai;
            b = ai1;
            c = i;
            d = j;
        }
    }

}

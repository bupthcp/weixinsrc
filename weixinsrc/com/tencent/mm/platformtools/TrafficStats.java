// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.os.Process;
import java.io.File;
import java.util.Scanner;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public final class TrafficStats
{

    private TrafficStats()
    {
    }

    public static long a()
    {
        long l = 0L;
        if(g > l)
            l = g;
        return l;
    }

    public static long b()
    {
        long l = 0L;
        if(h > l)
            l = h;
        return l;
    }

    public static long c()
    {
        long l = 0L;
        if(e > l)
            l = e;
        return l;
    }

    public static long d()
    {
        long l = 0L;
        if(f > l)
            l = f;
        return l;
    }

    public static void e()
    {
        a = -1L;
        b = -1L;
        c = -1L;
        d = -1L;
        f();
    }

    public static void f()
    {
        Scanner scanner;
        long l;
        long l1;
        long l2;
        long l3;
        scanner = new Scanner(new File((new StringBuilder()).append("/proc/").append(Process.myPid()).append("/net/dev").toString()));
        scanner.nextLine();
        scanner.nextLine();
        l = 0L;
        l1 = 0L;
        l2 = 0L;
        l3 = 0L;
_L2:
        String as[];
        int i;
        if(!scanner.hasNext())
            break; /* Loop/switch isn't completed */
        as = scanner.nextLine().split("[ :\t]+");
        if(as[0].length() != 0)
            break MISSING_BLOCK_LABEL_668;
        i = 1;
_L16:
        if(!as[0].equals("lo") && as[i + 0].startsWith("rmnet"))
        {
            l3 += Long.parseLong(as[i + 9]);
            l2 += Long.parseLong(as[i + 1]);
        }
        if(!as[i + 0].equals("lo") && !as[i + 0].startsWith("rmnet"))
        {
            l1 += Long.parseLong(as[i + 9]);
            l += Long.parseLong(as[i + 1]);
        }
        if(true) goto _L2; else goto _L1
_L1:
        if(a < 0L)
        {
            a = l3;
            Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("fix loss newMobileTx").append(l3).toString());
        }
        if(b < 0L)
        {
            b = l2;
            Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("fix loss newMobileRx").append(l2).toString());
        }
        if(c < 0L)
        {
            c = l1;
            Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("fix loss newWifiTx").append(l1).toString());
        }
        if(d < 0L)
        {
            d = l;
            Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("fix loss newWifiRx").append(l).toString());
        }
        if(l - d < 0L)
            Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("minu ").append(l - d).toString());
        if(l1 - c < 0L)
            Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("minu ").append(l1 - c).toString());
        if(l3 < a) goto _L4; else goto _L3
_L3:
        long l4 = l3 - a;
_L11:
        e = l4;
        if(l2 < b) goto _L6; else goto _L5
_L5:
        long l5 = l2 - b;
_L12:
        f = l5;
        if(l1 < c) goto _L8; else goto _L7
_L7:
        long l6 = l1 - c;
_L13:
        g = l6;
        if(l < d) goto _L10; else goto _L9
_L9:
        long l7 = l - d;
_L14:
        h = l7;
        a = l3;
        b = l2;
        c = l1;
        d = l;
_L15:
        Log.d("MicroMsg.TrafficStats", (new StringBuilder()).append("current system traffic: wifi rx/tx=").append(h).append("/").append(g).append(", mobile rx/tx=").append(f).append("/").append(e).toString());
        return;
_L4:
        l4 = l3;
          goto _L11
_L6:
        l5 = l2;
          goto _L12
_L8:
        l6 = l1;
          goto _L13
_L10:
        l7 = l;
          goto _L14
        Exception exception;
        exception;
          goto _L15
        i = 0;
          goto _L16
    }

    private static long a;
    private static long b;
    private static long c;
    private static long d;
    private static long e;
    private static long f;
    private static long g;
    private static long h;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.os.Build;
import com.tencent.mm.algorithm.MD5;
import java.io.*;

// Referenced classes of package com.tencent.mm.platformtools:
//            LogHelper, Util

public final class Log
{

    private Log()
    {
    }

    public static void a(int i, boolean flag)
    {
        a = i;
        (new StringBuilder()).append("new log level: ").append(i).toString();
        if(flag)
            setLogLevel(i);
    }

    public static void a(String s, String s1)
    {
        if(a <= 4)
            LogHelper.a(c, e, (new StringBuilder()).append("E/").append(s).toString(), s1);
    }

    public static void a(String s, String s1, String s2, int i)
    {
        if(s != null && s.length() != 0 && s2 != null && s2.length() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b = s;
        File file = new File(s);
        if(!file.exists())
            continue; /* Loop/switch isn't completed */
        c = new PrintStream(new BufferedOutputStream(new FileOutputStream(s)));
        if(file.length() == 0L)
        {
            d = System.currentTimeMillis();
            PrintStream printstream = c;
            long l = d;
            long l1;
            StringBuffer stringbuffer;
            if(printstream != null && !Util.i(s2) && l != 0L)
            {
                printstream.println((new StringBuilder()).append(1).append(" ").append(s1).toString());
                printstream.println((new StringBuilder()).append(2).append(" ").append(s2).toString());
                printstream.println((new StringBuilder()).append(3).append(" ").append(l).toString());
                printstream.println((new StringBuilder()).append(4).append(" ").append(Integer.toHexString(i)).toString());
                printstream.println((new StringBuilder()).append(5).append(" ").append(android.os.Build.VERSION.RELEASE).toString());
                printstream.println((new StringBuilder()).append(6).append(" ").append(android.os.Build.VERSION.CODENAME).toString());
                printstream.println((new StringBuilder()).append(7).append(" ").append(android.os.Build.VERSION.INCREMENTAL).toString());
                printstream.println((new StringBuilder()).append(8).append(" ").append(Build.BOARD).toString());
                printstream.println((new StringBuilder()).append(9).append(" ").append(Build.DEVICE).toString());
                printstream.println((new StringBuilder()).append(10).append(" ").append(Build.DISPLAY).toString());
                printstream.println((new StringBuilder()).append(11).append(" ").append(Build.FINGERPRINT).toString());
                printstream.println((new StringBuilder()).append(12).append(" ").append(Build.HOST).toString());
                printstream.println((new StringBuilder()).append(13).append(" ").append(Build.MANUFACTURER).toString());
                printstream.println((new StringBuilder()).append(14).append(" ").append(Build.MODEL).toString());
                printstream.println((new StringBuilder()).append(15).append(" ").append(Build.PRODUCT).toString());
                printstream.println((new StringBuilder()).append(16).append(" ").append(Build.TAGS).toString());
                printstream.println((new StringBuilder()).append(17).append(" ").append(Build.TYPE).toString());
                printstream.println((new StringBuilder()).append(18).append(" ").append(Build.USER).toString());
                printstream.println();
                printstream.flush();
            }
            l1 = d;
            stringbuffer = new StringBuffer();
            stringbuffer.append(s2);
            stringbuffer.append(l1);
            stringbuffer.append("dfdhgc");
            e = MD5.a(stringbuffer.toString().getBytes()).substring(7, 21).getBytes();
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            BufferedReader bufferedreader = new BufferedReader(new FileReader(b));
            bufferedreader.readLine();
            d = Long.parseLong(bufferedreader.readLine());
            bufferedreader.close();
        }
        catch(Exception exception) { }
        catch(FileNotFoundException filenotfoundexception) { }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void b(String s, String s1)
    {
        if(a <= 3)
            LogHelper.a(c, e, (new StringBuilder()).append("W/").append(s).toString(), s1);
    }

    public static void c(String s, String s1)
    {
        if(a <= 2)
            LogHelper.a(c, e, (new StringBuilder()).append("I/").append(s).toString(), s1);
    }

    public static void d(String s, String s1)
    {
        if(a <= 1)
            LogHelper.a(c, e, (new StringBuilder()).append("D/").append(s).toString(), s1);
    }

    public static void e(String s, String s1)
    {
        if(a <= 0)
            LogHelper.a(c, e, (new StringBuilder()).append("V/").append(s).toString(), s1);
    }

    public static native boolean setLogLevel(int i);

    private static int a = 0;
    private static String b;
    private static PrintStream c;
    private static long d = 0L;
    private static byte e[] = null;

}

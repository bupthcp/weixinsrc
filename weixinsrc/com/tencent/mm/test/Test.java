// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.test;

import com.tencent.mm.platformtools.Log;
import java.util.Random;

public final class Test
{

    private Test()
    {
    }

    public static boolean a()
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(c && (new Random(System.currentTimeMillis())).nextInt(100) > 80)
        {
            Log.b("MicroMsg.Test", "[TEST] session timeout");
            flag = true;
        }
        return flag;
    }

    public static boolean b()
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(c && (new Random(System.currentTimeMillis())).nextInt(100) > 30)
        {
            Log.b("MicroMsg.Test", "[TEST] simulate no response");
            try
            {
                Thread.sleep(1000L);
            }
            catch(InterruptedException interruptedexception) { }
            flag = true;
        }
        return flag;
    }

    public static boolean c()
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(c && (new Random(System.currentTimeMillis())).nextInt(100) > 90)
        {
            Log.b("MicroMsg.Test", "[TEST] simulate connect timeout");
            flag = true;
        }
        return flag;
    }

    public static boolean d()
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(c && (new Random(System.currentTimeMillis())).nextInt(100) > 99)
        {
            Log.b("MicroMsg.Test", "[TEST] simulate read failed");
            flag = true;
        }
        return flag;
    }

    public static boolean e()
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(c && (new Random(System.currentTimeMillis())).nextInt(100) > 99)
        {
            Log.b("MicroMsg.Test", "[TEST] simulate write failed");
            flag = true;
        }
        return flag;
    }

    public static boolean a = false;
    public static boolean b = false;
    public static boolean c = false;
    public static boolean d = false;
    public static boolean e = false;
    public static boolean f = false;
    public static boolean g = false;
    public static boolean h = false;

}

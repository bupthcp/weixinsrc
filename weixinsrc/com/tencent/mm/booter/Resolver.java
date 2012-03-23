// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import com.tencent.mm.platformtools.Log;

final class Resolver
{

    private Resolver()
    {
    }

    public static Object a(int i, String s)
    {
        i;
        JVM INSTR tableswitch 1 6: default 40
    //                   1 50
    //                   2 58
    //                   3 95
    //                   4 66
    //                   5 74
    //                   6 82;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        Log.a("MicroMsg.Debugger.Resolver", "unknown type");
          goto _L8
_L2:
        s = Integer.valueOf(s);
        break; /* Loop/switch isn't completed */
_L3:
        s = Long.valueOf(s);
        break; /* Loop/switch isn't completed */
_L5:
        s = Boolean.valueOf(s);
        break; /* Loop/switch isn't completed */
_L6:
        s = Float.valueOf(s);
        break; /* Loop/switch isn't completed */
_L7:
        Double double1 = Double.valueOf(s);
        s = double1;
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
_L8:
        s = null;
        return s;
    }
}

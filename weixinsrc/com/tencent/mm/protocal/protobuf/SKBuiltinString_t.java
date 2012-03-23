// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class SKBuiltinString_t extends BaseProtoBuf
{

    public SKBuiltinString_t()
    {
    }

    protected static boolean a(a a1, SKBuiltinString_t skbuiltinstring_t, int i)
    {
        boolean flag = true;
        i;
        JVM INSTR tableswitch 1 1: default 20
    //                   1 24;
           goto _L1 _L2
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        skbuiltinstring_t.b = a1.b();
        skbuiltinstring_t.c = flag;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int a()
    {
        int i = 0;
        if(c)
            i = 0 + c.a.a.a.b.a.b(1, b);
        return i + 0;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
    }

    public final byte[] b()
    {
        return super.b();
    }

    public final String c()
    {
        return b;
    }

    public String toString()
    {
        String s = (new StringBuilder(String.valueOf(""))).append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder(String.valueOf(s))).append("String = ").append(b).append("   ").toString();
        return (new StringBuilder(String.valueOf(s))).append(")").toString();
    }

    private String b;
    private boolean c;
}

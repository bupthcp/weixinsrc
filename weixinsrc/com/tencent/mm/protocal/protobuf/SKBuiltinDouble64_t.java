// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class SKBuiltinDouble64_t extends BaseProtoBuf
{

    public SKBuiltinDouble64_t()
    {
    }

    public final int a()
    {
        return 0 + (0 + (8 + c.a.a.a.b.a.a(1)));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
    }

    public final byte[] b()
    {
        if(!c)
            throw new c((new StringBuilder("Not all required fields were included (false = not included in message),  dVal:")).append(c).toString());
        else
            return super.b();
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(""))).append(getClass().getName()).append("(").toString()))).append("dVal = ").append(b).append("   ").toString()))).append(")").toString();
    }

    private double b;
    private boolean c;
}

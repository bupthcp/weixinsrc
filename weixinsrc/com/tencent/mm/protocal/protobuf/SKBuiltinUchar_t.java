// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class SKBuiltinUchar_t extends BaseProtoBuf
{

    public SKBuiltinUchar_t()
    {
    }

    public final int a()
    {
        return 0 + (0 + c.a.a.a.a(1, b));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
    }

    public final byte[] b()
    {
        if(!c)
            throw new c((new StringBuilder("Not all required fields were included (false = not included in message),  uiVal:")).append(c).toString());
        else
            return super.b();
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(""))).append(getClass().getName()).append("(").toString()))).append("uiVal = ").append(b).append("   ").toString()))).append(")").toString();
    }

    private int b;
    private boolean c;
}

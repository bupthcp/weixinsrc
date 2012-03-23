// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import com.tencent.mm.protobuf.ByteString;

public class SKBuiltinBuffer_t extends BaseProtoBuf
{

    public SKBuiltinBuffer_t()
    {
    }

    protected static boolean a(a a1, SKBuiltinBuffer_t skbuiltinbuffer_t, int i)
    {
        boolean flag = true;
        i;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 28
    //                   2 40;
           goto _L1 _L2 _L3
_L1:
        flag = false;
_L5:
        return flag;
_L2:
        skbuiltinbuffer_t.a(a1.a());
        continue; /* Loop/switch isn't completed */
_L3:
        skbuiltinbuffer_t.a(a1.e());
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final int a()
    {
        int i = 0 + c.a.a.a.a(1, b);
        if(e)
            i += c.a.a.a.a(2, d);
        return i + 0;
    }

    public final SKBuiltinBuffer_t a(int i)
    {
        b = i;
        c = true;
        return this;
    }

    public final SKBuiltinBuffer_t a(ByteString bytestring)
    {
        d = bytestring;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
    }

    public final byte[] b()
    {
        if(!c)
            throw new c((new StringBuilder("Not all required fields were included (false = not included in message),  iLen:")).append(c).toString());
        else
            return super.b();
    }

    public final int c()
    {
        return b;
    }

    public final ByteString d()
    {
        return d;
    }

    public String toString()
    {
        String s = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(""))).append(getClass().getName()).append("(").toString()))).append("iLen = ").append(b).append("   ").toString();
        if(e)
            s = (new StringBuilder(String.valueOf(s))).append("Buffer = ").append(d).append("   ").toString();
        return (new StringBuilder(String.valueOf(s))).append(")").toString();
    }

    private int b;
    private boolean c;
    private ByteString d;
    private boolean e;
}

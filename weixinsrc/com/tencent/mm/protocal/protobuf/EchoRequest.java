// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class EchoRequest extends BaseProtoBuf
{

    public EchoRequest()
    {
    }

    public final int a()
    {
        int i = 0;
        if(c)
            i = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i += c.a.a.a.b.a.b(2, d);
        return i + 0;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        if(e)
            a1.a(2, d);
    }

    public final byte[] b()
    {
        return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("EchoStr = ").append(b).append("   ").toString();
        if(e)
            s = (new StringBuilder()).append(s).append("Pwd = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
}

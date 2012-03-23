// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class BindCookie extends BaseProtoBuf
{

    public BindCookie()
    {
    }

    public final int a()
    {
        int i = 0;
        if(c)
            i = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i += c.a.a.a.b.a.b(2, d);
        return 0 + (i + c.a.a.a.a(3, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
    }

    public final byte[] b()
    {
        if(!g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  expire:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("mobile = ").append(b).append("   ").toString();
        if(e)
            s = (new StringBuilder()).append(s).append("verifycode = ").append(d).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("expire = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s1).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protobuf;

import c.a.a.b;
import c.a.a.b.a.a;

public abstract class BaseProtoBuf
    implements b
{

    public BaseProtoBuf()
    {
    }

    protected static int a(c.a.a.b.a a1)
    {
        return a1.f();
    }

    public abstract int a();

    public abstract void a(c.a.a.c.a a1);

    public byte[] b()
    {
        byte abyte0[] = new byte[a()];
        c.a.a.c.a a1 = new c.a.a.c.a(abyte0);
        a(a1);
        a1.a();
        return abyte0;
    }

    protected static c.a.a.b.a.b a = c.a.a.b.a.a.a();

}

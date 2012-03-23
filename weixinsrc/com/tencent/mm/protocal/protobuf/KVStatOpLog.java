// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

public class KVStatOpLog extends BaseProtoBuf
{

    public KVStatOpLog()
    {
        d = new LinkedList();
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + (0 + c.a.a.a.a(2, 8, d));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, 8, d);
    }

    public final byte[] b()
    {
        if(!c)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Count:").append(c).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Count = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("List = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private LinkedList d;
}

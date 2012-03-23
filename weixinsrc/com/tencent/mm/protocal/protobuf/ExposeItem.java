// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

public class ExposeItem extends BaseProtoBuf
{

    public ExposeItem()
    {
        d = new LinkedList();
        e = new LinkedList();
        f = new LinkedList();
    }

    public final int a()
    {
        return 0 + (0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, 2, d) + c.a.a.a.a(3, 2, e) + c.a.a.a.a(4, 2, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, 2, d);
        a1.a(3, 2, e);
        a1.a(4, 2, f);
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
        String s2 = (new StringBuilder()).append(s1).append("UinList = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TimeList = ").append(e).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("CountList = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private LinkedList d;
    private LinkedList e;
    private LinkedList f;
}

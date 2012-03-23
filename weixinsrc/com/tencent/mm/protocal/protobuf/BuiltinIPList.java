// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

public class BuiltinIPList extends BaseProtoBuf
{

    public BuiltinIPList()
    {
        h = new LinkedList();
        i = new LinkedList();
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(5, f) + (0 + c.a.a.a.a(3, 8, h) + c.a.a.a.a(4, 8, i));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(5, f);
        a1.a(3, 8, h);
        a1.a(4, 8, i);
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  LongConnectIPCount:").append(c).append(" ShortConnectIPCount:").append(e).append(" Seq:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("LongConnectIPCount = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ShortConnectIPCount = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Seq = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("LongConnectIPList = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("ShortConnectIPList = ").append(i).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private LinkedList h;
    private LinkedList i;
}

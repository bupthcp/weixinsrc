// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

public class GetBottleCountResponse extends BaseProtoBuf
{

    public GetBottleCountResponse()
    {
        j = new LinkedList();
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + (0 + c.a.a.a.a(5, 8, j));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, 8, j);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Ret:").append(c).append(" ThrowCount:").append(e).append(" PickCount:").append(g).append(" WordListCount:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Ret = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ThrowCount = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("PickCount = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("WordListCount = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("WordList = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private LinkedList j;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class FBFriend extends BaseProtoBuf
{

    public FBFriend()
    {
    }

    protected static boolean a(a a1, FBFriend fbfriend, int i)
    {
        boolean flag = true;
        i;
        JVM INSTR tableswitch 1 3: default 28
    //                   1 32
    //                   2 48
    //                   3 64;
           goto _L1 _L2 _L3 _L4
_L1:
        flag = false;
_L6:
        return flag;
_L2:
        fbfriend.b = a1.d();
        fbfriend.c = flag;
        continue; /* Loop/switch isn't completed */
_L3:
        fbfriend.d = a1.b();
        fbfriend.e = flag;
        continue; /* Loop/switch isn't completed */
_L4:
        fbfriend.f = a1.a();
        fbfriend.g = flag;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final int a()
    {
        int i = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i += c.a.a.a.b.a.b(2, d);
        return 0 + (i + c.a.a.a.a(3, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
    }

    public final byte[] b()
    {
        if(!c || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  ID:").append(c).append(" ImgKey:").append(g).append("").toString());
        else
            return super.b();
    }

    public final long c()
    {
        return b;
    }

    public final String d()
    {
        return d;
    }

    public final int e()
    {
        return f;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("ID = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("Name = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ImgKey = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private long b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
}

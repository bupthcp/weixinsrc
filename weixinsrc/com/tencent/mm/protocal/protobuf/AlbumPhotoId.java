// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class AlbumPhotoId extends BaseProtoBuf
{

    public AlbumPhotoId()
    {
    }

    protected static boolean a(a a1, AlbumPhotoId albumphotoid, int j)
    {
        boolean flag = true;
        j;
        JVM INSTR tableswitch 1 4: default 32
    //                   1 36
    //                   2 48
    //                   3 60
    //                   4 72;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        flag = false;
_L7:
        return flag;
_L2:
        albumphotoid.a(a1.b());
        continue; /* Loop/switch isn't completed */
_L3:
        albumphotoid.a(a1.a());
        continue; /* Loop/switch isn't completed */
_L4:
        albumphotoid.b(a1.a());
        continue; /* Loop/switch isn't completed */
_L5:
        albumphotoid.h = a1.a();
        albumphotoid.i = flag;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final int a()
    {
        int j = 0;
        if(c)
            j = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            j += c.a.a.a.a(2, d);
        if(g)
            j += c.a.a.a.a(3, f);
        if(i)
            j += c.a.a.a.a(4, h);
        return j + 0;
    }

    public final AlbumPhotoId a(int j)
    {
        d = j;
        e = true;
        return this;
    }

    public final AlbumPhotoId a(String s)
    {
        b = s;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
    }

    public final AlbumPhotoId b(int j)
    {
        f = j;
        g = true;
        return this;
    }

    public final byte[] b()
    {
        return super.b();
    }

    public final String c()
    {
        return b;
    }

    public final int d()
    {
        return d;
    }

    public final int e()
    {
        return f;
    }

    public final int f()
    {
        return h;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("Id = ").append(b).append("   ").toString();
        if(e)
            s = (new StringBuilder()).append(s).append("CreateTime = ").append(d).append("   ").toString();
        if(g)
            s = (new StringBuilder()).append(s).append("Sequence = ").append(f).append("   ").toString();
        if(i)
            s = (new StringBuilder()).append(s).append("Type = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s).append(")").toString();
    }

    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
}

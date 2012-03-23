// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class Package extends BaseProtoBuf
{

    public Package()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.a(4, h);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        int j1 = 0;
        if(k)
            j1 = 0 + c.a.a.a.b(5, j.a());
        if(o)
            j1 += c.a.a.a.b(7, n.a());
        return i1 + j1;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
        {
            a1.b(5, j.a());
            j.a(a1);
        }
        if(m)
            a1.a(6, l);
        if(o)
        {
            a1.b(7, n.a());
            n.a(a1);
        }
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Id:").append(c).append(" Version:").append(e).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Id = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Version = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("Name = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("Size = ").append(h).append("   ").toString();
        if(k)
            s2 = (new StringBuilder()).append(s2).append("Thumb = ").append(j).append("   ").toString();
        if(m)
            s2 = (new StringBuilder()).append(s2).append("PackName = ").append(l).append("   ").toString();
        if(o)
            s2 = (new StringBuilder()).append(s2).append("Ext = ").append(n).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
    private SKBuiltinBuffer_t j;
    private boolean k;
    private String l;
    private boolean m;
    private SKBuiltinBuffer_t n;
    private boolean o;
}

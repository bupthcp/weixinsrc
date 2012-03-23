// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class ModBottleContact extends BaseProtoBuf
{

    public ModBottleContact()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(c)
            i1 = 0 + c.a.a.a.b.a.b(1, b);
        int j1 = i1 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(i)
            j1 += c.a.a.a.b.a.b(4, h);
        if(k)
            j1 += c.a.a.a.b.a.b(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        return 0 + (j1 + c.a.a.a.a(7, n) + c.a.a.a.a(8, p));
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
    }

    public final byte[] b()
    {
        if(!e || !g || !o || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Type:").append(e).append(" Sex:").append(g).append(" ImgFlag:").append(o).append(" HDImgFlag:").append(q).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("UserName = ").append(b).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("Type = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Sex = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("City = ").append(h).append("   ").toString();
        if(k)
            s2 = (new StringBuilder()).append(s2).append("Province = ").append(j).append("   ").toString();
        if(m)
            s2 = (new StringBuilder()).append(s2).append("Signature = ").append(l).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ImgFlag = ").append(n).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("HDImgFlag = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
}

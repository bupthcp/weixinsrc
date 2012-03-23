// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class LbsContactInfo extends BaseProtoBuf
{

    public LbsContactInfo()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(c)
            i1 = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i1 += c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        int j1 = i1 + c.a.a.a.a(7, n) + c.a.a.a.a(8, p);
        if(s)
            j1 += c.a.a.a.a(9, r);
        if(u)
            j1 += c.a.a.a.b.a.b(10, t);
        if(w)
            j1 += c.a.a.a.b.a.b(11, v);
        if(y)
            j1 += c.a.a.a.b.a.b(12, x);
        if(A)
            j1 += c.a.a.a.b.a.b(13, z);
        if(C)
            j1 += c.a.a.a.b.a.b(14, B);
        if(E)
            j1 += c.a.a.a.a(15, D);
        if(G)
            j1 += c.a.a.a.a(16, F);
        return j1 + 0;
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
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
        if(s)
            a1.a(9, r);
        if(u)
            a1.a(10, t);
        if(w)
            a1.a(11, v);
        if(y)
            a1.a(12, x);
        if(A)
            a1.a(13, z);
        if(C)
            a1.a(14, B);
        if(E)
            a1.a(15, D);
        if(G)
            a1.a(16, F);
    }

    public final byte[] b()
    {
        if(!o || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Sex:").append(o).append(" ImgStatus:").append(q).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("UserName = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("NickName = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("Province = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("City = ").append(h).append("   ").toString();
        if(k)
            s1 = (new StringBuilder()).append(s1).append("Signature = ").append(j).append("   ").toString();
        if(m)
            s1 = (new StringBuilder()).append(s1).append("Distance = ").append(l).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Sex = ").append(n).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ImgStatus = ").append(p).append("   ").toString();
        if(s)
            s3 = (new StringBuilder()).append(s3).append("VerifyFlag = ").append(r).append("   ").toString();
        if(u)
            s3 = (new StringBuilder()).append(s3).append("VerifyInfo = ").append(t).append("   ").toString();
        if(w)
            s3 = (new StringBuilder()).append(s3).append("VerifyContent = ").append(v).append("   ").toString();
        if(y)
            s3 = (new StringBuilder()).append(s3).append("Alias = ").append(x).append("   ").toString();
        if(A)
            s3 = (new StringBuilder()).append(s3).append("Weibo = ").append(z).append("   ").toString();
        if(C)
            s3 = (new StringBuilder()).append(s3).append("WeiboNickname = ").append(B).append("   ").toString();
        if(E)
            s3 = (new StringBuilder()).append(s3).append("WeiboFlag = ").append(D).append("   ").toString();
        if(G)
            s3 = (new StringBuilder()).append(s3).append("AlbumFlag = ").append(F).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private boolean A;
    private String B;
    private boolean C;
    private int D;
    private boolean E;
    private int F;
    private boolean G;
    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
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
    private int r;
    private boolean s;
    private String t;
    private boolean u;
    private String v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

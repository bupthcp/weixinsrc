// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class QQFriendInGroup extends BaseProtoBuf
{

    public QQFriendInGroup()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b);
        if(e)
            i1 += c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        int j1 = i1 + c.a.a.a.a(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        if(o)
            j1 += c.a.a.a.a(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        if(u)
            j1 += c.a.a.a.b.a.b(10, t);
        if(w)
            j1 += c.a.a.a.a(11, v);
        if(y)
            j1 += c.a.a.a.b.a.b(12, x);
        return j1 + 0;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
        if(u)
            a1.a(10, t);
        if(w)
            a1.a(11, v);
        if(y)
            a1.a(12, x);
    }

    public final byte[] b()
    {
        if(!c || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  QQUin:").append(c).append(" WeixinStatus:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("QQUin = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("UserName = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("NickName = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("QQNickName = ").append(h).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("WeixinStatus = ").append(j).append("   ").toString();
        if(m)
            s3 = (new StringBuilder()).append(s3).append("QQRemarkName = ").append(l).append("   ").toString();
        if(o)
            s3 = (new StringBuilder()).append(s3).append("Sex = ").append(n).append("   ").toString();
        if(q)
            s3 = (new StringBuilder()).append(s3).append("Province = ").append(p).append("   ").toString();
        if(s)
            s3 = (new StringBuilder()).append(s3).append("City = ").append(r).append("   ").toString();
        if(u)
            s3 = (new StringBuilder()).append(s3).append("Signature = ").append(t).append("   ").toString();
        if(w)
            s3 = (new StringBuilder()).append(s3).append("PersonalCard = ").append(v).append("   ").toString();
        if(y)
            s3 = (new StringBuilder()).append(s3).append("Alias = ").append(x).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private int b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
    private String t;
    private boolean u;
    private int v;
    private boolean w;
    private String x;
    private boolean y;
}

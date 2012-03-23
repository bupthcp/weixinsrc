// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class PossibleFriend extends BaseProtoBuf
{

    public PossibleFriend()
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
        int j1 = i1 + c.a.a.a.a(5, j) + c.a.a.a.a(6, l) + c.a.a.a.a(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        int k1 = j1 + c.a.a.a.a(10, t);
        if(w)
            k1 += c.a.a.a.b.a.b(11, v);
        return k1 + 0;
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
        a1.a(5, j);
        a1.a(6, l);
        a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
        a1.a(10, t);
        if(w)
            a1.a(11, v);
    }

    public final byte[] b()
    {
        if(!k || !m || !o || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Sex:").append(k).append(" ImgFlag:").append(m).append(" ContactType:").append(o).append(" FriendScene:").append(u).append("").toString());
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
            s1 = (new StringBuilder()).append(s1).append("PYInitial = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("QuanPin = ").append(h).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Sex = ").append(j).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ImgFlag = ").append(l).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ContactType = ").append(n).append("   ").toString();
        if(q)
            s4 = (new StringBuilder()).append(s4).append("DomainList = ").append(p).append("   ").toString();
        if(s)
            s4 = (new StringBuilder()).append(s4).append("Source = ").append(r).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("FriendScene = ").append(t).append("   ").toString();
        if(w)
            s5 = (new StringBuilder()).append(s5).append("Mobile = ").append(v).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
    private int t;
    private boolean u;
    private String v;
    private boolean w;
}

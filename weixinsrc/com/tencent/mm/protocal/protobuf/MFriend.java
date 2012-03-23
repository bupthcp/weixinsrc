// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            FBFriend

public class MFriend extends BaseProtoBuf
{

    public MFriend()
    {
    }

    protected static boolean a(a a1, MFriend mfriend, int i1)
    {
        boolean flag = false;
        i1;
        JVM INSTR tableswitch 1 10: default 56
    //                   1 58
    //                   2 76
    //                   3 94
    //                   4 112
    //                   5 130
    //                   6 148
    //                   7 166
    //                   8 184
    //                   9 202
    //                   10 220;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
        return flag;
_L2:
        mfriend.b = a1.b();
        mfriend.c = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        mfriend.d = a1.b();
        mfriend.e = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L4:
        mfriend.f = a1.b();
        mfriend.g = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L5:
        mfriend.h = a1.a();
        mfriend.i = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L6:
        mfriend.j = a1.b();
        mfriend.k = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L7:
        mfriend.l = a1.b();
        mfriend.m = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L8:
        mfriend.n = a1.b();
        mfriend.o = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L9:
        mfriend.p = a1.a();
        mfriend.q = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L10:
        mfriend.r = a1.b();
        mfriend.s = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L11:
        LinkedList linkedlist = a1.a(10);
        for(int j1 = ((flag) ? 1 : 0); j1 < linkedlist.size(); j1++)
        {
            byte abyte0[] = (byte[])linkedlist.get(j1);
            FBFriend fbfriend = new FBFriend();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.FBFriend.a(a2, fbfriend, a(a2)));
            mfriend.t = fbfriend;
            mfriend.u = true;
        }

        flag = true;
        if(true) goto _L1; else goto _L12
_L12:
    }

    public final int a()
    {
        int i1 = 0;
        int j1;
        if(c)
            j1 = 0 + c.a.a.a.b.a.b(1, b);
        else
            j1 = i1;
        if(e)
            j1 += c.a.a.a.b.a.b(2, d);
        if(g)
            j1 += c.a.a.a.b.a.b(3, f);
        if(i)
            j1 += c.a.a.a.a(4, h);
        if(k)
            j1 += c.a.a.a.b.a.b(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        if(o)
            j1 += c.a.a.a.b.a.b(7, n);
        if(q)
            j1 += c.a.a.a.a(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        if(u)
            i1 = 0 + c.a.a.a.b(10, t.a());
        return j1 + i1;
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
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
        if(u)
        {
            a1.b(10, t.a());
            t.a(a1);
        }
    }

    public final byte[] b()
    {
        return super.b();
    }

    public final String c()
    {
        return b;
    }

    public final String d()
    {
        return d;
    }

    public final String e()
    {
        return f;
    }

    public final int f()
    {
        return h;
    }

    public final String g()
    {
        return j;
    }

    public final String h()
    {
        return l;
    }

    public final String i()
    {
        return n;
    }

    public final int j()
    {
        return p;
    }

    public final String k()
    {
        return r;
    }

    public final FBFriend l()
    {
        return t;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("Username = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("Nickname = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("MobileMD5 = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("Sex = ").append(h).append("   ").toString();
        if(k)
            s1 = (new StringBuilder()).append(s1).append("Province = ").append(j).append("   ").toString();
        if(m)
            s1 = (new StringBuilder()).append(s1).append("City = ").append(l).append("   ").toString();
        if(o)
            s1 = (new StringBuilder()).append(s1).append("Signature = ").append(n).append("   ").toString();
        if(q)
            s1 = (new StringBuilder()).append(s1).append("PersonalCard = ").append(p).append("   ").toString();
        if(s)
            s1 = (new StringBuilder()).append(s1).append("Alias = ").append(r).append("   ").toString();
        if(u)
            s1 = (new StringBuilder()).append(s1).append("FBInfo = ").append(t).append("   ").toString();
        return (new StringBuilder()).append(s1).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private int p;
    private boolean q;
    private String r;
    private boolean s;
    private FBFriend t;
    private boolean u;
}

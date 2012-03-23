// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class CommentInfo extends BaseProtoBuf
{

    public CommentInfo()
    {
    }

    protected static boolean a(a a1, CommentInfo commentinfo, int i1)
    {
        boolean flag = true;
        i1;
        JVM INSTR tableswitch 1 8: default 48
    //                   1 52
    //                   2 68
    //                   3 48
    //                   4 80
    //                   5 92
    //                   6 104
    //                   7 116
    //                   8 128;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L6 _L7 _L8
_L1:
        flag = false;
_L10:
        return flag;
_L2:
        commentinfo.b = a1.a();
        commentinfo.c = flag;
        continue; /* Loop/switch isn't completed */
_L3:
        commentinfo.a(a1.a());
        continue; /* Loop/switch isn't completed */
_L4:
        commentinfo.a(a1.b());
        continue; /* Loop/switch isn't completed */
_L5:
        commentinfo.b(a1.a());
        continue; /* Loop/switch isn't completed */
_L6:
        commentinfo.b(a1.b());
        continue; /* Loop/switch isn't completed */
_L7:
        commentinfo.c(a1.b());
        continue; /* Loop/switch isn't completed */
_L8:
        commentinfo.c(a1.a());
        if(true) goto _L10; else goto _L9
_L9:
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(4, f);
        int j1 = i1 + c.a.a.a.a(5, h);
        if(k)
            j1 += c.a.a.a.b.a.b(6, j);
        if(m)
            j1 += c.a.a.a.b.a.b(7, l);
        return 0 + (j1 + c.a.a.a.a(8, n));
    }

    public final CommentInfo a(int i1)
    {
        d = i1;
        e = true;
        return this;
    }

    public final CommentInfo a(String s)
    {
        f = s;
        g = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        if(g)
            a1.a(4, f);
        a1.a(5, h);
        if(k)
            a1.a(6, j);
        if(m)
            a1.a(7, l);
        a1.a(8, n);
    }

    public final CommentInfo b(int i1)
    {
        h = i1;
        i = true;
        return this;
    }

    public final CommentInfo b(String s)
    {
        j = s;
        k = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !i || !o)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  CommandId:").append(c).append(" Type:").append(e).append(" Source:").append(i).append(" CreateTime:").append(o).append("").toString());
        else
            return super.b();
    }

    public final int c()
    {
        return b;
    }

    public final CommentInfo c(int i1)
    {
        n = i1;
        o = true;
        return this;
    }

    public final CommentInfo c(String s)
    {
        l = s;
        m = true;
        return this;
    }

    public final int d()
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

    public final int i()
    {
        return n;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("CommandId = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Type = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("Content = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Source = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("Fromusername = ").append(j).append("   ").toString();
        if(m)
            s3 = (new StringBuilder()).append(s3).append("Tousername = ").append(l).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("CreateTime = ").append(n).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class MailAddr extends BaseProtoBuf
{

    public MailAddr()
    {
    }

    protected static boolean a(a a1, MailAddr mailaddr, int j)
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
        mailaddr.a(a1.a());
        continue; /* Loop/switch isn't completed */
_L3:
        mailaddr.a(a1.b());
        continue; /* Loop/switch isn't completed */
_L4:
        mailaddr.b(a1.b());
        continue; /* Loop/switch isn't completed */
_L5:
        mailaddr.b(a1.a());
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final int a()
    {
        int j = 0;
        if(c)
            j = 0 + c.a.a.a.a(1, b);
        return 0 + (j + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h));
    }

    public final MailAddr a(int j)
    {
        b = j;
        c = true;
        return this;
    }

    public final MailAddr a(String s)
    {
        d = s;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
    }

    public final MailAddr b(int j)
    {
        h = j;
        i = true;
        return this;
    }

    public final MailAddr b(String s)
    {
        f = s;
        g = true;
        return this;
    }

    public final byte[] b()
    {
        if(!e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  name:").append(e).append(" addr:").append(g).append(" freq:").append(i).append("").toString());
        else
            return super.b();
    }

    public final int c()
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

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("hash = ").append(b).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("name = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("addr = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("freq = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private int b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
}

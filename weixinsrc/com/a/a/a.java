// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.a;

import com.a.a.a.c;
import com.a.a.a.e;
import com.a.a.a.g;
import com.a.a.a.h;
import com.a.b.a.b;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

public final class a extends g
{

    public a()
    {
        a = 0;
        f = 0;
        g = 0;
        b = 0;
        c = null;
        d = null;
        h = 0;
    }

    public final Object clone()
    {
        Object obj = null;
        Object obj1 = super.clone();
        obj = obj1;
_L2:
        return obj;
        CloneNotSupportedException clonenotsupportedexception;
        clonenotsupportedexception;
        if(!m)
            throw new AssertionError();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void display(StringBuilder stringbuilder, int i1)
    {
        h h1 = new h(stringbuilder, i1);
        h1.a(a, "iVersion");
        h1.a(f, "cPacketType");
        h1.a(g, "iMessageType");
        h1.a(b, "iRequestId");
        h1.a(c, "sServantName");
        h1.a(d, "sFuncName");
        h1.a(e, "sBuffer");
        h1.a(h, "iTimeout");
        h1.a(i, "context");
        h1.a(j, "status");
    }

    public final boolean equals(Object obj)
    {
        boolean flag = true;
        a a1 = (a)obj;
        if(!com.a.a.a.c.a(flag, a1.a) || !com.a.a.a.c.a(flag, a1.f) || !com.a.a.a.c.a(flag, a1.g) || !com.a.a.a.c.a(flag, a1.b) || !com.a.a.a.c.a(Integer.valueOf(flag), a1.c) || !com.a.a.a.c.a(Integer.valueOf(flag), a1.d) || !com.a.a.a.c.a(Integer.valueOf(flag), a1.e) || !com.a.a.a.c.a(flag, a1.h) || !com.a.a.a.c.a(Integer.valueOf(flag), a1.i) || !com.a.a.a.c.a(Integer.valueOf(flag), a1.j))
            flag = false;
        return flag;
    }

    public final void readFrom(com.a.a.a.a a1)
    {
        try
        {
            a = a1.a(a, 1, true);
            f = a1.a(f, 2, true);
            g = a1.a(g, 3, true);
            b = a1.a(b, 4, true);
            c = a1.b(5, true);
            d = a1.b(6, true);
            if(k == null)
            {
                byte abyte0[] = new byte[1];
                abyte0[0] = 0;
                k = abyte0;
            }
            e = (byte[])a1.c(7, true);
            h = a1.a(h, 8, true);
            if(l == null)
            {
                HashMap hashmap = new HashMap();
                l = hashmap;
                hashmap.put("", "");
            }
            i = (Map)a1.a(l, 9, true);
            if(l == null)
            {
                HashMap hashmap1 = new HashMap();
                l = hashmap1;
                hashmap1.put("", "");
            }
            j = (Map)a1.a(l, 10, true);
            return;
        }
        catch(Exception exception)
        {
            System.out.println((new StringBuilder()).append("RequestPacket decode error ").append(com.a.b.a.b.a(e)).toString());
            throw new RuntimeException(exception);
        }
    }

    public final void writeTo(e e1)
    {
        e1.a(a, 1);
        e1.a(f, 2);
        e1.a(g, 3);
        e1.a(b, 4);
        e1.a(c, 5);
        e1.a(d, 6);
        e1.a(e, 7);
        e1.a(h, 8);
        e1.a(i, 9);
        e1.a(j, 10);
    }

    private static byte k[] = null;
    private static Map l = null;
    private static boolean m;
    public short a;
    public int b;
    public String c;
    public String d;
    public byte e[];
    private byte f;
    private int g;
    private int h;
    private Map i;
    private Map j;

    static 
    {
        boolean flag;
        if(!com/a/a/a.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        m = flag;
    }
}

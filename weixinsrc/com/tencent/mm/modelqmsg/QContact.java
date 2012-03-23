// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqmsg;

import android.content.ContentValues;

public class QContact
{

    public QContact()
    {
        o = -1;
        a = "";
        b = 0L;
        c = "";
        d = 0;
        e = 0L;
        f = 0L;
        g = 0;
        h = 0;
        i = 0;
        j = 0;
        k = "";
        l = "";
        m = "";
        n = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & o) != 0)
            contentvalues.put("username", b());
        if((2 & o) != 0)
            contentvalues.put("qq", Long.valueOf(b));
        if((4 & o) != 0)
            contentvalues.put("extinfo", c());
        if((8 & o) != 0)
            contentvalues.put("needupdate", Integer.valueOf(d));
        if((0x10 & o) != 0)
            contentvalues.put("extupdateseq", Long.valueOf(e));
        if((0x20 & o) != 0)
            contentvalues.put("imgupdateseq", Long.valueOf(f));
        if((0x40 & o) != 0)
            contentvalues.put("reserved1", Integer.valueOf(g));
        if((0x80 & o) != 0)
            contentvalues.put("reserved2", Integer.valueOf(h));
        if((0x100 & o) != 0)
            contentvalues.put("reserved3", Integer.valueOf(i));
        if((0x200 & o) != 0)
            contentvalues.put("reserved4", Integer.valueOf(j));
        if((0x400 & o) != 0)
        {
            String s3;
            if(k == null)
                s3 = "";
            else
                s3 = k;
            contentvalues.put("reserved5", s3);
        }
        if((0x800 & o) != 0)
        {
            String s2;
            if(l == null)
                s2 = "";
            else
                s2 = l;
            contentvalues.put("reserved6", s2);
        }
        if((0x1000 & o) != 0)
        {
            String s1;
            if(m == null)
                s1 = "";
            else
                s1 = m;
            contentvalues.put("reserved7", s1);
        }
        if((0x2000 & o) != 0)
        {
            String s;
            if(n == null)
                s = "";
            else
                s = n;
            contentvalues.put("reserved8", s);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        o = i1;
    }

    public final void a(long l1)
    {
        b = l1;
    }

    public final void a(String s)
    {
        a = s;
    }

    public final String b()
    {
        String s;
        if(a == null)
            s = "";
        else
            s = a;
        return s;
    }

    public final void b(int i1)
    {
        d = i1;
    }

    public final void b(long l1)
    {
        e = l1;
    }

    public final void b(String s)
    {
        c = s;
    }

    public final String c()
    {
        String s;
        if(c == null)
            s = "";
        else
            s = c;
        return s;
    }

    public final void c(int i1)
    {
        g = i1;
    }

    public final void c(long l1)
    {
        f = l1;
    }

    public final void c(String s)
    {
        k = s;
    }

    public final int d()
    {
        return d;
    }

    public final void d(int i1)
    {
        h = i1;
    }

    public final void d(String s)
    {
        l = s;
    }

    public final long e()
    {
        return e;
    }

    public final void e(int i1)
    {
        i = i1;
    }

    public final void e(String s)
    {
        m = s;
    }

    public final long f()
    {
        return f;
    }

    public final void f(int i1)
    {
        j = i1;
    }

    public final void f(String s)
    {
        n = s;
    }

    private String a;
    private long b;
    private String c;
    private int d;
    private long e;
    private long f;
    private int g;
    private int h;
    private int i;
    private int j;
    private String k;
    private String l;
    private String m;
    private String n;
    private int o;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modeltmsg;

import android.content.ContentValues;

public class TContact
{

    public TContact()
    {
        m = -1;
        a = "";
        b = 0L;
        c = 0L;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = "";
        j = "";
        k = "";
        l = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & m) != 0)
            contentvalues.put("username", b());
        if((2 & m) != 0)
            contentvalues.put("extupdateseq", Long.valueOf(b));
        if((4 & m) != 0)
            contentvalues.put("imgupdateseq", Long.valueOf(c));
        if((8 & m) != 0)
            contentvalues.put("needupdate", Integer.valueOf(d));
        if((0x10 & m) != 0)
            contentvalues.put("reserved1", Integer.valueOf(e));
        if((0x20 & m) != 0)
            contentvalues.put("reserved2", Integer.valueOf(f));
        if((0x40 & m) != 0)
            contentvalues.put("reserved3", Integer.valueOf(g));
        if((0x80 & m) != 0)
            contentvalues.put("reserved4", Integer.valueOf(h));
        if((0x100 & m) != 0)
        {
            String s3;
            if(i == null)
                s3 = "";
            else
                s3 = i;
            contentvalues.put("reserved5", s3);
        }
        if((0x200 & m) != 0)
        {
            String s2;
            if(j == null)
                s2 = "";
            else
                s2 = j;
            contentvalues.put("reserved6", s2);
        }
        if((0x400 & m) != 0)
        {
            String s1;
            if(k == null)
                s1 = "";
            else
                s1 = k;
            contentvalues.put("reserved7", s1);
        }
        if((0x800 & m) != 0)
        {
            String s;
            if(l == null)
                s = "";
            else
                s = l;
            contentvalues.put("reserved8", s);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        m = i1;
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
        c = l1;
    }

    public final void b(String s)
    {
        i = s;
    }

    public final long c()
    {
        return b;
    }

    public final void c(int i1)
    {
        e = i1;
    }

    public final void c(String s)
    {
        j = s;
    }

    public final long d()
    {
        return c;
    }

    public final void d(int i1)
    {
        f = i1;
    }

    public final void d(String s)
    {
        k = s;
    }

    public final void e(int i1)
    {
        g = i1;
    }

    public final void e(String s)
    {
        l = s;
    }

    public final void f(int i1)
    {
        h = i1;
    }

    private String a;
    private long b;
    private long c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private String i;
    private String j;
    private String k;
    private String l;
    private int m;
}

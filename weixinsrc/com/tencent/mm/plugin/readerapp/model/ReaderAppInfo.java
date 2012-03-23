// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.model;

import android.content.ContentValues;
import android.database.Cursor;
import junit.framework.Assert;

public class ReaderAppInfo
{

    public ReaderAppInfo()
    {
        s = -1;
        a = "";
        b = 0L;
        c = 0;
        d = "";
        e = "";
        f = "";
        g = "";
        h = "";
        i = 0L;
        j = "";
        k = "";
        l = 0;
        m = "";
        n = "";
        o = 0;
        p = 0;
        q = "";
        r = "";
    }

    public static String a(int i1)
    {
        String s1;
        if(i1 == 20)
            s1 = "readerapp";
        else
        if(i1 == 11)
        {
            s1 = "blogapp";
        } else
        {
            Assert.assertTrue("INFO TYPE NEITHER NEWS NOR WEIBO", false);
            s1 = null;
        }
        return s1;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & s) != 0)
            contentvalues.put("tweetid", c());
        if((2 & s) != 0)
            contentvalues.put("time", Long.valueOf(b));
        if((4 & s) != 0)
            contentvalues.put("type", Integer.valueOf(c));
        if((8 & s) != 0)
            contentvalues.put("name", f());
        if((0x10 & s) != 0)
            contentvalues.put("title", g());
        if((0x20 & s) != 0)
            contentvalues.put("url", h());
        if((0x40 & s) != 0)
            contentvalues.put("shorturl", i());
        if((0x80 & s) != 0)
        {
            String s3;
            if(h == null)
                s3 = "";
            else
                s3 = h;
            contentvalues.put("longurl", s3);
        }
        if((0x100 & s) != 0)
            contentvalues.put("pubtime", Long.valueOf(i));
        if((0x200 & s) != 0)
            contentvalues.put("sourcename", j());
        if((0x400 & s) != 0)
            contentvalues.put("sourceicon", k());
        if((0x800 & s) != 0)
            contentvalues.put("istop", Integer.valueOf(l));
        if((0x1000 & s) != 0)
            contentvalues.put("cover", m());
        if((0x2000 & s) != 0)
            contentvalues.put("digest", n());
        if((0x4000 & s) != 0)
            contentvalues.put("reserved1", Integer.valueOf(o));
        if((0x8000 & s) != 0)
            contentvalues.put("reserved2", Integer.valueOf(p));
        if((0x10000 & s) != 0)
        {
            String s2;
            if(q == null)
                s2 = "";
            else
                s2 = q;
            contentvalues.put("reserved3", s2);
        }
        if((0x20000 & s) != 0)
        {
            String s1;
            if(r == null)
                s1 = "";
            else
                s1 = r;
            contentvalues.put("reserved4", s1);
        }
        return contentvalues;
    }

    public final void a(long l1)
    {
        b = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getString(0);
        b = cursor.getLong(1);
        c = cursor.getInt(2);
        d = cursor.getString(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
        i = cursor.getLong(8);
        j = cursor.getString(9);
        k = cursor.getString(10);
        l = cursor.getInt(11);
        m = cursor.getString(12);
        n = cursor.getString(13);
        o = cursor.getInt(14);
        p = cursor.getInt(15);
        q = cursor.getString(16);
        r = cursor.getString(17);
    }

    public final void a(String s1)
    {
        a = s1;
    }

    public final void b()
    {
        s = -1;
    }

    public final void b(int i1)
    {
        c = i1;
    }

    public final void b(long l1)
    {
        i = l1;
    }

    public final void b(String s1)
    {
        d = s1;
    }

    public final String c()
    {
        String s1;
        if(a == null)
            s1 = "";
        else
            s1 = a;
        return s1;
    }

    public final void c(String s1)
    {
        e = s1;
    }

    public final long d()
    {
        return b;
    }

    public final void d(String s1)
    {
        f = s1;
    }

    public final int e()
    {
        return c;
    }

    public final void e(String s1)
    {
        g = s1;
    }

    public final String f()
    {
        String s1;
        if(d == null)
            s1 = "";
        else
            s1 = d;
        return s1;
    }

    public final void f(String s1)
    {
        h = s1;
    }

    public final String g()
    {
        String s1;
        if(e == null)
            s1 = "";
        else
            s1 = e;
        return s1;
    }

    public final void g(String s1)
    {
        j = s1;
    }

    public final String h()
    {
        String s1;
        if(f == null)
            s1 = "";
        else
            s1 = f;
        return s1;
    }

    public final void h(String s1)
    {
        k = s1;
    }

    public final String i()
    {
        String s1;
        if(g == null)
            s1 = "";
        else
            s1 = g;
        return s1;
    }

    public final void i(String s1)
    {
        m = s1;
    }

    public final String j()
    {
        String s1;
        if(j == null)
            s1 = "";
        else
            s1 = j;
        return s1;
    }

    public final void j(String s1)
    {
        n = s1;
    }

    public final String k()
    {
        String s1;
        if(k == null)
            s1 = "";
        else
            s1 = k;
        return s1;
    }

    public final void l()
    {
        l = 1;
    }

    public final String m()
    {
        String s1;
        if(m == null)
            s1 = "";
        else
            s1 = m;
        return s1;
    }

    public final String n()
    {
        String s1;
        if(n == null)
            s1 = "";
        else
            s1 = n;
        return s1;
    }

    private String a;
    private long b;
    private int c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private long i;
    private String j;
    private String k;
    private int l;
    private String m;
    private String n;
    private int o;
    private int p;
    private String q;
    private String r;
    private int s;
}

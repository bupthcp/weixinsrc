// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public class AddrUpload
{

    public AddrUpload()
    {
        p = -1;
        a = 0;
        b = "";
        c = "";
        d = 0L;
        e = "";
        f = "";
        g = "";
        h = "";
        i = "";
        j = "";
        k = "";
        l = 0;
        m = "";
        n = "";
        o = 0;
    }

    public static int a(String s)
    {
        return (int)Long.parseLong(s.substring(0, 8), 16);
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & p) != 0)
            contentvalues.put("id", Integer.valueOf(a));
        if((2 & p) != 0)
            contentvalues.put("md5", b());
        if((4 & p) != 0)
            contentvalues.put("peopleid", c());
        if((8 & p) != 0)
            contentvalues.put("uploadtime", Long.valueOf(d));
        if((0x10 & p) != 0)
            contentvalues.put("realname", d());
        if((0x20 & p) != 0)
        {
            String s4;
            if(f == null)
                s4 = "";
            else
                s4 = f;
            contentvalues.put("realnamepyinitial", s4);
        }
        if((0x40 & p) != 0)
        {
            String s3;
            if(g == null)
                s3 = "";
            else
                s3 = g;
            contentvalues.put("realnamequanpin", s3);
        }
        if((0x80 & p) != 0)
            contentvalues.put("username", e());
        if((0x100 & p) != 0)
            contentvalues.put("nickname", f());
        if((0x200 & p) != 0)
        {
            String s2;
            if(j == null)
                s2 = "";
            else
                s2 = j;
            contentvalues.put("nicknamepyinitial", s2);
        }
        if((0x400 & p) != 0)
        {
            String s1;
            if(k == null)
                s1 = "";
            else
                s1 = k;
            contentvalues.put("nicknamequanpin", s1);
        }
        if((0x800 & p) != 0)
            contentvalues.put("type", Integer.valueOf(l));
        if((0x1000 & p) != 0)
            contentvalues.put("moblie", g());
        if((0x2000 & p) != 0)
        {
            String s;
            if(n == null)
                s = "";
            else
                s = n;
            contentvalues.put("email", s);
        }
        if((0x4000 & p) != 0)
        {
            int i1 = o;
            if(i1 == 0)
                contentvalues.put("status", Integer.valueOf(0x10000));
            else
                contentvalues.put("status", Integer.valueOf(i1));
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        p = i1;
    }

    public final void a(long l1)
    {
        d = l1;
    }

    public final void a(Cursor cursor)
    {
        b(cursor.getString(1));
        c = cursor.getString(2);
        d = cursor.getLong(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
        i = cursor.getString(8);
        j = cursor.getString(9);
        k = cursor.getString(10);
        l = cursor.getInt(11);
        m = cursor.getString(12);
        n = cursor.getString(13);
        int i1 = cursor.getInt(14);
        if(i1 == 0x10000)
            o = 0;
        else
            o = i1;
    }

    public final String b()
    {
        String s;
        if(b == null)
            s = "";
        else
            s = b;
        return s;
    }

    public final void b(int i1)
    {
        l = i1;
    }

    public final void b(String s)
    {
        b = s;
        a = a(s);
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
        o = i1;
    }

    public final void c(String s)
    {
        c = s;
    }

    public final String d()
    {
        String s;
        if(e == null)
            s = "";
        else
            s = e;
        return s;
    }

    public final void d(String s)
    {
        e = s;
    }

    public final String e()
    {
        String s;
        if(h == null)
            s = "";
        else
            s = h;
        return s;
    }

    public final void e(String s)
    {
        f = s;
    }

    public final String f()
    {
        String s;
        if(i == null)
            s = "";
        else
            s = i;
        return s;
    }

    public final void f(String s)
    {
        g = s;
    }

    public final String g()
    {
        String s;
        if(m == null)
            s = "";
        else
            s = m;
        return s;
    }

    public final void g(String s)
    {
        h = s;
    }

    public final int h()
    {
        return o;
    }

    public final void h(String s)
    {
        i = s;
    }

    public final void i(String s)
    {
        j = s;
    }

    public final void j(String s)
    {
        k = s;
    }

    public final void k(String s)
    {
        m = s;
    }

    public final void l(String s)
    {
        n = s;
    }

    private int a;
    private String b;
    private String c;
    private long d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private int l;
    private String m;
    private String n;
    private int o;
    private int p;
}

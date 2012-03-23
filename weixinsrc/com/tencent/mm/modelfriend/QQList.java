// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public class QQList
{

    public QQList()
    {
        n = -1;
        a = 0L;
        b = 0;
        c = 0;
        d = "";
        e = "";
        f = "";
        g = "";
        h = "";
        i = "";
        j = "";
        k = "";
        l = "";
        m = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & n) != 0)
            contentvalues.put("qq", Long.valueOf(a));
        if((2 & n) != 0)
        {
            int i1 = b;
            if(i1 == 0)
                contentvalues.put("wexinstatus", Integer.valueOf(0x10000));
            else
                contentvalues.put("wexinstatus", Integer.valueOf(i1));
        }
        if((4 & n) != 0)
            contentvalues.put("groupid", Integer.valueOf(c));
        if((8 & n) != 0)
            contentvalues.put("username", e());
        if((0x10 & n) != 0)
            contentvalues.put("nickname", f());
        if((0x20 & n) != 0)
        {
            String s5;
            if(f == null)
                s5 = "";
            else
                s5 = f;
            contentvalues.put("pyinitial", s5);
        }
        if((0x40 & n) != 0)
        {
            String s4;
            if(g == null)
                s4 = "";
            else
                s4 = g;
            contentvalues.put("quanpin", s4);
        }
        if((0x80 & n) != 0)
            contentvalues.put("qqnickname", g());
        if((0x100 & n) != 0)
        {
            String s3;
            if(i == null)
                s3 = "";
            else
                s3 = i;
            contentvalues.put("qqpyinitial", s3);
        }
        if((0x200 & n) != 0)
        {
            String s2;
            if(j == null)
                s2 = "";
            else
                s2 = j;
            contentvalues.put("qqquanpin", s2);
        }
        if((0x400 & n) != 0)
            contentvalues.put("qqremark", h());
        if((0x800 & n) != 0)
        {
            String s1;
            if(l == null)
                s1 = "";
            else
                s1 = l;
            contentvalues.put("qqremarkpyinitial", s1);
        }
        if((0x1000 & n) != 0)
        {
            String s;
            if(m == null)
                s = "";
            else
                s = m;
            contentvalues.put("qqremarkquanpin", s);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        b = i1;
    }

    public final void a(long l1)
    {
        a = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getLong(0);
        int i1 = cursor.getInt(1);
        if(i1 == 0x10000)
            b = 0;
        else
            b = i1;
        c = cursor.getInt(2);
        d = cursor.getString(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
        i = cursor.getString(8);
        j = cursor.getString(9);
        k = cursor.getString(10);
        l = cursor.getString(11);
        m = cursor.getString(12);
    }

    public final void a(String s)
    {
        d = s;
    }

    public final void b()
    {
        n = -1;
    }

    public final void b(int i1)
    {
        c = i1;
    }

    public final void b(String s)
    {
        e = s;
    }

    public final long c()
    {
        return a;
    }

    public final void c(String s)
    {
        f = s;
    }

    public final int d()
    {
        return b;
    }

    public final void d(String s)
    {
        g = s;
    }

    public final String e()
    {
        String s;
        if(d == null)
            s = "";
        else
            s = d;
        return s;
    }

    public final void e(String s)
    {
        h = s;
    }

    public final String f()
    {
        String s;
        if(e == null)
            s = "";
        else
            s = e;
        return s;
    }

    public final void f(String s)
    {
        i = s;
    }

    public final String g()
    {
        String s;
        if(h == null)
            s = "";
        else
            s = h;
        return s;
    }

    public final void g(String s)
    {
        j = s;
    }

    public final String h()
    {
        String s;
        if(k == null)
            s = "";
        else
            s = k;
        return s;
    }

    public final void h(String s)
    {
        k = s;
    }

    public final String i()
    {
        String s;
        if(h() == null || h().length() <= 0)
            s = g();
        else
            s = h();
        return s;
    }

    public final void i(String s)
    {
        l = s;
    }

    public final void j(String s)
    {
        m = s;
    }

    private long a;
    private int b;
    private int c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private int n;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public class FacebookFriend
{

    public FacebookFriend()
    {
        q = -1;
        a = 0L;
        b = "";
        c = 0;
        d = 0;
        e = "";
        f = "";
        g = "";
        h = "";
        i = 0;
        j = 0;
        k = "";
        l = "";
        m = "";
        n = "";
        o = 0;
        p = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & q) != 0)
            contentvalues.put("fbid", Long.valueOf(a));
        if((2 & q) != 0)
            contentvalues.put("fbname", e());
        if((4 & q) != 0)
            contentvalues.put("fbimgkey", Integer.valueOf(c));
        if((8 & q) != 0)
            contentvalues.put("status", Integer.valueOf(d));
        if((0x10 & q) != 0)
            contentvalues.put("username", g());
        if((0x20 & q) != 0)
            contentvalues.put("nickname", h());
        if((0x40 & q) != 0)
        {
            String s6;
            if(g == null)
                s6 = "";
            else
                s6 = g;
            contentvalues.put("nicknamepyinitial", s6);
        }
        if((0x80 & q) != 0)
        {
            String s5;
            if(h == null)
                s5 = "";
            else
                s5 = h;
            contentvalues.put("nicknamequanpin", s5);
        }
        if((0x100 & q) != 0)
            contentvalues.put("sex", Integer.valueOf(i));
        if((0x200 & q) != 0)
            contentvalues.put("personalcard", Integer.valueOf(j));
        if((0x400 & q) != 0)
        {
            String s4;
            if(k == null)
                s4 = "";
            else
                s4 = k;
            contentvalues.put("province", s4);
        }
        if((0x800 & q) != 0)
        {
            String s3;
            if(l == null)
                s3 = "";
            else
                s3 = l;
            contentvalues.put("city", s3);
        }
        if((0x1000 & q) != 0)
        {
            String s2;
            if(m == null)
                s2 = "";
            else
                s2 = m;
            contentvalues.put("signature", s2);
        }
        if((0x2000 & q) != 0)
        {
            String s1;
            if(n == null)
                s1 = "";
            else
                s1 = n;
            contentvalues.put("alias", s1);
        }
        if((0x4000 & q) != 0)
            contentvalues.put("type", Integer.valueOf(o));
        if((0x8000 & q) != 0)
        {
            String s;
            if(p == null)
                s = "";
            else
                s = p;
            contentvalues.put("email", s);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        c = i1;
    }

    public final void a(long l1)
    {
        a = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getLong(0);
        b = cursor.getString(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
        i = cursor.getInt(8);
        j = cursor.getInt(9);
        k = cursor.getString(10);
        l = cursor.getString(11);
        m = cursor.getString(12);
        n = cursor.getString(13);
        o = cursor.getInt(14);
        p = cursor.getString(15);
    }

    public final void a(String s)
    {
        b = s;
    }

    public final void b()
    {
        q = -1;
    }

    public final void b(int i1)
    {
        d = i1;
    }

    public final void b(String s)
    {
        e = s;
    }

    public final int c()
    {
        return q;
    }

    public final void c(int i1)
    {
        i = i1;
    }

    public final void c(String s)
    {
        f = s;
    }

    public final long d()
    {
        return a;
    }

    public final void d(int i1)
    {
        j = i1;
    }

    public final void d(String s)
    {
        g = s;
    }

    public final String e()
    {
        String s;
        if(b == null)
            s = "";
        else
            s = b;
        return s;
    }

    public final void e(String s)
    {
        h = s;
    }

    public final int f()
    {
        return d;
    }

    public final void f(String s)
    {
        k = s;
    }

    public final String g()
    {
        String s;
        if(e == null)
            s = "";
        else
            s = e;
        return s;
    }

    public final void g(String s)
    {
        l = s;
    }

    public final String h()
    {
        String s;
        if(f == null)
            s = "";
        else
            s = f;
        return s;
    }

    public final void h(String s)
    {
        m = s;
    }

    public final void i(String s)
    {
        n = s;
    }

    private long a;
    private String b;
    private int c;
    private int d;
    private String e;
    private String f;
    private String g;
    private String h;
    private int i;
    private int j;
    private String k;
    private String l;
    private String m;
    private String n;
    private int o;
    private String p;
    private int q;
}

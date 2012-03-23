// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modeltheme;

import android.content.ContentValues;
import android.database.Cursor;

public class ThemeInfo
{

    public ThemeInfo()
    {
        l = -1;
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = "";
        g = "";
        h = 0;
        i = 0;
        j = "";
        k = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & l) != 0)
            contentvalues.put("themeid", Integer.valueOf(a));
        if((2 & l) != 0)
            contentvalues.put("themever", Integer.valueOf(b));
        if((4 & l) != 0)
            contentvalues.put("themesize", Integer.valueOf(c));
        if((8 & l) != 0)
            contentvalues.put("offset", Integer.valueOf(d));
        if((0x10 & l) != 0)
            contentvalues.put("status", Integer.valueOf(e));
        if((0x20 & l) != 0)
            contentvalues.put("themename", h());
        if((0x40 & l) != 0)
            contentvalues.put("packname", i());
        if((0x80 & l) != 0)
            contentvalues.put("reserved1", Integer.valueOf(h));
        if((0x100 & l) != 0)
            contentvalues.put("reserved2", Integer.valueOf(i));
        if((0x200 & l) != 0)
        {
            String s1;
            if(j == null)
                s1 = "";
            else
                s1 = j;
            contentvalues.put("reserved3", s1);
        }
        if((0x400 & l) != 0)
        {
            String s;
            if(k == null)
                s = "";
            else
                s = k;
            contentvalues.put("reserved4", s);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        l = i1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getInt(0);
        b = cursor.getInt(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getInt(7);
        i = cursor.getInt(8);
        j = cursor.getString(9);
        k = cursor.getString(10);
    }

    public final void a(String s)
    {
        f = s;
    }

    public final int b()
    {
        return l;
    }

    public final void b(int i1)
    {
        a = i1;
    }

    public final void b(String s)
    {
        g = s;
    }

    public final int c()
    {
        return a;
    }

    public final void c(int i1)
    {
        b = i1;
    }

    public final int d()
    {
        return b;
    }

    public final void d(int i1)
    {
        c = i1;
    }

    public final int e()
    {
        return c;
    }

    public final void e(int i1)
    {
        d = i1;
    }

    public final int f()
    {
        return d;
    }

    public final void f(int i1)
    {
        e = i1;
    }

    public final int g()
    {
        return e;
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

    public final String i()
    {
        String s;
        if(g == null)
            s = "";
        else
            s = g;
        return s;
    }

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private String f;
    private String g;
    private int h;
    private int i;
    private String j;
    private String k;
    private int l;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpackage;

import android.content.ContentValues;
import android.database.Cursor;

public class PackageInfo
{

    public PackageInfo()
    {
        m = -1;
        b = 0;
        c = 0;
        d = "";
        e = 0;
        f = "";
        g = 0;
        h = 0;
        i = "";
        j = "";
        k = 0;
        l = 0;
        a = (new StringBuilder()).append(b).append("_").append(h).toString();
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((2 & m) != 0)
            contentvalues.put("id", Integer.valueOf(b));
        if((4 & m) != 0)
            contentvalues.put("version", Integer.valueOf(c));
        if((8 & m) != 0)
        {
            String s3;
            if(d == null)
                s3 = "";
            else
                s3 = d;
            contentvalues.put("name", s3);
        }
        if((0x10 & m) != 0)
            contentvalues.put("size", Integer.valueOf(e));
        if((0x20 & m) != 0)
        {
            String s2;
            if(f == null)
                s2 = "";
            else
                s2 = f;
            contentvalues.put("packname", s2);
        }
        if((0x40 & m) != 0)
            contentvalues.put("status", Integer.valueOf(g));
        if((0x80 & m) != 0)
            contentvalues.put("type", Integer.valueOf(h));
        if((0x100 & m) != 0)
        {
            String s1;
            if(i == null)
                s1 = "";
            else
                s1 = i;
            contentvalues.put("reserved1", s1);
        }
        if((0x200 & m) != 0)
        {
            String s;
            if(j == null)
                s = "";
            else
                s = j;
            contentvalues.put("reserved2", s);
        }
        if((0x400 & m) != 0)
            contentvalues.put("reserved3", Integer.valueOf(k));
        if((0x800 & m) != 0)
            contentvalues.put("reserved4", Integer.valueOf(l));
        if((1 & m) != 0)
            contentvalues.put("localId", (new StringBuilder()).append(b).append("_").append(h).toString());
        return contentvalues;
    }

    public final void a(int i1)
    {
        m = i1;
    }

    public final void a(Cursor cursor)
    {
        c = cursor.getInt(2);
        d = cursor.getString(3);
        e = cursor.getInt(4);
        f = cursor.getString(5);
        g = cursor.getInt(6);
        i = cursor.getString(8);
        j = cursor.getString(9);
        h = cursor.getInt(7);
        l = cursor.getInt(11);
        b = cursor.getInt(1);
        k = cursor.getInt(10);
        a = cursor.getString(0);
    }

    public final void a(String s)
    {
        d = s;
    }

    public final int b()
    {
        return b;
    }

    public final void b(int i1)
    {
        b = i1;
    }

    public final void b(String s)
    {
        f = s;
    }

    public final int c()
    {
        return c;
    }

    public final void c(int i1)
    {
        c = i1;
    }

    public final int d()
    {
        return e;
    }

    public final void d(int i1)
    {
        e = i1;
    }

    public final int e()
    {
        return h;
    }

    public final void e(int i1)
    {
        h = i1;
    }

    public final int f()
    {
        return g;
    }

    public final void f(int i1)
    {
        g = i1;
    }

    private String a;
    private int b;
    private int c;
    private String d;
    private int e;
    private String f;
    private int g;
    private int h;
    private String i;
    private String j;
    private int k;
    private int l;
    private int m;
}

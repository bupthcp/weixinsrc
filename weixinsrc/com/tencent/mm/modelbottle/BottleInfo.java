// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import android.content.ContentValues;
import android.database.Cursor;

public class BottleInfo
{

    public BottleInfo()
    {
        m = -1;
        a = "";
        b = 0;
        c = "";
        d = 0;
        e = 0;
        f = 0;
        g = "";
        h = 0L;
        i = 0;
        j = 0;
        k = "";
        l = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & m) != 0)
        {
            String s2;
            if(a == null)
                s2 = "";
            else
                s2 = a;
            contentvalues.put("parentclientid", s2);
        }
        if((2 & m) != 0)
            contentvalues.put("childcount", Integer.valueOf(b));
        if((4 & m) != 0)
            contentvalues.put("bottleid", c());
        if((8 & m) != 0)
            contentvalues.put("bottletype", Integer.valueOf(d));
        if((0x10 & m) != 0)
            contentvalues.put("msgtype", Integer.valueOf(e));
        if((0x20 & m) != 0)
            contentvalues.put("voicelen", Integer.valueOf(f));
        if((0x40 & m) != 0)
            contentvalues.put("content", g());
        if((0x80 & m) != 0)
            contentvalues.put("createtime", Long.valueOf(h));
        if((0x100 & m) != 0)
            contentvalues.put("reserved1", Integer.valueOf(i));
        if((0x200 & m) != 0)
            contentvalues.put("reserved2", Integer.valueOf(j));
        if((0x400 & m) != 0)
        {
            String s1;
            if(k == null)
                s1 = "";
            else
                s1 = k;
            contentvalues.put("reserved3", s1);
        }
        if((0x800 & m) != 0)
        {
            String s;
            if(l == null)
                s = "";
            else
                s = l;
            contentvalues.put("reserved4", s);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        b = i1;
    }

    public final void a(long l1)
    {
        h = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getString(0);
        b = cursor.getInt(1);
        c = cursor.getString(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getInt(5);
        g = cursor.getString(6);
        h = cursor.getLong(7);
        i = cursor.getInt(8);
        j = cursor.getInt(9);
        k = cursor.getString(10);
        l = cursor.getString(11);
    }

    public final void a(String s)
    {
        a = s;
    }

    public final void b()
    {
        m = -1;
    }

    public final void b(int i1)
    {
        d = i1;
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
        e = i1;
    }

    public final void c(String s)
    {
        g = s;
    }

    public final int d()
    {
        return d;
    }

    public final void d(int i1)
    {
        f = i1;
    }

    public final int e()
    {
        return e;
    }

    public final int f()
    {
        return f;
    }

    public final String g()
    {
        String s;
        if(g == null)
            s = "";
        else
            s = g;
        return s;
    }

    public final long h()
    {
        return h;
    }

    private String a;
    private int b;
    private String c;
    private int d;
    private int e;
    private int f;
    private String g;
    private long h;
    private int i;
    private int j;
    private String k;
    private String l;
    private int m;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.content.ContentValues;
import android.database.Cursor;

public class AlbumImg
{

    public AlbumImg()
    {
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("id", Integer.valueOf(a));
        contentvalues.put("pcId", b);
        contentvalues.put("createTime", Long.valueOf(d));
        contentvalues.put("userName", c);
        contentvalues.put("totallen", Integer.valueOf(f));
        contentvalues.put("offset", Integer.valueOf(e));
        contentvalues.put("local_flag", Integer.valueOf(h));
        contentvalues.put("thumb", g);
        contentvalues.put("bigpath", j);
        contentvalues.put("nums", Integer.valueOf(i));
        return contentvalues;
    }

    public final void a(int k)
    {
        a = k;
    }

    public final void a(long l)
    {
        d = l;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getInt(0);
        b = cursor.getString(1);
        d = cursor.getInt(2);
        c = cursor.getString(3);
        f = cursor.getInt(4);
        e = cursor.getInt(5);
        h = cursor.getInt(6);
        g = cursor.getString(7);
        j = cursor.getString(8);
        i = cursor.getInt(9);
    }

    public final void a(String s)
    {
        j = s;
    }

    public final String b()
    {
        return j;
    }

    public final void b(int k)
    {
        e = k;
    }

    public final void b(String s)
    {
        b = s;
    }

    public final String c()
    {
        String s;
        if(j != null && !j.equals("") && j.startsWith("albumb_"))
            s = j;
        else
            s = "pre_none";
        return s;
    }

    public final void c(int k)
    {
        f = k;
    }

    public final void c(String s)
    {
        c = s;
    }

    public final void d()
    {
        h = 2 | h;
    }

    public final void d(int k)
    {
        h = k;
    }

    public final void d(String s)
    {
        g = s;
    }

    public final boolean e()
    {
        boolean flag;
        if((2 & h) > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean f()
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(j != null && !j.equals("") && !j.startsWith("albumb_"))
            flag = true;
        return flag;
    }

    public final String g()
    {
        return b;
    }

    public final int h()
    {
        return e;
    }

    public final int i()
    {
        return f;
    }

    public final int j()
    {
        return h;
    }

    private int a;
    private String b;
    private String c;
    private long d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private String j;
}

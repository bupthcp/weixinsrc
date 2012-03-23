// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public class QQGroup
{

    public QQGroup()
    {
        i = -1;
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = "";
        h = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & i) != 0)
            contentvalues.put("grouopid", Integer.valueOf(a));
        if((2 & i) != 0)
            contentvalues.put("membernum", Integer.valueOf(b));
        if((4 & i) != 0)
            contentvalues.put("weixinnum", Integer.valueOf(c));
        if((8 & i) != 0)
            contentvalues.put("insert_time", Integer.valueOf(d));
        if((0x10 & i) != 0)
            contentvalues.put("lastupdate_time", Integer.valueOf(e));
        if((0x20 & i) != 0)
            contentvalues.put("needupdate", Integer.valueOf(f));
        if((0x40 & i) != 0)
            contentvalues.put("updatekey", f());
        if((0x80 & i) != 0)
            contentvalues.put("groupname", g());
        return contentvalues;
    }

    public final void a(int j)
    {
        i = j;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getInt(0);
        b = cursor.getInt(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getInt(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
    }

    public final void a(String s)
    {
        g = s;
    }

    public final int b()
    {
        return a;
    }

    public final void b(int j)
    {
        a = j;
    }

    public final void b(String s)
    {
        h = s;
    }

    public final int c()
    {
        return b;
    }

    public final void c(int j)
    {
        b = j;
    }

    public final int d()
    {
        return c;
    }

    public final void d(int j)
    {
        c = j;
    }

    public final int e()
    {
        return f;
    }

    public final void e(int j)
    {
        d = j;
    }

    public final String f()
    {
        String s;
        if(g == null)
            s = "";
        else
            s = g;
        return s;
    }

    public final void f(int j)
    {
        e = j;
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

    public final void g(int j)
    {
        f = j;
    }

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private String g;
    private String h;
    private int i;
}

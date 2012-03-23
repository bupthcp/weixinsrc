// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelimage;

import android.content.ContentValues;
import android.database.Cursor;

public class ImgInfo
{

    public ImgInfo()
    {
        a = -2;
        f = "";
        g = "";
    }

    public final int a()
    {
        return j;
    }

    public final void a(int i1)
    {
        a = i1;
    }

    public final void a(Cursor cursor)
    {
        b = cursor.getInt(0);
        c = cursor.getInt(1);
        d = cursor.getInt(2);
        e = cursor.getInt(3);
        f = cursor.getString(4);
        g = cursor.getString(5);
        h = cursor.getInt(6);
        i = cursor.getInt(7);
        j = cursor.getInt(8);
        k = cursor.getInt(9);
    }

    public final void a(String s)
    {
        f = s;
    }

    public final void b()
    {
        j = -1;
    }

    public final void b(int i1)
    {
        k = i1;
    }

    public final void b(String s)
    {
        g = s;
    }

    public final int c()
    {
        return k;
    }

    public final void c(int i1)
    {
        h = i1;
    }

    public final int d()
    {
        return h;
    }

    public final void d(int i1)
    {
        i = i1;
    }

    public final int e()
    {
        return i;
    }

    public final void e(int i1)
    {
        b = i1;
    }

    public final long f()
    {
        return b;
    }

    public final void f(int i1)
    {
        c = i1;
    }

    public final int g()
    {
        return c;
    }

    public final void g(int i1)
    {
        d = i1;
    }

    public final int h()
    {
        return d;
    }

    public final void h(int i1)
    {
        e = i1;
    }

    public final int i()
    {
        return e;
    }

    public final String j()
    {
        return f;
    }

    public final String k()
    {
        return g;
    }

    public final boolean l()
    {
        boolean flag;
        if(d == e && e != 0 || c != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean m()
    {
        boolean flag;
        if(d == e && e != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int n()
    {
        int i1;
        if(e > 0)
        {
            if(d >= e)
                i1 = 100;
            else
                i1 = (100 * d) / e;
        } else
        {
            i1 = 0;
        }
        return i1;
    }

    public final ContentValues o()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & a) != 0)
            contentvalues.put("id", Long.valueOf(b));
        if((2 & a) != 0)
            contentvalues.put("msgSvrId", Integer.valueOf(c));
        if((4 & a) != 0)
            contentvalues.put("offset", Integer.valueOf(d));
        if((8 & a) != 0)
            contentvalues.put("totalLen", Integer.valueOf(e));
        if((0x10 & a) != 0)
            contentvalues.put("bigImgPath", f);
        if((0x20 & a) != 0)
            contentvalues.put("thumbImgPath", g);
        if((0x40 & a) != 0)
            contentvalues.put("createtime", Integer.valueOf(h));
        if((0x80 & a) != 0)
            contentvalues.put("msglocalid", Integer.valueOf(i));
        if((0x100 & a) != 0)
            contentvalues.put("status", Integer.valueOf(j));
        if((0x200 & a) != 0)
            contentvalues.put("nettimes", Integer.valueOf(k));
        return contentvalues;
    }

    private int a;
    private long b;
    private int c;
    private int d;
    private int e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j;
    private int k;
}

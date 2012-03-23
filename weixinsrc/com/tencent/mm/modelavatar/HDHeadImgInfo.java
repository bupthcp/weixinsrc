// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import android.content.ContentValues;

public class HDHeadImgInfo
{

    public HDHeadImgInfo()
    {
        l = -1;
        b();
    }

    public final void a(int i1)
    {
        b = i1;
    }

    public final void a(String s)
    {
        a = s;
    }

    public final boolean a()
    {
        boolean flag;
        if(f >= e)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void b()
    {
        a = "";
        b = 0;
        c = 0;
        d = "";
        e = 0;
        f = 0;
        g = 0;
        h = "";
        i = "";
        j = 0;
        k = 0;
    }

    public final void b(int i1)
    {
        c = i1;
    }

    public final void b(String s)
    {
        d = s;
    }

    public final ContentValues c()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & l) != 0)
        {
            String s2;
            if(a == null)
                s2 = "";
            else
                s2 = a;
            contentvalues.put("username", s2);
        }
        if((2 & l) != 0)
            contentvalues.put("imgwidth", Integer.valueOf(b));
        if((4 & l) != 0)
            contentvalues.put("imgheigth", Integer.valueOf(c));
        if((8 & l) != 0)
            contentvalues.put("imgformat", g());
        if((0x10 & l) != 0)
            contentvalues.put("totallen", Integer.valueOf(e));
        if((0x20 & l) != 0)
            contentvalues.put("startpos", Integer.valueOf(f));
        if((0x40 & l) != 0)
            contentvalues.put("headimgtype", Integer.valueOf(g));
        if((0x80 & l) != 0)
        {
            String s1;
            if(h == null)
                s1 = "";
            else
                s1 = h;
            contentvalues.put("reserved1", s1);
        }
        if((0x100 & l) != 0)
        {
            String s;
            if(i == null)
                s = "";
            else
                s = i;
            contentvalues.put("reserved2", s);
        }
        if((0x200 & l) != 0)
            contentvalues.put("reserved3", Integer.valueOf(j));
        if((0x400 & l) != 0)
            contentvalues.put("reserved4", Integer.valueOf(k));
        return contentvalues;
    }

    public final void c(int i1)
    {
        e = i1;
    }

    public final void c(String s)
    {
        h = s;
    }

    public final void d()
    {
        l = -1;
    }

    public final void d(int i1)
    {
        f = i1;
    }

    public final void d(String s)
    {
        i = s;
    }

    public final int e()
    {
        return b;
    }

    public final void e(int i1)
    {
        g = i1;
    }

    public final int f()
    {
        return c;
    }

    public final void f(int i1)
    {
        j = i1;
    }

    public final String g()
    {
        String s;
        if(d == null)
            s = "";
        else
            s = d;
        return s;
    }

    public final void g(int i1)
    {
        k = i1;
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
        return g;
    }

    private String a;
    private int b;
    private int c;
    private String d;
    private int e;
    private int f;
    private int g;
    private String h;
    private String i;
    private int j;
    private int k;
    private int l;
}

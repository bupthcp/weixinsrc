// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.model;

import android.content.ContentValues;
import android.database.Cursor;

public class MasSendInfo
{

    public MasSendInfo()
    {
        s = -1;
        a = "";
        b = 0;
        c = 0L;
        d = 0L;
        e = "";
        f = "";
        g = "";
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        m = 0;
        n = 0;
        o = 0;
        p = 0;
        q = "";
        r = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & s) != 0)
            contentvalues.put("clientid", c());
        if((2 & s) != 0)
            contentvalues.put("status", Integer.valueOf(b));
        if((4 & s) != 0)
            contentvalues.put("createtime", Long.valueOf(c));
        if((8 & s) != 0)
            contentvalues.put("lastmodifytime", Long.valueOf(d));
        if((0x10 & s) != 0)
            contentvalues.put("filename", f());
        if((0x20 & s) != 0)
            contentvalues.put("thumbfilename", g());
        if((0x40 & s) != 0)
            contentvalues.put("tolist", h());
        if((0x80 & s) != 0)
            contentvalues.put("tolistcount", Integer.valueOf(h));
        if((0x100 & s) != 0)
            contentvalues.put("msgtype", Integer.valueOf(i));
        if((0x200 & s) != 0)
            contentvalues.put("mediatime", Integer.valueOf(j));
        if((0x400 & s) != 0)
            contentvalues.put("datanetoffset", Integer.valueOf(k));
        if((0x800 & s) != 0)
            contentvalues.put("datalen", Integer.valueOf(l));
        if((0x1000 & s) != 0)
            contentvalues.put("thumbnetoffset", Integer.valueOf(m));
        if((0x2000 & s) != 0)
            contentvalues.put("thumbtotallen", Integer.valueOf(n));
        if((0x4000 & s) != 0)
            contentvalues.put("reserved1", Integer.valueOf(o));
        if((0x8000 & s) != 0)
            contentvalues.put("reserved2", Integer.valueOf(p));
        if((0x10000 & s) != 0)
        {
            String s2;
            if(q == null)
                s2 = "";
            else
                s2 = q;
            contentvalues.put("reserved3", s2);
        }
        if((0x20000 & s) != 0)
        {
            String s1;
            if(r == null)
                s1 = "";
            else
                s1 = r;
            contentvalues.put("reserved4", s1);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        b = i1;
    }

    public final void a(long l1)
    {
        c = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getString(0);
        b = cursor.getInt(1);
        c = cursor.getLong(2);
        d = cursor.getLong(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getInt(7);
        i = cursor.getInt(8);
        j = cursor.getInt(9);
        k = cursor.getInt(10);
        l = cursor.getInt(11);
        m = cursor.getInt(12);
        n = cursor.getInt(13);
        o = cursor.getInt(14);
        p = cursor.getInt(15);
        q = cursor.getString(16);
        r = cursor.getString(17);
    }

    public final void a(String s1)
    {
        a = s1;
    }

    public final void b()
    {
        s = -1;
    }

    public final void b(int i1)
    {
        h = i1;
    }

    public final void b(long l1)
    {
        d = l1;
    }

    public final void b(String s1)
    {
        e = s1;
    }

    public final String c()
    {
        String s1;
        if(a == null)
            s1 = "";
        else
            s1 = a;
        return s1;
    }

    public final void c(int i1)
    {
        i = i1;
    }

    public final void c(String s1)
    {
        f = s1;
    }

    public final int d()
    {
        return b;
    }

    public final void d(int i1)
    {
        j = i1;
    }

    public final void d(String s1)
    {
        g = s1;
    }

    public final long e()
    {
        return c;
    }

    public final void e(int i1)
    {
        k = i1;
    }

    public final String f()
    {
        String s1;
        if(e == null)
            s1 = "";
        else
            s1 = e;
        return s1;
    }

    public final void f(int i1)
    {
        l = i1;
    }

    public final String g()
    {
        String s1;
        if(f == null)
            s1 = "";
        else
            s1 = f;
        return s1;
    }

    public final void g(int i1)
    {
        m = i1;
    }

    public final String h()
    {
        String s1;
        if(g == null)
            s1 = "";
        else
            s1 = g;
        return s1;
    }

    public final void h(int i1)
    {
        n = i1;
    }

    public final int i()
    {
        return h;
    }

    public final int j()
    {
        return i;
    }

    public final int k()
    {
        return j;
    }

    public final int l()
    {
        return k;
    }

    public final int m()
    {
        return l;
    }

    public final int n()
    {
        return m;
    }

    public final int o()
    {
        return n;
    }

    public final void p()
    {
        o = 2;
    }

    public final int q()
    {
        return o;
    }

    private String a;
    private int b;
    private long c;
    private long d;
    private String e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private String q;
    private String r;
    private int s;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import android.content.ContentValues;
import android.database.Cursor;

public class VoiceInfo
{

    public VoiceInfo()
    {
        a = -1;
        b = "";
        c = "";
        d = "";
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        j = 0L;
        k = 0L;
        l = 0;
        m = 0;
        n = "";
        o = 0;
        p = "";
    }

    public final void a(int i1)
    {
        a = i1;
    }

    public final void a(long l1)
    {
        j = l1;
    }

    public final void a(Cursor cursor)
    {
        b = cursor.getString(0);
        c = cursor.getString(1);
        e = cursor.getInt(2);
        f = cursor.getInt(3);
        g = cursor.getInt(4);
        h = cursor.getInt(5);
        i = cursor.getInt(6);
        j = cursor.getLong(7);
        k = cursor.getLong(8);
        d = cursor.getString(9);
        l = cursor.getInt(10);
        m = cursor.getInt(11);
        n = cursor.getString(12);
        o = cursor.getInt(13);
        p = cursor.getString(14);
    }

    public final void a(String s)
    {
        n = s;
    }

    public final boolean a()
    {
        boolean flag;
        if(i == 5 || i == 6)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void b(int i1)
    {
        m = i1;
    }

    public final void b(long l1)
    {
        k = l1;
    }

    public final void b(String s)
    {
        b = s;
    }

    public final boolean b()
    {
        boolean flag = true;
        if((i <= flag || i > 3) && i != 8)
            flag = false;
        return flag;
    }

    public final int c()
    {
        return a;
    }

    public final void c(int i1)
    {
        l = i1;
    }

    public final void c(String s)
    {
        c = s;
    }

    public final ContentValues d()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & a) != 0)
            contentvalues.put("FileName", b);
        if((2 & a) != 0)
            contentvalues.put("User", c);
        if((4 & a) != 0)
            contentvalues.put("MsgId", Integer.valueOf(e));
        if((8 & a) != 0)
            contentvalues.put("NetOffset", Integer.valueOf(f));
        if((0x10 & a) != 0)
            contentvalues.put("FileNowSize", Integer.valueOf(g));
        if((0x20 & a) != 0)
            contentvalues.put("TotalLen", Integer.valueOf(h));
        if((0x40 & a) != 0)
            contentvalues.put("Status", Integer.valueOf(i));
        if((0x80 & a) != 0)
            contentvalues.put("CreateTime", Long.valueOf(j));
        if((0x100 & a) != 0)
            contentvalues.put("LastModifyTime", Long.valueOf(k));
        if((0x200 & a) != 0)
            contentvalues.put("ClientId", d);
        if((0x400 & a) != 0)
            contentvalues.put("VoiceLength", Integer.valueOf(l));
        if((0x800 & a) != 0)
            contentvalues.put("MsgLocalId", Integer.valueOf(m));
        if((0x1000 & a) != 0)
            contentvalues.put("Human", n);
        if((0x2000 & a) != 0)
            contentvalues.put("reserved1", Integer.valueOf(o));
        if((0x4000 & a) != 0)
            contentvalues.put("reserved2", p);
        return contentvalues;
    }

    public final void d(int i1)
    {
        e = i1;
    }

    public final void d(String s)
    {
        d = s;
    }

    public final String e()
    {
        return n;
    }

    public final void e(int i1)
    {
        f = i1;
    }

    public final int f()
    {
        return m;
    }

    public final void f(int i1)
    {
        g = i1;
    }

    public final int g()
    {
        return l;
    }

    public final void g(int i1)
    {
        h = i1;
    }

    public final String h()
    {
        return b;
    }

    public final void h(int i1)
    {
        i = i1;
    }

    public final String i()
    {
        return c;
    }

    public final void i(int i1)
    {
        o = i1;
    }

    public final String j()
    {
        return d;
    }

    public final int k()
    {
        return e;
    }

    public final int l()
    {
        return f;
    }

    public final int m()
    {
        return g;
    }

    public final int n()
    {
        return h;
    }

    public final int o()
    {
        return i;
    }

    public final long p()
    {
        return j;
    }

    public final long q()
    {
        return k;
    }

    public final int r()
    {
        return o;
    }

    private int a;
    private String b;
    private String c;
    private String d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private long j;
    private long k;
    private int l;
    private int m;
    private String n;
    private int o;
    private String p;
}

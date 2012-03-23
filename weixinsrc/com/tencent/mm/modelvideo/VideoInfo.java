// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import android.content.ContentValues;
import android.database.Cursor;

public class VideoInfo
{

    public VideoInfo()
    {
        w = -1;
        a = "";
        b = "";
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        j = 0L;
        k = 0L;
        l = 0L;
        m = 0;
        n = 0;
        o = 0;
        p = 0;
        q = "";
        r = "";
        s = 0;
        t = 0;
        u = "";
        v = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & w) != 0)
            contentvalues.put("filename", c());
        if((2 & w) != 0)
        {
            String s3;
            if(b == null)
                s3 = "";
            else
                s3 = b;
            contentvalues.put("clientid", s3);
        }
        if((4 & w) != 0)
            contentvalues.put("msgsvrid", Integer.valueOf(c));
        if((8 & w) != 0)
            contentvalues.put("netoffset", Integer.valueOf(d));
        if((0x10 & w) != 0)
            contentvalues.put("filenowsize", Integer.valueOf(e));
        if((0x20 & w) != 0)
            contentvalues.put("totallen", Integer.valueOf(f));
        if((0x40 & w) != 0)
            contentvalues.put("thumbnetoffset", Integer.valueOf(g));
        if((0x80 & w) != 0)
            contentvalues.put("thumblen", Integer.valueOf(h));
        if((0x100 & w) != 0)
            contentvalues.put("status", Integer.valueOf(i));
        if((0x200 & w) != 0)
            contentvalues.put("createtime", Long.valueOf(j));
        if((0x400 & w) != 0)
            contentvalues.put("lastmodifytime", Long.valueOf(k));
        if((0x800 & w) != 0)
            contentvalues.put("downloadtime", Long.valueOf(l));
        if((0x1000 & w) != 0)
            contentvalues.put("videolength", Integer.valueOf(m));
        if((0x2000 & w) != 0)
            contentvalues.put("msglocalid", Integer.valueOf(n));
        if((0x4000 & w) != 0)
            contentvalues.put("nettimes", Integer.valueOf(o));
        if((0x8000 & w) != 0)
            contentvalues.put("cameratype", Integer.valueOf(p));
        if((0x10000 & w) != 0)
            contentvalues.put("user", p());
        if((0x20000 & w) != 0)
            contentvalues.put("human", q());
        if((0x40000 & w) != 0)
            contentvalues.put("reserved1", Integer.valueOf(s));
        if((0x80000 & w) != 0)
            contentvalues.put("reserved2", Integer.valueOf(t));
        if((0x100000 & w) != 0)
        {
            String s2;
            if(u == null)
                s2 = "";
            else
                s2 = u;
            contentvalues.put("reserved3", s2);
        }
        if((0x200000 & w) != 0)
        {
            String s1;
            if(v == null)
                s1 = "";
            else
                s1 = v;
            contentvalues.put("reserved4", s1);
        }
        return contentvalues;
    }

    public final void a(int i1)
    {
        w = i1;
    }

    public final void a(long l1)
    {
        j = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getString(0);
        b = cursor.getString(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getInt(5);
        g = cursor.getInt(6);
        h = cursor.getInt(7);
        i = cursor.getInt(8);
        j = cursor.getLong(9);
        k = cursor.getLong(10);
        l = cursor.getLong(11);
        m = cursor.getInt(12);
        n = cursor.getInt(13);
        o = cursor.getInt(14);
        p = cursor.getInt(15);
        q = cursor.getString(16);
        r = cursor.getString(17);
        s = cursor.getInt(18);
        t = cursor.getInt(19);
        u = cursor.getString(20);
        v = cursor.getString(21);
    }

    public final void a(String s1)
    {
        a = s1;
    }

    public final int b()
    {
        return w;
    }

    public final void b(int i1)
    {
        c = i1;
    }

    public final void b(long l1)
    {
        k = l1;
    }

    public final void b(String s1)
    {
        q = s1;
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
        d = i1;
    }

    public final void c(long l1)
    {
        l = l1;
    }

    public final void c(String s1)
    {
        r = s1;
    }

    public final int d()
    {
        return c;
    }

    public final void d(int i1)
    {
        e = i1;
    }

    public final void d(String s1)
    {
        u = s1;
    }

    public final int e()
    {
        return d;
    }

    public final void e(int i1)
    {
        f = i1;
    }

    public final int f()
    {
        return e;
    }

    public final void f(int i1)
    {
        g = i1;
    }

    public final int g()
    {
        return f;
    }

    public final void g(int i1)
    {
        h = i1;
    }

    public final int h()
    {
        return g;
    }

    public final void h(int i1)
    {
        i = i1;
    }

    public final int i()
    {
        return h;
    }

    public final void i(int i1)
    {
        m = i1;
    }

    public final int j()
    {
        return i;
    }

    public final void j(int i1)
    {
        n = i1;
    }

    public final long k()
    {
        return j;
    }

    public final void k(int i1)
    {
        o = i1;
    }

    public final long l()
    {
        return k;
    }

    public final void l(int i1)
    {
        s = i1;
    }

    public final int m()
    {
        return m;
    }

    public final int n()
    {
        return n;
    }

    public final int o()
    {
        return o;
    }

    public final String p()
    {
        String s1;
        if(q == null)
            s1 = "";
        else
            s1 = q;
        return s1;
    }

    public final String q()
    {
        String s1;
        if(r == null)
            s1 = "";
        else
            s1 = r;
        return s1;
    }

    public final int r()
    {
        return s;
    }

    private String a;
    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private long j;
    private long k;
    private long l;
    private int m;
    private int n;
    private int o;
    private int p;
    private String q;
    private String r;
    private int s;
    private int t;
    private String u;
    private String v;
    private int w;
}

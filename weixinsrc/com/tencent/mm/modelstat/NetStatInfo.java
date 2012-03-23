// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelstat;

import android.content.ContentValues;
import android.database.Cursor;

public class NetStatInfo
{

    public NetStatInfo()
    {
        a = -2;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        m = 0;
        n = 0;
        o = 0;
        p = 0;
        q = 0;
        r = 0;
        s = 0;
        t = 0;
        u = 0;
        v = 0;
        w = 0;
        x = 0;
        y = 0;
        z = 0;
        A = 0;
    }

    public final int A()
    {
        return y;
    }

    public final int B()
    {
        return z;
    }

    public final int C()
    {
        return A;
    }

    public final void a(int i1)
    {
        a = i1;
    }

    public final void a(Cursor cursor)
    {
        c = cursor.getInt(1);
        d = cursor.getInt(2);
        e = cursor.getInt(3);
        f = cursor.getInt(4);
        g = cursor.getInt(5);
        h = cursor.getInt(6);
        i = cursor.getInt(7);
        j = cursor.getInt(8);
        k = cursor.getInt(9);
        l = cursor.getInt(10);
        m = cursor.getInt(11);
        n = cursor.getInt(12);
        o = cursor.getInt(13);
        p = cursor.getInt(14);
        q = cursor.getInt(15);
        r = cursor.getInt(16);
        s = cursor.getInt(17);
        t = cursor.getInt(18);
        u = cursor.getInt(19);
        v = cursor.getInt(20);
        w = cursor.getInt(21);
        x = cursor.getInt(22);
        y = cursor.getInt(23);
        z = cursor.getInt(24);
        A = cursor.getInt(25);
    }

    public final boolean a()
    {
        boolean flag;
        if(l > 4096 || m > 4096 || x > 4096 || y > 4096)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean a(NetStatInfo netstatinfo)
    {
        a = 1 | netstatinfo.a;
        d = d + netstatinfo.e;
        e = e + netstatinfo.e;
        f = f + netstatinfo.g;
        g = g + netstatinfo.g;
        h = h + netstatinfo.h;
        i = i + netstatinfo.i;
        j = j + netstatinfo.j;
        k = k + netstatinfo.k;
        l = l + netstatinfo.l;
        m = m + netstatinfo.m;
        n = n + netstatinfo.n;
        o = o + netstatinfo.o;
        p = p + netstatinfo.q;
        q = q + netstatinfo.q;
        r = r + netstatinfo.s;
        s = s + netstatinfo.s;
        t = t + netstatinfo.t;
        u = u + netstatinfo.u;
        v = v + netstatinfo.v;
        w = w + netstatinfo.w;
        x = x + netstatinfo.x;
        y = y + netstatinfo.y;
        z = z + netstatinfo.z;
        A = A + netstatinfo.A;
        return a();
    }

    public final NetStatInfo b()
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        m = 0;
        n = 0;
        o = 0;
        p = 0;
        q = 0;
        r = 0;
        s = 0;
        t = 0;
        u = 0;
        v = 0;
        w = 0;
        x = 0;
        y = 0;
        z = 0;
        A = 0;
        return this;
    }

    public final void b(int i1)
    {
        c = i1;
    }

    public final int c()
    {
        return a;
    }

    public final void c(int i1)
    {
        d = i1;
    }

    public final ContentValues d()
    {
        ContentValues contentvalues = new ContentValues();
        if((2 & a) != 0)
            contentvalues.put("peroid", Integer.valueOf(c));
        if((4 & a) != 0)
            contentvalues.put("textCountIn", Integer.valueOf(d));
        if((8 & a) != 0)
            contentvalues.put("textBytesIn", Integer.valueOf(e));
        if((0x10 & a) != 0)
            contentvalues.put("imageCountIn", Integer.valueOf(f));
        if((0x20 & a) != 0)
            contentvalues.put("imageBytesIn", Integer.valueOf(g));
        if((0x40 & a) != 0)
            contentvalues.put("voiceCountIn", Integer.valueOf(h));
        if((0x80 & a) != 0)
            contentvalues.put("voiceBytesIn", Integer.valueOf(i));
        if((0x100 & a) != 0)
            contentvalues.put("videoCountIn", Integer.valueOf(j));
        if((0x200 & a) != 0)
            contentvalues.put("videoBytesIn", Integer.valueOf(k));
        if((0x400 & a) != 0)
            contentvalues.put("mobileBytesIn", Integer.valueOf(l));
        if((0x800 & a) != 0)
            contentvalues.put("wifiBytesIn", Integer.valueOf(m));
        if((0x1000 & a) != 0)
            contentvalues.put("sysMobileBytesIn", Integer.valueOf(n));
        if((0x2000 & a) != 0)
            contentvalues.put("sysWifiBytesIn", Integer.valueOf(o));
        if((0x4000 & a) != 0)
            contentvalues.put("textCountOut", Integer.valueOf(p));
        if((0x8000 & a) != 0)
            contentvalues.put("textBytesOut", Integer.valueOf(q));
        if((0x10000 & a) != 0)
            contentvalues.put("imageCountOut", Integer.valueOf(r));
        if((0x20000 & a) != 0)
            contentvalues.put("imageBytesOut", Integer.valueOf(s));
        if((0x40000 & a) != 0)
            contentvalues.put("voiceCountOut", Integer.valueOf(t));
        if((0x80000 & a) != 0)
            contentvalues.put("voiceBytesOut", Integer.valueOf(u));
        if((0x100000 & a) != 0)
            contentvalues.put("videoCountOut", Integer.valueOf(v));
        if((0x200000 & a) != 0)
            contentvalues.put("videoBytesOut", Integer.valueOf(w));
        if((0x400000 & a) != 0)
            contentvalues.put("mobileBytesOut", Integer.valueOf(x));
        if((0x800000 & a) != 0)
            contentvalues.put("wifiBytesOut", Integer.valueOf(y));
        if((0x1000000 & a) != 0)
            contentvalues.put("sysMobileBytesOut", Integer.valueOf(z));
        if((0x2000000 & a) != 0)
            contentvalues.put("sysWifiBytesOut", Integer.valueOf(A));
        return contentvalues;
    }

    public final void d(int i1)
    {
        e = i1;
    }

    public final int e()
    {
        return c;
    }

    public final void e(int i1)
    {
        f = i1;
    }

    public final int f()
    {
        return d;
    }

    public final void f(int i1)
    {
        g = i1;
    }

    public final int g()
    {
        return e;
    }

    public final void g(int i1)
    {
        h = i1;
    }

    public final int h()
    {
        return f;
    }

    public final void h(int i1)
    {
        i = i1;
    }

    public final int i()
    {
        return g;
    }

    public final void i(int i1)
    {
        j = i1;
    }

    public final int j()
    {
        return h;
    }

    public final void j(int i1)
    {
        k = i1;
    }

    public final int k()
    {
        return i;
    }

    public final void k(int i1)
    {
        l = i1;
    }

    public final int l()
    {
        return j;
    }

    public final void l(int i1)
    {
        m = i1;
    }

    public final int m()
    {
        return k;
    }

    public final void m(int i1)
    {
        n = i1;
    }

    public final int n()
    {
        return l;
    }

    public final void n(int i1)
    {
        o = i1;
    }

    public final int o()
    {
        return m;
    }

    public final void o(int i1)
    {
        p = i1;
    }

    public final int p()
    {
        return n;
    }

    public final void p(int i1)
    {
        q = i1;
    }

    public final int q()
    {
        return o;
    }

    public final void q(int i1)
    {
        r = i1;
    }

    public final int r()
    {
        return p;
    }

    public final void r(int i1)
    {
        s = i1;
    }

    public final int s()
    {
        return q;
    }

    public final void s(int i1)
    {
        t = i1;
    }

    public final int t()
    {
        return r;
    }

    public final void t(int i1)
    {
        u = i1;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("NetStatInfo: \n").append("|- text in=").append(d).append("/").append(e).append("B, out=").append(p).append("/").append(q).append("B\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("|- image in=").append(f).append("/").append(g).append("B, out=").append(r).append("/").append(s).append("B\n").toString();
        String s3 = (new StringBuilder()).append(s2).append("|- voice in=").append(h).append("/").append(i).append("B, out=").append(t).append("/").append(u).append("B\n").toString();
        String s4 = (new StringBuilder()).append(s3).append("|- video in=").append(j).append("/").append(k).append("B, out=").append(v).append("/").append(w).append("B\n").toString();
        String s5 = (new StringBuilder()).append(s4).append("|- mobile in=").append(l).append("B/").append(n).append("B, out=").append(x).append("B/").append(z).append("B\n").toString();
        return (new StringBuilder()).append(s5).append("`- wifi in=").append(m).append("B/").append(o).append("B, out=").append(y).append("B/").append(A).append("B\n").toString();
    }

    public final int u()
    {
        return s;
    }

    public final void u(int i1)
    {
        v = i1;
    }

    public final int v()
    {
        return t;
    }

    public final void v(int i1)
    {
        w = i1;
    }

    public final int w()
    {
        return u;
    }

    public final void w(int i1)
    {
        x = i1;
    }

    public final int x()
    {
        return v;
    }

    public final void x(int i1)
    {
        y = i1;
    }

    public final int y()
    {
        return w;
    }

    public final void y(int i1)
    {
        z = i1;
    }

    public final int z()
    {
        return x;
    }

    public final void z(int i1)
    {
        A = i1;
    }

    private int A;
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;
}

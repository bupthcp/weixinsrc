// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import java.util.HashMap;
import java.util.Map;

public class Contact
{

    public Contact()
    {
        K = -2L;
        e = "";
        f = "";
        g = "";
        h = "";
        i = "";
        j = 0;
        k = "";
        l = "";
        m = 0;
        n = 0;
        o = "";
        p = "";
        q = "";
        s = "";
        r = "";
        t = "";
        u = 1;
        v = 0;
        w = 0;
        x = "";
        y = "";
        z = "";
        A = 0;
        H = 0;
        B = "";
        C = "";
        D = 0;
        E = "";
        J = 0L;
        I = "";
    }

    public Contact(String s1)
    {
        this();
        e = s1;
    }

    public static void a(Map map)
    {
        L = map;
    }

    private static boolean a(char c1)
    {
        boolean flag;
        if(c1 >= 'A' && c1 <= 'Z' || c1 >= 'a' && c1 <= 'z')
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(int i1)
    {
        boolean flag;
        if((i1 & 1) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static String g(String s1)
    {
        if(s1 != null) goto _L2; else goto _L1
_L1:
        s1 = null;
_L4:
        return s1;
_L2:
        if(s1.toLowerCase().endsWith("@t.qq.com"))
            s1 = (new StringBuilder()).append("@").append(s1.replace("@t.qq.com", "")).toString();
        else
        if(s1.toLowerCase().endsWith("@qqim"))
            s1 = s1.replace("@qqim", "");
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final String A()
    {
        String s1;
        if(o != null && !o.trim().equals(""))
            s1 = o;
        else
            s1 = z();
        return s1;
    }

    public final String B()
    {
        if(Util.i(i)) goto _L2; else goto _L1
_L1:
        String s1 = i;
_L4:
        return s1;
_L2:
        s1 = g(e);
        if(s1 == null || s1.length() == 0)
            s1 = e;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int C()
    {
        return n;
    }

    public final String D()
    {
        return o;
    }

    public final String E()
    {
        return p;
    }

    public final String F()
    {
        return q;
    }

    public final String G()
    {
        return t;
    }

    public final int H()
    {
        return u;
    }

    public final int I()
    {
        return v;
    }

    public final int J()
    {
        return w;
    }

    public final String K()
    {
        return x;
    }

    public final String L()
    {
        return y;
    }

    public final String M()
    {
        return z;
    }

    public final int N()
    {
        return A;
    }

    public final String O()
    {
        return B;
    }

    public final String P()
    {
        return F;
    }

    public final int Q()
    {
        return G;
    }

    public final int R()
    {
        return H;
    }

    public final String S()
    {
        return C;
    }

    public final int T()
    {
        return D;
    }

    public final String U()
    {
        return E;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((2L & K) != 0L)
            contentvalues.put("sex", Integer.valueOf(b));
        if((4L & K) != 0L)
            contentvalues.put("type", Integer.valueOf(c));
        if((8L & K) != 0L)
            contentvalues.put("showHead", Integer.valueOf(d));
        if((16L & K) != 0L)
            contentvalues.put("username", e);
        if((32L & K) != 0L)
            contentvalues.put("nickname", t());
        if((64L & K) != 0L)
            contentvalues.put("pyInitial", w());
        if((128L & K) != 0L)
            contentvalues.put("quanPin", x());
        if((256L & K) != 0L)
            contentvalues.put("reserved", i);
        return contentvalues;
    }

    public final void a(long l1)
    {
        K = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getInt(0);
        b = cursor.getInt(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
        i = cursor.getString(8);
        j = cursor.getInt(10);
        k = cursor.getString(11);
        l = cursor.getString(12);
        m = cursor.getInt(13);
        n = cursor.getInt(14);
        o = cursor.getString(15);
        p = cursor.getString(16);
        q = cursor.getString(17);
        r = cursor.getString(18);
        s = cursor.getString(19);
        t = cursor.getString(20);
        u = cursor.getInt(21);
        v = cursor.getInt(22);
        w = cursor.getInt(23);
        x = cursor.getString(26);
        y = cursor.getString(27);
        z = cursor.getString(28);
        H = cursor.getInt(25);
        A = cursor.getInt(24);
        B = cursor.getString(29);
        C = cursor.getString(30);
        D = cursor.getInt(31);
        E = cursor.getString(32);
    }

    public final void a(String s1)
    {
        e = s1;
    }

    public final ContentValues b()
    {
        ContentValues contentvalues = new ContentValues();
        if((512L & K) != 0L)
            contentvalues.put("username", e);
        if((1024L & K) != 0L)
            contentvalues.put("Uin", Integer.valueOf(j));
        if((2048L & K) != 0L)
            contentvalues.put("Email", k);
        if((4096L & K) != 0L)
            contentvalues.put("Mobile", l);
        if((8192L & K) != 0L)
            contentvalues.put("ShowFlag", Integer.valueOf(m));
        if((16384L & K) != 0L)
            contentvalues.put("ConType", Integer.valueOf(n));
        if((32768L & K) != 0L)
            contentvalues.put("ConRemark", o);
        if((0x10000L & K) != 0L)
            contentvalues.put("ConRemark_PYShort", p);
        if((0x20000L & K) != 0L)
            contentvalues.put("ConRemark_PYFull", q);
        if((0x40000L & K) != 0L)
            contentvalues.put("ConQQMBlog", s);
        if((0x80000L & K) != 0L)
            contentvalues.put("ConSMBlog", r);
        if((0x100000L & K) != 0L)
            contentvalues.put("DomainList", t);
        if((0x200000L & K) != 0L)
            contentvalues.put("reserved1", Integer.valueOf(u));
        if((0x400000L & K) != 0L)
            contentvalues.put("reserved2", Integer.valueOf(v));
        if((0x800000L & K) != 0L)
            contentvalues.put("reserved3", Integer.valueOf(w));
        if((0x4000000L & K) != 0L)
            contentvalues.put("reserved6", x);
        if((0x2000000L & K) != 0L)
            contentvalues.put("reserved5", Integer.valueOf(H));
        if((0x8000000L & K) != 0L)
            contentvalues.put("reserved7", y);
        if((0x10000000L & K) != 0L)
            contentvalues.put("reserved8", z);
        if((0x1000000L & K) != 0L)
            contentvalues.put("reserved4", Integer.valueOf(A));
        if((0x20000000L & K) != 0L)
            contentvalues.put("reserved9", B);
        if((0x40000000L & K) != 0L)
            contentvalues.put("reserved10", C);
        if((0xffffffff80000000L & K) != 0L)
            contentvalues.put("weiboflag", Integer.valueOf(D));
        if((0x100000000L & K) != 0L)
            contentvalues.put("weibonickname", E);
        return contentvalues;
    }

    public final void b(int i1)
    {
        a = i1;
    }

    public final void b(long l1)
    {
        J = l1;
    }

    public final void b(String s1)
    {
        f = s1;
    }

    public final long c()
    {
        return K;
    }

    public final void c(int i1)
    {
        b = i1;
    }

    public final void c(String s1)
    {
        I = s1;
    }

    public final int d()
    {
        int i1 = 32;
        if(p != null && !p.equals(""))
            i1 = p.charAt(0);
        else
        if(q != null && !q.equals(""))
            i1 = q.charAt(0);
        else
        if(g != null && !g.equals(""))
            i1 = g.charAt(0);
        else
        if(h != null && !h.equals(""))
            i1 = h.charAt(0);
        else
        if(f != null && !f.equals("") && a(f.charAt(0)))
            i1 = f.charAt(0);
        else
        if(e != null && !e.equals("") && a(e.charAt(0)))
            i1 = e.charAt(0);
        if(i1 >= 97 && i1 <= 122)
            i1 += -32;
        else
        if(i1 != 64 && (i1 < 65 || i1 > 90))
            i1 = 123;
        return i1;
    }

    public final void d(int i1)
    {
        c = i1;
    }

    public final void d(String s1)
    {
        g = s1;
    }

    public final void e()
    {
        c = 4 | c;
    }

    public final void e(int i1)
    {
        d = i1;
    }

    public final void e(String s1)
    {
        h = s1;
    }

    public final void f()
    {
        c = 1 | c;
    }

    public final void f(int i1)
    {
        w = i1;
    }

    public final void f(String s1)
    {
        i = s1;
    }

    public final void g()
    {
        c = -2 & c;
    }

    public final void g(int i1)
    {
        n = i1;
    }

    public final void h()
    {
        c = 8 | c;
    }

    public final void h(int i1)
    {
        u = i1;
    }

    public final void h(String s1)
    {
        x = s1;
    }

    public final void i()
    {
        c = -9 & c;
    }

    public final void i(int i1)
    {
        v = i1;
    }

    public final void i(String s1)
    {
        y = s1;
    }

    public final void j()
    {
        c = 2 | c;
    }

    public final void j(int i1)
    {
        A = i1;
    }

    public final void j(String s1)
    {
        z = s1;
    }

    public final void k()
    {
        c = -3 & c;
    }

    public final void k(int i1)
    {
        G = i1;
    }

    public final void k(String s1)
    {
        o = s1;
    }

    public final void l(int i1)
    {
        H = i1;
    }

    public final void l(String s1)
    {
        p = s1;
    }

    public final boolean l()
    {
        return a(c);
    }

    public final void m(int i1)
    {
        D = i1;
    }

    public final void m(String s1)
    {
        q = s1;
    }

    public final boolean m()
    {
        boolean flag;
        if((8 & c) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void n(String s1)
    {
        t = s1;
    }

    public final boolean n()
    {
        boolean flag;
        if((0x10 & c) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int o()
    {
        return a;
    }

    public final void o(String s1)
    {
        B = s1;
    }

    public final int p()
    {
        return b;
    }

    public final void p(String s1)
    {
        F = s1;
    }

    public final int q()
    {
        return c;
    }

    public final void q(String s1)
    {
        C = s1;
    }

    public final int r()
    {
        return d;
    }

    public final void r(String s1)
    {
        E = s1;
    }

    public final String s()
    {
        return e;
    }

    public final String t()
    {
        String s1;
        if(f == null || f.length() < 0)
            s1 = e;
        else
            s1 = f;
        return s1;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("Contact:").append(" ContactID:").append(a).toString();
        String s2 = (new StringBuilder()).append(s1).append(" sex:").append(b).toString();
        String s3 = (new StringBuilder()).append(s2).append(" type:").append(c).toString();
        String s4 = (new StringBuilder()).append(s3).append(" showHead:").append(d).toString();
        String s5 = (new StringBuilder()).append(s4).append(" username:[").append(e).append("]").toString();
        String s6 = (new StringBuilder()).append(s5).append(" nickname:[").append(f).append("]").toString();
        String s7 = (new StringBuilder()).append(s6).append(" pyinitial:[").append(g).append("]").toString();
        String s8 = (new StringBuilder()).append(s7).append(" quanpin:[").append(h).append("]").toString();
        String s9 = (new StringBuilder()).append(s8).append(" rsvd:[").append(i).append("]").toString();
        String s10 = (new StringBuilder()).append(s9).append(" EXT BEGIN: ").toString();
        String s11 = (new StringBuilder()).append(s10).append(" uin:").append(j).toString();
        String s12 = (new StringBuilder()).append(s11).append(" email:[").append(k).append("]").toString();
        String s13 = (new StringBuilder()).append(s12).append(" showFlag:").append(m).toString();
        String s14 = (new StringBuilder()).append(s13).append(" contype:").append(n).toString();
        String s15 = (new StringBuilder()).append(s14).append(" conremark:[").append(o).append("]").toString();
        String s16 = (new StringBuilder()).append(s15).append(" conremark_pyshort:[").append(p).append("]").toString();
        String s17 = (new StringBuilder()).append(s16).append(" conremark_pyfull:[").append(q).append("]").toString();
        String s18 = (new StringBuilder()).append(s17).append(" conqqmblog:[").append(r).append("]").toString();
        String s19 = (new StringBuilder()).append(s18).append(" consmblog:[").append(s).append("]").toString();
        String s20 = (new StringBuilder()).append(s19).append(" domainlist:[").append(t).append("]").toString();
        String s21 = (new StringBuilder()).append(s20).append(" rsvd1:").append(u).toString();
        return (new StringBuilder()).append(s21).append(" rsvd2:").append(v).toString();
    }

    public final String u()
    {
        return I;
    }

    public final long v()
    {
        return J;
    }

    public final String w()
    {
        String s1;
        if(g == null || g.length() < 0)
            s1 = x();
        else
            s1 = g;
        return s1;
    }

    public final String x()
    {
        String s1;
        if(h == null || h.length() < 0)
            s1 = t();
        else
            s1 = h;
        return s1;
    }

    public final String y()
    {
        return i;
    }

    public final String z()
    {
        String s1 = (String)L.get(e);
        if(s1 == null)
            if(f == null || f.length() <= 0)
                s1 = B();
            else
                s1 = f;
        return s1;
    }

    private static Map L = new HashMap();
    private int A;
    private String B;
    private String C;
    private int D;
    private String E;
    private String F;
    private int G;
    private int H;
    private String I;
    private long J;
    private long K;
    private int a;
    private int b;
    private int c;
    private int d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private int j;
    private String k;
    private String l;
    private int m;
    private int n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private int u;
    private int v;
    private int w;
    private String x;
    private String y;
    private String z;

}

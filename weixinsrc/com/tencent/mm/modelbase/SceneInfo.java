// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;


public class SceneInfo
{

    public SceneInfo(int i)
    {
        e = "unknown";
        a(-1L);
        b(-1L);
        d = -1L;
        a = i;
    }

    private long c()
    {
        return c - b;
    }

    public final String a()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(a).append("_").append(b / 1000L).append("_").append(c()).append("_");
        long l;
        if(d == -1L)
            l = 0L;
        else
            l = d - b;
        return stringbuilder.append(l / 1000L).append("_").append(e).append("_").append(f).append("_").append(g).append("_").append(h).toString();
    }

    public final void a(int i, int j)
    {
        f = i;
        g = j;
    }

    public final void a(long l)
    {
        b = l;
        c = -1L;
    }

    public final void a(String s)
    {
        e = s;
    }

    public final void b(long l)
    {
        if(c <= 0L)
            c = l;
    }

    public final boolean b()
    {
        boolean flag;
        if(d <= 0L || b <= 0L || c <= 0L)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void c(long l)
    {
        d = l;
    }

    public final void d(long l)
    {
        h = l;
    }

    public String toString()
    {
        return (new StringBuilder()).append("stTime(ms)=").append(b).append(", edTime(ms)=").append(c).append(", cost(ms)=").append(c()).toString();
    }

    private int a;
    private long b;
    private long c;
    private long d;
    private String e;
    private int f;
    private int g;
    private long h;
}

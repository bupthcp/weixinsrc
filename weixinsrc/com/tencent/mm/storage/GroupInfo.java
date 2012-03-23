// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;


public class GroupInfo
{

    public GroupInfo()
    {
        a = "";
        b = "";
        c = "";
        d = "";
        e = true;
    }

    public GroupInfo(String s, String s1, String s2, String s3, boolean flag, boolean flag1)
    {
        a = s;
        b = s1;
        c = s2;
        d = s3;
        e = flag;
        f = flag1;
    }

    public final String a()
    {
        String s;
        if(a == null)
            s = "";
        else
            s = a;
        return s;
    }

    public final String b()
    {
        String s;
        if(b == null)
            s = "";
        else
            s = b;
        return s;
    }

    public final String c()
    {
        String s;
        if(c == null)
            s = "";
        else
            s = c;
        return s;
    }

    public final String d()
    {
        String s;
        if(d == null)
            s = "";
        else
            s = d;
        return s;
    }

    public final boolean e()
    {
        return e;
    }

    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final boolean e;
    private boolean f;
}

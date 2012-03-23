// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.a;


final class b extends Enum
{

    private b(String s, int i)
    {
        super(s, i);
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/tencent/a/a/b, s);
    }

    public static b[] values()
    {
        b ab[] = c;
        int i = ab.length;
        b ab1[] = new b[i];
        System.arraycopy(ab, 0, ab1, 0, i);
        return ab1;
    }

    public static final b a;
    public static final b b;
    private static final b c[];

    static 
    {
        a = new b("MOTO_XT800", 0);
        b = new b("NOT_SUPPORT", 1);
        b ab[] = new b[2];
        ab[0] = a;
        ab[1] = b;
        c = ab;
    }
}

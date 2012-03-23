// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.a;


public final class c extends Enum
{

    private c(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/tencent/a/a/c, s);
    }

    public static c[] values()
    {
        c ac[] = e;
        int i = ac.length;
        c ac1[] = new c[i];
        System.arraycopy(ac, 0, ac1, 0, i);
        return ac1;
    }

    public static final c a;
    public static final c b;
    public static final c c;
    private static final c e[];
    private String d;

    static 
    {
        a = new c("GSM", 0, "GSM");
        b = new c("CDMA", 1, "CDMA");
        c = new c("UNKNOWN", 2, "UNKNOWN");
        c ac[] = new c[3];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        e = ac;
    }
}

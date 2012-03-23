// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


public class UIN extends Number
{

    public UIN(int i)
    {
        a = 0;
        a = i;
    }

    public UIN(long l)
    {
        a = 0;
        a = (int)(-1L & l);
    }

    public static int a(String s)
    {
        int j = (new UIN(Long.valueOf(s).longValue())).intValue();
        int i = j;
_L2:
        return i;
        Exception exception;
        exception;
        i = 0;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public double doubleValue()
    {
        return 0D + (double)(0L | (long)a);
    }

    public float floatValue()
    {
        return (float)(0D + (double)(0L | (long)a));
    }

    public int intValue()
    {
        return a;
    }

    public long longValue()
    {
        return 0xffffffffL & (long)a;
    }

    public String toString()
    {
        long l = 0xffffffffL & (long)a;
        return (new StringBuilder()).append("").append(l).toString();
    }

    private int a;
}

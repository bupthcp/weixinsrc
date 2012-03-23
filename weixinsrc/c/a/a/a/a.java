// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a.a;


public final class a
{

    private a()
    {
    }

    public static int a(int i)
    {
        return i & 7;
    }

    public static int a(int i, int j)
    {
        return j | i << 3;
    }

    public static int b(int i)
    {
        return i >>> 3;
    }

    private static int a = 16;
    private static int b = 26;

}

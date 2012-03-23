// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


public final class TypeTransform
{

    private TypeTransform()
    {
    }

    public static int a(byte abyte0[])
    {
        return a(abyte0, 0);
    }

    public static int a(byte abyte0[], int i)
    {
        return (0xff & abyte0[i]) << 24 | (0xff & abyte0[i + 1]) << 16 | (0xff & abyte0[i + 2]) << 8 | (0xff & abyte0[i + 3]) << 0;
    }

    public static byte[] a(int i)
    {
        byte abyte0[] = new byte[4];
        for(int j = 0; j < 4; j++)
            abyte0[j] = (byte)(0xff & i >> j * 8);

        return abyte0;
    }

    public static byte[] a(long l)
    {
        byte abyte0[] = new byte[8];
        for(int i = 0; i < 8; i++)
            abyte0[i] = (byte)(int)(l >> i * 8);

        return b(abyte0);
    }

    public static byte[] b(int i)
    {
        return b(a(i));
    }

    private static byte[] b(byte abyte0[])
    {
        int i = abyte0.length;
        byte abyte1[] = new byte[i];
        for(int j = 0; j < i; j++)
            abyte1[j] = abyte0[(i + -1) - j];

        return abyte1;
    }
}

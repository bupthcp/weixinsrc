// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.a.a;

import java.nio.ByteBuffer;

public final class c
{

    public c()
    {
    }

    public static int a(Comparable comparable, Comparable comparable1)
    {
        return comparable.compareTo(comparable1);
    }

    public static int a(Object obj)
    {
        return obj.hashCode();
    }

    public static boolean a(byte byte0, byte byte1)
    {
        boolean flag;
        if(byte0 == byte1)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(int i, int j)
    {
        boolean flag;
        if(i == j)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(Object obj, Object obj1)
    {
        return obj.equals(obj1);
    }

    public static boolean a(short word0, short word1)
    {
        boolean flag;
        if(word0 == word1)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(boolean flag, boolean flag1)
    {
        boolean flag2;
        if(flag == flag1)
            flag2 = true;
        else
            flag2 = false;
        return flag2;
    }

    public static byte[] a(ByteBuffer bytebuffer)
    {
        byte abyte0[] = new byte[bytebuffer.position()];
        System.arraycopy(bytebuffer.array(), 0, abyte0, 0, abyte0.length);
        return abyte0;
    }

    private static final byte a[];
    private static final byte b[];

    static 
    {
        byte abyte0[] = new byte[16];
        abyte0[0] = 48;
        abyte0[1] = 49;
        abyte0[2] = 50;
        abyte0[3] = 51;
        abyte0[4] = 52;
        abyte0[5] = 53;
        abyte0[6] = 54;
        abyte0[7] = 55;
        abyte0[8] = 56;
        abyte0[9] = 57;
        abyte0[10] = 65;
        abyte0[11] = 66;
        abyte0[12] = 67;
        abyte0[13] = 68;
        abyte0[14] = 69;
        abyte0[15] = 70;
        byte abyte1[] = new byte[256];
        byte abyte2[] = new byte[256];
        for(int i = 0; i < 256; i++)
        {
            abyte1[i] = abyte0[i >>> 4];
            abyte2[i] = abyte0[i & 0xf];
        }

        a = abyte1;
        b = abyte2;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.b.a;


public final class b
{

    public b()
    {
    }

    public static String a(byte abyte0[])
    {
        String s;
        if(abyte0 == null || abyte0.length == 0)
        {
            s = null;
        } else
        {
            char ac[] = new char[2 * abyte0.length];
            for(int i = 0; i < abyte0.length; i++)
            {
                byte byte0 = abyte0[i];
                ac[1 + i * 2] = a[byte0 & 0xf];
                byte byte1 = (byte)(byte0 >>> 4);
                ac[0 + i * 2] = a[byte1 & 0xf];
            }

            s = new String(ac);
        }
        return s;
    }

    private static final char a[];
    private static byte b[] = new byte[0];

    static 
    {
        char ac[] = new char[16];
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'A';
        ac[11] = 'B';
        ac[12] = 'C';
        ac[13] = 'D';
        ac[14] = 'E';
        ac[15] = 'F';
        a = ac;
    }
}

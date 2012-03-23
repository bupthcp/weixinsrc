// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.security.MessageDigest;

public class MD5
{

    public MD5()
    {
    }

    public static final String a(byte abyte0[])
    {
        int i = 0;
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
        ac[10] = 'a';
        ac[11] = 'b';
        ac[12] = 'c';
        ac[13] = 'd';
        ac[14] = 'e';
        ac[15] = 'f';
        String s;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            byte abyte1[] = messagedigest.digest();
            int j = abyte1.length;
            char ac1[] = new char[j * 2];
            int k = i;
            for(; i < j; i++)
            {
                byte byte0 = abyte1[i];
                int l = k + 1;
                ac1[k] = ac[0xf & byte0 >>> 4];
                k = l + 1;
                ac1[l] = ac[byte0 & 0xf];
            }

            s = new String(ac1);
        }
        catch(Exception exception)
        {
            s = null;
        }
        return s;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util
{

    public MD5Util()
    {
    }

    public static byte[] encrypt(String s)
    {
        return encrypt(s.getBytes());
    }

    public static byte[] encrypt(byte abyte0[])
    {
        byte abyte2[];
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        abyte2 = messagedigest.digest();
        byte abyte1[] = abyte2;
_L2:
        return abyte1;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        abyte1 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static String encrypt_bytes(byte abyte0[])
    {
        return toHexString(encrypt(abyte0));
    }

    public static String encrypt_string(String s)
    {
        return toHexString(encrypt(s));
    }

    public static String toHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(3 * abyte0.length);
        int i = abyte0.length;
        int j = 0;
        do
        {
            if(j >= i)
                return stringbuilder.toString().toUpperCase();
            int k = 0xff & abyte0[j];
            stringbuilder.append(HEXDIGITS[k >> 4]);
            stringbuilder.append(HEXDIGITS[k & 0xf]);
            j++;
        } while(true);
    }

    private static final char HEXDIGITS[] = "0123456789abcdef".toCharArray();

}

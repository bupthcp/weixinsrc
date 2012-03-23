// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class XxteaCryptor
{

    private XxteaCryptor()
    {
    }

    public static int EndianSwap(int i)
    {
        return i << 24 | (0xff00 & i) << 8 | (0xff0000 & i) >>> 8 | i >>> 24;
    }

    public static byte[] MakePassword(byte abyte0[])
    {
        if(abyte0 == null || abyte0.length <= 16)
            break MISSING_BLOCK_LABEL_29;
        byte abyte1[];
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        abyte1 = messagedigest.digest();
        abyte0 = abyte1;
_L2:
        return abyte0;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        abyte0 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] decrypt(byte abyte0[], byte abyte1[])
    {
        byte abyte2[];
        abyte2 = MakePassword(abyte1);
        if(abyte0 != null && abyte2 != null && abyte0.length != 0)
        {
label0:
            {
                if(abyte0.length % 4 == 0 && abyte0.length >= 8)
                    break label0;
                abyte0 = null;
            }
        }
_L5:
        return abyte0;
        int ai[];
        int ai1[];
        int j;
        int k;
        int i1;
        int j1;
        ai = new int[abyte0.length >>> 2];
        toIntArray(abyte0, ai);
        int i;
        int l;
        if(abyte2.length % 4 == 0)
            i = abyte2.length >>> 2;
        else
            i = 1 + (abyte2.length >>> 2);
        if(i < 4)
            i = 4;
        ai1 = new int[i];
        j = 0;
_L6:
        if(j < i) goto _L2; else goto _L1
_L1:
        toIntArray(abyte2, ai1);
        k = -1 + ai.length;
        l = ai[0];
        i1 = 0x9e3779b9 * (6 + 52 / (k + 1));
        j1 = l;
_L7:
        if(i1 != 0) goto _L4; else goto _L3
_L3:
        int i3 = ai[-1 + ai.length];
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        if(i3 < 0 || i3 > -1 + ai.length << 2)
        {
            abyte0 = null;
        } else
        {
            abyte0 = new byte[i3];
            toByteArray(ai, -1 + ai.length, abyte0);
        }
          goto _L5
_L2:
        ai1[j] = 0;
        j++;
          goto _L6
_L4:
        k1 = 3 & i1 >>> 2;
        l1 = j1;
        i2 = k;
_L8:
label1:
        {
            if(i2 > 0)
                break label1;
            k2 = ai[k];
            l2 = ai[0] - ((k2 >>> 5 ^ l1 << 2) + (l1 >>> 3 ^ k2 << 4) ^ (l1 ^ i1) + (k2 ^ ai1[k1 ^ i2 & 3]));
            ai[0] = l2;
            i1 -= 31161;
            j1 = l2;
        }
          goto _L7
        j2 = ai[i2 + -1];
        l1 = ai[i2] - ((j2 >>> 5 ^ l1 << 2) + (l1 >>> 3 ^ j2 << 4) ^ (l1 ^ i1) + (j2 ^ ai1[k1 ^ i2 & 3]));
        ai[i2] = l1;
        i2--;
          goto _L8
    }

    public static byte[] encrypt(byte abyte0[], byte abyte1[])
    {
        byte abyte2[] = MakePassword(abyte1);
        if(abyte0 != null && abyte2 != null && abyte0.length != 0) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        int ai[];
        int ai1[];
        int k;
        int l;
        int j1;
        int k1;
        int l1;
        int i2;
        int i;
        int j;
        int i1;
        if(abyte0.length % 4 == 0)
            i = 1 + (abyte0.length >>> 2);
        else
            i = 2 + (abyte0.length >>> 2);
        ai = new int[i];
        toIntArray(abyte0, ai);
        ai[i + -1] = abyte0.length;
        if(abyte2.length % 4 == 0)
            j = abyte2.length >>> 2;
        else
            j = 1 + (abyte2.length >>> 2);
        if(j < 4)
            j = 4;
        ai1 = new int[j];
        k = 0;
_L7:
        if(k < j) goto _L4; else goto _L3
_L3:
        toIntArray(abyte2, ai1);
        l = -1 + ai.length;
        i1 = ai[l];
        j1 = 6 + 52 / (l + 1);
        k1 = 0;
        l1 = i1;
_L8:
        i2 = j1 + -1;
        if(j1 > 0) goto _L6; else goto _L5
_L5:
        abyte0 = new byte[ai.length << 2];
        toByteArray(ai, ai.length, abyte0);
          goto _L1
_L4:
        ai1[k] = 0;
        k++;
          goto _L7
_L6:
        int j2;
        int k2;
        int l2;
        j2 = 0x9e3779b9 + k1;
        k2 = 3 & j2 >>> 2;
        l2 = 0;
_L9:
label0:
        {
            if(l2 < l)
                break label0;
            int j3 = ai[0];
            int k3 = ai[l] + ((l1 >>> 5 ^ j3 << 2) + (j3 >>> 3 ^ l1 << 4) ^ (j3 ^ j2) + (l1 ^ ai1[k2 ^ l2 & 3]));
            ai[l] = k3;
            l1 = k3;
            k1 = j2;
            j1 = i2;
        }
          goto _L8
        int i3 = ai[l2 + 1];
        l1 = ai[l2] + ((l1 >>> 5 ^ i3 << 2) + (i3 >>> 3 ^ l1 << 4) ^ (i3 ^ j2) + (l1 ^ ai1[k2 ^ l2 & 3]));
        ai[l2] = l1;
        l2++;
          goto _L9
    }

    private static void toByteArray(int ai[], int i, byte abyte0[])
    {
        int j;
        int k;
        int l;
        j = 0;
        k = abyte0.length >> 2;
        if(k > i)
            k = i;
        l = j;
_L5:
        if(l < k) goto _L2; else goto _L1
_L1:
        if(i <= k || j >= abyte0.length) goto _L4; else goto _L3
_L3:
        int l1;
        int i2;
        l1 = j + 1;
        abyte0[j] = (byte)(0xff & ai[l]);
        i2 = 8;
_L6:
        if(i2 <= 24 && l1 < abyte0.length)
            break MISSING_BLOCK_LABEL_163;
_L4:
        return;
_L2:
        int i1 = j + 1;
        abyte0[j] = (byte)(0xff & ai[l]);
        int j1 = i1 + 1;
        abyte0[i1] = (byte)(0xff & ai[l] >>> 8);
        int k1 = j1 + 1;
        abyte0[j1] = (byte)(0xff & ai[l] >>> 16);
        j = k1 + 1;
        abyte0[k1] = (byte)(0xff & ai[l] >>> 24);
        l++;
          goto _L5
        int j2 = l1 + 1;
        abyte0[l1] = (byte)(0xff & ai[l] >>> i2);
        i2 += 8;
        l1 = j2;
          goto _L6
    }

    private static void toIntArray(byte abyte0[], int ai[])
    {
        int i;
        int j;
        int k;
        i = 0;
        j = abyte0.length >> 2;
        k = i;
_L5:
        if(k < j) goto _L2; else goto _L1
_L1:
        if(i >= abyte0.length) goto _L4; else goto _L3
_L3:
        int j2;
        int k2;
        j2 = i + 1;
        ai[k] = 0xff & abyte0[i];
        k2 = 8;
_L6:
        if(j2 < abyte0.length)
            break MISSING_BLOCK_LABEL_161;
_L4:
        return;
_L2:
        int l = i + 1;
        ai[k] = 0xff & abyte0[i];
        int i1 = ai[k];
        int j1 = l + 1;
        ai[k] = i1 | (0xff & abyte0[l]) << 8;
        int k1 = ai[k];
        int l1 = j1 + 1;
        ai[k] = k1 | (0xff & abyte0[j1]) << 16;
        int i2 = ai[k];
        i = l1 + 1;
        ai[k] = i2 | (0xff & abyte0[l1]) << 24;
        k++;
          goto _L5
        ai[k] = ai[k] | (0xff & abyte0[j2]) << k2;
        j2++;
        k2 += 8;
          goto _L6
    }
}

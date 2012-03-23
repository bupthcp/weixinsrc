// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import java.io.*;
import java.util.Random;

public class Cryptor
{

    public Cryptor()
    {
        header = true;
        random = new Random();
    }

    private byte[] decipher(byte abyte0[])
    {
        return decipher(abyte0, 0);
    }

    private byte[] decipher(byte abyte0[], int i)
    {
        int j = 16;
        long l;
        long l1;
        long l2;
        long l3;
        long l4;
        long l5;
        long l6;
        l = getUnsignedInt(abyte0, i, 4);
        l1 = getUnsignedInt(abyte0, i + 4, 4);
        l2 = getUnsignedInt(key, 0, 4);
        l3 = getUnsignedInt(key, 4, 4);
        l4 = getUnsignedInt(key, 8, 4);
        l5 = getUnsignedInt(key, 12, 4);
        l6 = 0xe3779b90L;
_L3:
        int k = j + -1;
        if(j > 0) goto _L2; else goto _L1
_L1:
        byte abyte2[];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(8);
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        dataoutputstream.writeInt((int)l);
        dataoutputstream.writeInt((int)l1);
        dataoutputstream.close();
        abyte2 = bytearrayoutputstream.toByteArray();
        byte abyte1[] = abyte2;
_L4:
        return abyte1;
_L2:
        l1 = 0xffffffffL & l1 - (l4 + (l << 4) ^ l + l6 ^ l5 + (l >>> 5));
        l = 0xffffffffL & l - (l2 + (l1 << 4) ^ l1 + l6 ^ l3 + (l1 >>> 5));
        l6 = 0xffffffffL & l6 - 0x9e3779b9L;
        j = k;
          goto _L3
        IOException ioexception;
        ioexception;
        abyte1 = null;
          goto _L4
    }

    private boolean decrypt8Bytes(byte abyte0[], int i, int j)
    {
        boolean flag = true;
        pos = 0;
        do
        {
label0:
            {
                {
                    if(pos < 8)
                        break label0;
                    prePlain = decipher(prePlain);
                    byte abyte1[];
                    int k;
                    if(prePlain == null)
                    {
                        flag = false;
                    } else
                    {
                        contextStart = 8 + contextStart;
                        crypt = 8 + crypt;
                        pos = 0;
                    }
                }
                return flag;
            }
            if(contextStart + pos >= j)
                break MISSING_BLOCK_LABEL_39;
            abyte1 = prePlain;
            k = pos;
            abyte1[k] = (byte)(abyte1[k] ^ abyte0[i + crypt + pos]);
            pos = 1 + pos;
        } while(true);
    }

    private byte[] encipher(byte abyte0[])
    {
        int i = 16;
        long l;
        long l1;
        long l2;
        long l3;
        long l4;
        long l5;
        long l6;
        l = getUnsignedInt(abyte0, 0, 4);
        l1 = getUnsignedInt(abyte0, 4, 4);
        l2 = getUnsignedInt(key, 0, 4);
        l3 = getUnsignedInt(key, 4, 4);
        l4 = getUnsignedInt(key, 8, 4);
        l5 = getUnsignedInt(key, 12, 4);
        l6 = 0L;
_L3:
        int j = i + -1;
        if(i > 0) goto _L2; else goto _L1
_L1:
        byte abyte2[];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(8);
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        dataoutputstream.writeInt((int)l);
        dataoutputstream.writeInt((int)l1);
        dataoutputstream.close();
        abyte2 = bytearrayoutputstream.toByteArray();
        byte abyte1[] = abyte2;
_L4:
        return abyte1;
_L2:
        l6 = 0xffffffffL & l6 + 0x9e3779b9L;
        l = 0xffffffffL & l + (l2 + (l1 << 4) ^ l1 + l6 ^ l3 + (l1 >>> 5));
        l1 = 0xffffffffL & l1 + (l4 + (l << 4) ^ l + l6 ^ l5 + (l >>> 5));
        i = j;
          goto _L3
        IOException ioexception;
        ioexception;
        abyte1 = null;
          goto _L4
    }

    private void encrypt8Bytes()
    {
        pos = 0;
_L3:
        if(pos < 8) goto _L2; else goto _L1
_L1:
        System.arraycopy(encipher(plain), 0, out, crypt, 8);
        pos = 0;
_L4:
        if(pos >= 8)
        {
            System.arraycopy(plain, 0, prePlain, 0, 8);
            preCrypt = crypt;
            crypt = 8 + crypt;
            pos = 0;
            header = false;
            return;
        }
        break MISSING_BLOCK_LABEL_180;
_L2:
        if(header)
        {
            byte abyte1[] = plain;
            int j = pos;
            abyte1[j] = (byte)(abyte1[j] ^ prePlain[pos]);
        } else
        {
            byte abyte0[] = plain;
            int i = pos;
            abyte0[i] = (byte)(abyte0[i] ^ out[preCrypt + pos]);
        }
        pos = 1 + pos;
          goto _L3
        byte abyte2[] = out;
        int k = crypt + pos;
        abyte2[k] = (byte)(abyte2[k] ^ prePlain[pos]);
        pos = 1 + pos;
          goto _L4
    }

    public static long getUnsignedInt(byte abyte0[], int i, int j)
    {
        long l = 0L;
        int k;
        if(j > 8)
            k = i + 8;
        else
            k = i + j;
        do
        {
            if(i >= k)
                return 0xffffffffL & l | l >>> 32;
            l = l << 8 | (long)(0xff & abyte0[i]);
            i++;
        } while(true);
    }

    private int rand()
    {
        return random.nextInt();
    }

    public byte[] decrypt(byte abyte0[], int i, int j, byte abyte1[])
    {
        byte abyte2[];
        byte abyte3[];
        int k;
        preCrypt = 0;
        crypt = 0;
        key = abyte1;
        abyte2 = new byte[i + 8];
        if(j % 8 != 0 || j < 16)
        {
            abyte3 = null;
        } else
        {
label0:
            {
                prePlain = decipher(abyte0, i);
                pos = 7 & prePlain[0];
                k = -10 + (j - pos);
                if(k >= 0)
                    break label0;
                abyte3 = null;
            }
        }
_L7:
        return abyte3;
        int l = i;
_L8:
        if(l < abyte2.length) goto _L2; else goto _L1
_L1:
        byte abyte4[];
        out = new byte[k];
        preCrypt = 0;
        crypt = 8;
        contextStart = 8;
        pos = 1 + pos;
        padding = 1;
        abyte4 = abyte2;
_L10:
        if(padding <= 2) goto _L4; else goto _L3
_L3:
        int i1;
        int j1;
        byte abyte6[];
        i1 = k;
        byte abyte5[] = abyte4;
        j1 = 0;
        abyte6 = abyte5;
_L12:
        if(i1 != 0) goto _L6; else goto _L5
_L5:
        byte abyte7[];
        padding = 1;
        abyte7 = abyte6;
_L13:
        if(padding >= 8)
        {
            abyte3 = out;
        } else
        {
label1:
            {
                if(pos >= 8)
                    break MISSING_BLOCK_LABEL_409;
                if((abyte7[i + preCrypt + pos] ^ prePlain[pos]) == 0)
                    break label1;
                abyte3 = null;
            }
        }
          goto _L7
_L2:
        abyte2[l] = 0;
        l++;
          goto _L8
_L4:
        if(pos < 8)
        {
            pos = 1 + pos;
            padding = 1 + padding;
        }
        if(pos != 8) goto _L10; else goto _L9
_L9:
        if(decrypt8Bytes(abyte0, i, j))
            break MISSING_BLOCK_LABEL_464;
        abyte3 = null;
          goto _L7
_L6:
        if(pos < 8)
        {
            out[j1] = (byte)(abyte6[i + preCrypt + pos] ^ prePlain[pos]);
            j1++;
            i1--;
            pos = 1 + pos;
        }
        if(pos != 8) goto _L12; else goto _L11
_L11:
        preCrypt = -8 + crypt;
        if(decrypt8Bytes(abyte0, i, j))
            break MISSING_BLOCK_LABEL_458;
        abyte3 = null;
          goto _L7
        pos = 1 + pos;
label2:
        {
            if(pos != 8)
                break MISSING_BLOCK_LABEL_445;
            preCrypt = crypt;
            if(decrypt8Bytes(abyte0, i, j))
                break label2;
            abyte3 = null;
        }
          goto _L7
        abyte7 = abyte0;
        padding = 1 + padding;
          goto _L13
        abyte6 = abyte0;
          goto _L12
        abyte4 = abyte0;
          goto _L10
    }

    public byte[] decrypt(byte abyte0[], byte abyte1[])
    {
        return decrypt(abyte0, 0, abyte0.length, abyte1);
    }

    public byte[] encrypt(byte abyte0[], int i, int j, byte abyte1[])
    {
        int k;
        plain = new byte[8];
        prePlain = new byte[8];
        pos = 1;
        padding = 0;
        preCrypt = 0;
        crypt = 0;
        key = abyte1;
        header = true;
        pos = (j + 10) % 8;
        if(pos != 0)
            pos = 8 - pos;
        out = new byte[10 + (j + pos)];
        plain[0] = (byte)(0xf8 & rand() | pos);
        k = 1;
_L9:
        if(k <= pos) goto _L2; else goto _L1
_L1:
        int l;
        pos = 1 + pos;
        l = 0;
_L10:
        if(l < 8) goto _L4; else goto _L3
_L3:
        padding = 1;
_L11:
        if(padding <= 2) goto _L6; else goto _L5
_L5:
        int j1;
        int k1;
        j1 = i;
        k1 = j;
_L12:
        if(k1 > 0) goto _L8; else goto _L7
_L7:
        padding = 1;
_L13:
        if(padding > 7)
            return out;
        break MISSING_BLOCK_LABEL_366;
_L2:
        plain[k] = (byte)(0xff & rand());
        k++;
          goto _L9
_L4:
        prePlain[l] = 0;
        l++;
          goto _L10
_L6:
        if(pos < 8)
        {
            byte abyte2[] = plain;
            int i1 = pos;
            pos = i1 + 1;
            abyte2[i1] = (byte)(0xff & rand());
            padding = 1 + padding;
        }
        if(pos == 8)
            encrypt8Bytes();
          goto _L11
_L8:
        int l1;
        int i2;
        byte abyte4[];
        int k2;
        if(pos < 8)
        {
            byte abyte3[] = plain;
            int j2 = pos;
            pos = j2 + 1;
            l1 = j1 + 1;
            abyte3[j2] = abyte0[j1];
            i2 = k1 + -1;
        } else
        {
            l1 = j1;
            i2 = k1;
        }
        if(pos == 8)
            encrypt8Bytes();
        k1 = i2;
        j1 = l1;
          goto _L12
        if(pos < 8)
        {
            abyte4 = plain;
            k2 = pos;
            pos = k2 + 1;
            abyte4[k2] = 0;
            padding = 1 + padding;
        }
        if(pos == 8)
            encrypt8Bytes();
          goto _L13
    }

    public byte[] encrypt(byte abyte0[], byte abyte1[])
    {
        return encrypt(abyte0, 0, abyte0.length, abyte1);
    }

    public static final int QUOTIENT = 0x4c11db7;
    public static final int SALT_LEN = 2;
    public static final int ZERO_LEN = 7;
    private int contextStart;
    private int crypt;
    private boolean header;
    private byte key[];
    private byte out[];
    private int padding;
    private byte plain[];
    private int pos;
    private int preCrypt;
    private byte prePlain[];
    private Random random;
}

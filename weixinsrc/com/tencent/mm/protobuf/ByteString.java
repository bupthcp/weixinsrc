// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protobuf;


public final class ByteString
{

    private ByteString(byte abyte0[])
    {
        c = 0;
        a = abyte0;
    }

    public static ByteString a(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length);
    }

    public static ByteString a(byte abyte0[], int i, int j)
    {
        byte abyte1[] = new byte[j];
        System.arraycopy(abyte0, i, abyte1, 0, j);
        return new ByteString(abyte1);
    }

    public final int a()
    {
        return a.length;
    }

    public final ByteString a(int i)
    {
        byte abyte0[] = new byte[i];
        if(a.length >= i)
        {
            System.arraycopy(a, 0, abyte0, 0, i + -1);
            a = abyte0;
        } else
        {
            System.arraycopy(a, 0, abyte0, 0, a.length);
            a = abyte0;
        }
        return this;
    }

    public final byte[] b()
    {
        int i = a.length;
        byte abyte0[] = new byte[i];
        System.arraycopy(a, 0, abyte0, 0, i);
        return abyte0;
    }

    public final boolean equals(Object obj)
    {
        boolean flag = true;
        if(obj != this) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int i;
        byte abyte0[];
        byte abyte1[];
        int j;
        if(!(obj instanceof ByteString))
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        ByteString bytestring = (ByteString)obj;
        i = a.length;
        if(i != bytestring.a.length)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        abyte0 = a;
        abyte1 = bytestring.a;
        j = 0;
_L4:
        if(j < i)
        {
label0:
            {
                if(abyte0[j] == abyte1[j])
                    break label0;
                flag = false;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
        j++;
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final int hashCode()
    {
        int i = c;
        if(i != 0) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        int j;
        int k;
        abyte0 = a;
        j = a.length;
        k = 0;
        i = j;
_L6:
        if(k < j) goto _L4; else goto _L3
_L3:
        if(i == 0)
            i = 1;
        c = i;
_L2:
        return i;
_L4:
        int l = i * 31 + abyte0[k];
        k++;
        i = l;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private static ByteString b = new ByteString(new byte[0]);
    private byte a[];
    private volatile int c;

}

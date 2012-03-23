// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import com.tencent.mm.pointers.PByteArray;

// Referenced classes of package com.tencent.mm.algorithm:
//            MyDES

public class DES
{

    public DES()
    {
    }

    public static int a(PByteArray pbytearray, byte abyte0[], byte abyte1[])
    {
        byte byte0 = 0;
        if(pbytearray == null || abyte0 == null || abyte1 == null)
            byte0 = 2;
        else
        if(abyte0.length < 0 || abyte1.length <= 0)
        {
            byte0 = 2;
        } else
        {
            int i = 8 - abyte0.length % 8;
            int j;
            byte abyte2[];
            if(i == 0)
                j = 8;
            else
                j = i;
            abyte2 = new byte[j + abyte0.length];
            for(int k = byte0; k < abyte0.length; k++)
                abyte2[k] = abyte0[k];

            for(int l = byte0; l < j; l++)
                abyte2[l + abyte0.length] = (byte)j;

            pbytearray.value = new byte[32 + (j + abyte0.length)];
            if(MyDES.a(pbytearray.value, abyte2, abyte2.length, abyte1.length, abyte1) == 0)
            {
                byte0 = 11;
            } else
            {
                byte abyte3[] = new byte[8 + (j + abyte0.length)];
                for(int i1 = byte0; i1 < abyte3.length; i1++)
                    abyte3[i1] = pbytearray.value[i1];

                pbytearray.value = abyte3;
            }
        }
        return byte0;
    }
}

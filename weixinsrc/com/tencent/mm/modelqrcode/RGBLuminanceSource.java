// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import a.o;
import android.graphics.Bitmap;

public final class RGBLuminanceSource extends o
{

    public RGBLuminanceSource(Bitmap bitmap, int i, int j)
    {
        super(bitmap.getWidth() - i, bitmap.getHeight() - j);
        int k = bitmap.getWidth() - i;
        int l = bitmap.getHeight() - j;
        int ai[] = new int[k * l];
        bitmap.getPixels(ai, 0, k, i / 2, j / 2, k, l);
        a = new byte[k * l];
        for(int i1 = 0; i1 < l; i1++)
        {
            int j1 = i1 * k;
            int k1 = 0;
            while(k1 < k) 
            {
                int l1 = ai[j1 + k1];
                int i2 = 0xff & l1 >> 16;
                int j2 = 0xff & l1 >> 8;
                int k2 = l1 & 0xff;
                if(i2 == j2 && j2 == k2)
                    a[j1 + k1] = (byte)i2;
                else
                    a[j1 + k1] = (byte)(k2 + (j2 + (i2 + j2)) >> 2);
                k1++;
            }
        }

    }

    public final byte[] a()
    {
        return a;
    }

    public final byte[] a(int i, byte abyte0[])
    {
        if(i < 0 || i >= d())
            throw new IllegalArgumentException((new StringBuilder()).append("Requested row is outside the image: ").append(i).toString());
        int j = c();
        if(abyte0 == null || abyte0.length < j)
            abyte0 = new byte[j];
        System.arraycopy(a, i * j, abyte0, 0, j);
        return abyte0;
    }

    private static int b = 10;
    private final byte a[];

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import a.o;
import android.graphics.Bitmap;
import android.graphics.Rect;

public final class PlanarYUVLuminanceSource extends o
{

    public PlanarYUVLuminanceSource(byte abyte0[], int i, int j, Rect rect)
    {
        super(rect.width(), rect.height());
        a = abyte0;
        b = i;
        c = j;
        d = rect.left;
        e = rect.top;
        f = rect.width();
        g = rect.height();
        if(d + f > i || e + g > j)
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        else
            return;
    }

    public final byte[] a()
    {
        int i = 0;
        byte abyte2[];
        if(f == b && g == c)
        {
            abyte2 = a;
        } else
        {
            int j = f * g;
            byte abyte0[] = new byte[j];
            int k = e * b + d;
            if(f == b)
            {
                System.arraycopy(a, k, abyte0, i, j);
                abyte2 = abyte0;
            } else
            {
                byte abyte1[] = a;
                for(; i < g; i++)
                {
                    System.arraycopy(abyte1, k, abyte0, i * f, f);
                    k += b;
                }

                abyte2 = abyte0;
            }
        }
        return abyte2;
    }

    public final byte[] a(int i, byte abyte0[])
    {
        if(i < 0 || i >= g)
            throw new IllegalArgumentException((new StringBuilder()).append("Requested row is outside the image: ").append(i).toString());
        if(abyte0 == null || abyte0.length < f)
            abyte0 = new byte[f];
        int j = (i + e) * b + d;
        System.arraycopy(a, j, abyte0, 0, f);
        return abyte0;
    }

    public final Bitmap b()
    {
        int ai[] = new int[f * g];
        byte abyte0[] = a;
        int i = e * b + d;
        for(int j = 0; j < g; j++)
        {
            int k = j * f;
            for(int l = 0; l < f; l++)
            {
                int i1 = 0xff & abyte0[i + l];
                ai[k + l] = 0xff000000 | i1 * 0x10101;
            }

            i += b;
        }

        Bitmap bitmap = Bitmap.createBitmap(f, g, android.graphics.Bitmap.Config.ARGB_8888);
        bitmap.setPixels(ai, 0, f, 0, 0, f, g);
        return bitmap;
    }

    private final byte a[];
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;


public final class g
{

    public g(byte abyte0[])
    {
        a = abyte0;
    }

    public final int a()
    {
        return 8 * (a.length - b) - c;
    }

    public final int a(int i)
    {
        if(i <= 0 || i > 32)
            throw new IllegalArgumentException();
        int j;
        int k;
        if(c > 0)
        {
            int j1 = 8 - c;
            int l;
            int i1;
            int k1;
            int l1;
            int i2;
            int j2;
            if(i < j1)
                k1 = i;
            else
                k1 = j1;
            l1 = j1 - k1;
            i2 = ((255 >> 8 - k1) << l1 & a[b]) >> l1;
            j2 = i - k1;
            c = k1 + c;
            if(c == 8)
            {
                c = 0;
                b = 1 + b;
            }
            j = i2;
            k = j2;
        } else
        {
            j = 0;
            k = i;
        }
        if(k <= 0) goto _L2; else goto _L1
_L1:
        if(k >= 8) goto _L4; else goto _L3
_L3:
        if(k > 0)
        {
            l = 8 - k;
            i1 = (255 >> l) << l;
            j = j << k | (i1 & a[b]) >> l;
            c = k + c;
        }
_L2:
        return j;
_L4:
        j = j << 8 | 0xff & a[b];
        b = 1 + b;
        k -= 8;
        if(true) goto _L1; else goto _L5
_L5:
    }

    private final byte a[];
    private int b;
    private int c;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;

import a.*;

// Referenced classes of package a.b:
//            a

public class c extends e
{

    public c(o o1)
    {
        super(o1);
        a = new byte[0];
    }

    public a a()
    {
        o o1;
        int i;
        int j;
        a a1;
        int k;
        o1 = b();
        i = o1.c();
        j = o1.d();
        a1 = new a(i, j);
        if(a.length < i)
            a = new byte[i];
        k = 0;
_L7:
        if(k < 32) goto _L2; else goto _L1
_L1:
        int ai[];
        int l;
        ai = b;
        l = 1;
_L8:
        if(l < 5) goto _L4; else goto _L3
_L3:
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        l1 = ai.length;
        i2 = 0;
        j2 = 0;
        k2 = 0;
        l2 = 0;
_L10:
        if(i2 < l1) goto _L6; else goto _L5
_L5:
        int i3;
        int j3;
        int k3;
        i3 = 0;
        j3 = 0;
        k3 = 0;
_L11:
        if(i3 >= l1)
        {
            byte abyte0[];
            int i1;
            int j1;
            int k1;
            int l3;
            int j4;
            int k4;
            int l4;
            int i5;
            int j5;
            int k5;
            int l5;
            int i6;
            int j6;
            byte abyte1[];
            int k6;
            int l6;
            int i7;
            if(k2 > j3)
            {
                j4 = k2;
                k4 = j3;
            } else
            {
                j4 = j3;
                k4 = k2;
            }
            if(j4 - k4 <= l1 >> 4)
                throw g.a();
            break MISSING_BLOCK_LABEL_309;
        }
        break MISSING_BLOCK_LABEL_268;
_L2:
        b[k] = 0;
        k++;
          goto _L7
_L4:
        abyte0 = o1.a((j * l) / 5, a);
        i1 = (i << 2) / 5;
        j1 = i / 5;
_L9:
label0:
        {
            if(j1 < i1)
                break label0;
            l++;
        }
          goto _L8
        k1 = (0xff & abyte0[j1]) >> 3;
        ai[k1] = 1 + ai[k1];
        j1++;
          goto _L9
_L6:
        if(ai[i2] > j2)
        {
            j2 = ai[i2];
            k2 = i2;
        }
        if(ai[i2] > l2)
            l2 = ai[i2];
        i2++;
          goto _L10
        l3 = i3 - k2;
        int i4 = l3 * (l3 * ai[i3]);
        if(i4 > k3)
            j3 = i3;
        else
            i4 = k3;
        i3++;
        k3 = i4;
          goto _L11
        l4 = j4 + -1;
        i5 = -1;
        j5 = j4 + -1;
        do
        {
            if(j5 <= k4)
            {
                j6 = l4 << 3;
                abyte1 = o1.a();
                k6 = 0;
                break MISSING_BLOCK_LABEL_349;
            }
            k5 = j5 - k4;
            l5 = k5 * k5 * (j4 - j5) * (l2 - ai[j5]);
            if(l5 > i5)
            {
                i6 = j5;
            } else
            {
                l5 = i5;
                i6 = l4;
            }
            j5--;
            l4 = i6;
            i5 = l5;
        } while(true);
_L13:
        if(k6 >= j)
            return a1;
        l6 = k6 * i;
        i7 = 0;
_L14:
label1:
        {
            if(i7 < i)
                break label1;
            k6++;
        }
        if(true) goto _L13; else goto _L12
_L12:
        if((0xff & abyte1[l6 + i7]) < j6)
            a1.b(i7, k6);
        i7++;
          goto _L14
    }

    private byte a[];
    private final int b[] = new int[32];
}

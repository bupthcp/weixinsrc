// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;


// Referenced classes of package a.a.b:
//            q, g, m, b

final class r
{

    private r(int i, byte abyte0[])
    {
        a = i;
        b = abyte0;
    }

    static r[] a(byte abyte0[], q q1, b b1)
    {
        g g1;
        m am[];
        int i;
        int j;
        int k;
        if(abyte0.length != q1.c())
            throw new IllegalArgumentException();
        g1 = q1.a(b1);
        am = g1.b();
        i = am.length;
        j = 0;
        k = 0;
_L6:
        if(j < i) goto _L2; else goto _L1
_L1:
        r ar[];
        int l;
        int i1;
        int j1;
        ar = new r[k];
        l = am.length;
        i1 = 0;
        j1 = 0;
_L7:
        if(i1 < l) goto _L4; else goto _L3
_L3:
        int j3;
        int k3;
        int l3;
        int i4;
        int i5;
        int l2 = ar[0].b.length;
        int i3 = -1 + ar.length;
        m m1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int k5;
        while(i3 >= 0 && ar[i3].b.length != l2) 
            i3--;
        j3 = i3 + 1;
        k3 = l2 - g1.a();
        l3 = 0;
        i4 = 0;
          goto _L5
_L2:
        k += am[j].a();
        j++;
          goto _L6
_L4:
        m1 = am[i1];
        k1 = j1;
        l1 = 0;
_L8:
label0:
        {
            if(l1 < m1.a())
                break label0;
            i1++;
            j1 = k1;
        }
          goto _L7
        i2 = m1.b();
        j2 = i2 + g1.a();
        k2 = k1 + 1;
        ar[k1] = new r(i2, new byte[j2]);
        l1++;
        k1 = k2;
          goto _L8
_L5:
        if(l3 >= k3)
        {
            i5 = j3;
            break MISSING_BLOCK_LABEL_127;
        }
        j4 = i4;
        k4 = 0;
_L10:
label1:
        {
            if(k4 < j1)
                break label1;
            l3++;
            i4 = j4;
        }
        continue; /* Loop/switch isn't completed */
        byte abyte1[] = ar[k4].b;
        int l4 = j4 + 1;
        abyte1[l3] = abyte0[j4];
        k4++;
        j4 = l4;
        if(true) goto _L10; else goto _L9
_L9:
        do
        {
            int j4;
            int k4;
            if(i5 >= j1)
            {
                k5 = ar[0].b.length;
                break MISSING_BLOCK_LABEL_144;
            }
            byte abyte2[] = ar[i5].b;
            int j5 = i4 + 1;
            abyte2[k3] = abyte0[i4];
            i5++;
            i4 = j5;
        } while(true);
        if(true) goto _L5; else goto _L11
_L11:
        int l5;
        int i6;
        if(k3 >= k5)
            return ar;
        l5 = 0;
        i6 = i4;
_L13:
label2:
        {
            if(l5 < j1)
                break label2;
            k3++;
            i4 = i6;
        }
        if(true) goto _L11; else goto _L12
_L12:
        int j6;
        byte abyte3[];
        int k6;
        if(l5 < j3)
            j6 = k3;
        else
            j6 = k3 + 1;
        abyte3 = ar[l5].b;
        k6 = i6 + 1;
        abyte3[j6] = abyte0[i6];
        l5++;
        i6 = k6;
          goto _L13
    }

    final int a()
    {
        return a;
    }

    final byte[] b()
    {
        return b;
    }

    private final int a;
    private final byte b[];
}

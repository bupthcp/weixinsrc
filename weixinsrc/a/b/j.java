// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;

import a.g;

// Referenced classes of package a.b:
//            b, a, d

public final class j extends b
{

    public j()
    {
    }

    public final a a(a a1, int i, int k, d d1)
    {
        a a2;
        float af[];
        int l;
        if(i <= 0 || k <= 0)
            throw g.a();
        a2 = new a(i, k);
        af = new float[i << 1];
        l = 0;
_L7:
        int i1;
        float f;
        int j1;
        if(l >= k)
            return a2;
        i1 = af.length;
        f = 0.5F + (float)l;
        j1 = 0;
_L4:
        if(j1 < i1) goto _L2; else goto _L1
_L1:
        int k1;
        d1.a(af);
        a(a1, af);
        k1 = 0;
_L5:
        if(k1 >= i1)
        {
            l++;
            continue; /* Loop/switch isn't completed */
        }
          goto _L3
_L2:
        af[j1] = 0.5F + (float)(j1 >> 1);
        af[j1 + 1] = f;
        j1 += 2;
          goto _L4
_L3:
        if(a1.a((int)af[k1], (int)af[k1 + 1]))
            a2.b(k1 >> 1, l);
        k1 += 2;
          goto _L5
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        arrayindexoutofboundsexception;
        throw g.a();
        if(true) goto _L7; else goto _L6
_L6:
    }
}

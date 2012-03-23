// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;

import a.b.a;
import a.b.a.*;
import a.b.k;
import a.m;
import java.util.Map;

// Referenced classes of package a.a.b:
//            h, s, r, a

public final class p
{

    public p()
    {
        a = new d(c.a);
    }

    public final k a(a a1, Map map)
    {
        q q;
        a.a.b.b b1;
        r ar[];
        int i;
        int j;
        int k;
        h h1 = new h(a1);
        q = h1.b();
        b1 = h1.a().a();
        ar = a.a.b.r.a(h1.c(), q, b1);
        i = 0;
        j = ar.length;
        k = 0;
_L4:
        if(k < j) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        int l;
        int i1;
        int j1;
        abyte0 = new byte[i];
        l = 0;
        i1 = ar.length;
        j1 = 0;
_L9:
        byte abyte1[];
        int k1;
        int l1;
        int ai[];
        int i2;
        if(j1 >= i1)
            return a.a.b.a.a(abyte0, q, b1, map);
        r r1 = ar[j1];
        abyte1 = r1.b();
        k1 = r1.a();
        l1 = abyte1.length;
        ai = new int[l1];
        i2 = 0;
          goto _L3
_L2:
        i += ar[k].a();
        k++;
          goto _L4
_L3:
        if(i2 < l1) goto _L6; else goto _L5
_L5:
        int k2;
        int l2;
        int j2 = abyte1.length - k1;
        try
        {
            a.a(ai, j2);
        }
        catch(b b2)
        {
            throw m.a();
        }
        k2 = 0;
_L10:
        if(k2 < k1) goto _L8; else goto _L7
_L7:
        l2 = 0;
_L11:
        if(l2 < k1)
            break MISSING_BLOCK_LABEL_239;
        j1++;
          goto _L9
_L6:
        ai[i2] = 0xff & abyte1[i2];
        i2++;
          goto _L3
_L8:
        abyte1[k2] = (byte)ai[k2];
        k2++;
          goto _L10
        int i3 = l + 1;
        abyte0[l] = abyte1[l2];
        l2++;
        l = i3;
          goto _L11
    }

    private final d a;
}

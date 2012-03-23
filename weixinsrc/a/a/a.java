// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a;

import a.a.b.p;
import a.c;
import a.f;
import a.g;
import a.h;
import a.k;
import a.l;
import a.n;
import java.util.Map;

public final class a
    implements n
{

    public a()
    {
    }

    public final h a(k k1, Map map)
    {
        a.b.a a1;
        int l1;
        int j3;
        int k3;
        int i4;
        int j4;
        a.b.a a2;
        int k4;
        if(map == null || !map.containsKey(l.a))
            break MISSING_BLOCK_LABEL_433;
        a1 = k1.a();
        int ai[] = a1.a();
        int ai1[] = a1.b();
        if(ai == null || ai1 == null)
            throw g.a();
        int i = a1.d();
        int j = a1.c();
        int i1 = ai[0];
        int j1 = ai[1];
        do
        {
            if(i1 >= j || j1 >= i || !a1.a(i1, j1))
            {
                if(i1 == j || j1 == i)
                    throw g.a();
                break;
            }
            i1++;
            j1++;
        } while(true);
        l1 = i1 - ai[0];
        if(l1 == 0)
            throw g.a();
        int i2 = ai[1];
        int j2 = ai1[1];
        int l2 = ai[0];
        int i3 = ai1[0];
        if(j2 - i2 != i3 - l2)
            i3 = l2 + (j2 - i2);
        j3 = (1 + (i3 - l2)) / l1;
        k3 = (1 + (j2 - i2)) / l1;
        if(j3 <= 0 || k3 <= 0)
            throw g.a();
        if(k3 != j3)
            throw g.a();
        int l3 = l1 >> 1;
        i4 = i2 + l3;
        j4 = l2 + l3;
        a2 = new a.b.a(j3, k3);
        k4 = 0;
_L3:
        if(k4 < k3) goto _L2; else goto _L1
_L1:
        a.b.k k2;
        f af[];
        k2 = b.a(a2, map);
        af = a;
_L5:
        h h2 = new h(k2.b(), k2.a(), af, a.a.a);
        java.util.List list = k2.c();
        if(list != null)
            h2.a(c.a, list);
        String s = k2.d();
        if(s != null)
            h2.a(c.b, s);
        return h2;
_L2:
        int l4;
        int i5;
        l4 = i4 + k4 * l1;
        i5 = 0;
_L4:
label0:
        {
            if(i5 < j3)
                break label0;
            k4++;
        }
          goto _L3
        if(a1.a(j4 + i5 * l1, l4))
            a2.b(i5, k4);
        i5++;
          goto _L4
        a.b.h h1 = (new a.a.a.g(k1.a())).a(map);
        k2 = b.a(h1.a(), map);
        af = h1.b();
          goto _L5
    }

    public final void a()
    {
    }

    private static final f a[] = new f[0];
    private final p b = new p();

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import a.a.b.q;
import a.b.a;
import a.b.b;
import a.b.d;
import a.b.h;
import a.f;
import a.l;
import java.util.Map;

// Referenced classes of package a.a.a:
//            a, e, c, h

public final class g
{

    public g(a a1)
    {
        a = a1;
    }

    private float a(int i, int j, int k, int i1)
    {
        int j1 = 0;
        float f1 = b(i, j, k, i1);
        int k1 = i - (k - i);
        int l1;
        float f2;
        int i2;
        float f3;
        if(k1 < 0)
        {
            f2 = (float)i / (float)(i - k1);
            l1 = j1;
        } else
        if(k1 >= a.c())
        {
            f2 = (float)((-1 + a.c()) - i) / (float)(k1 - i);
            l1 = -1 + a.c();
        } else
        {
            l1 = k1;
            f2 = 1F;
        }
        i2 = (int)((float)j - f2 * (float)(i1 - j));
        if(i2 < 0)
            f3 = (float)j / (float)(j - i2);
        else
        if(i2 >= a.d())
        {
            f3 = (float)((-1 + a.d()) - j) / (float)(i2 - j);
            j1 = -1 + a.d();
        } else
        {
            j1 = i2;
            f3 = 1F;
        }
        return (f1 + b(i, j, (int)((float)i + f3 * (float)(l1 - i)), j1)) - 1F;
    }

    private float a(f f1, f f2)
    {
        float f3 = a((int)f1.a(), (int)f1.b(), (int)f2.a(), (int)f2.b());
        float f4 = a((int)f2.a(), (int)f2.b(), (int)f1.a(), (int)f1.b());
        float f5;
        if(Float.isNaN(f3))
            f5 = f4 / 7F;
        else
        if(Float.isNaN(f4))
            f5 = f3 / 7F;
        else
            f5 = (f3 + f4) / 14F;
        return f5;
    }

    private h a(a.a.a.a a1)
    {
        e e1;
        e e2;
        e e3;
        float f1;
        int i;
        e1 = a1.b();
        e2 = a1.c();
        e3 = a1.a();
        f1 = (a(((f) (e1)), ((f) (e2))) + a(((f) (e1)), ((f) (e3)))) / 2F;
        if(f1 < 1F)
            throw a.g.a();
        i = 7 + ((int)(0.5F + f.a(e1, e2) / f1) + (int)(0.5F + f.a(e1, e3) / f1) >> 1);
        i & 3;
        JVM INSTR tableswitch 0 3: default 116
    //                   0 382
    //                   1 116
    //                   2 391
    //                   3 401;
           goto _L1 _L2 _L1 _L3 _L4
_L1:
        int j = i;
_L8:
        q q1;
        int k;
        q1 = q.a(j);
        k = -7 + q1.d();
        if(q1.b().length <= 0) goto _L6; else goto _L5
_L5:
        int i1;
        int j1;
        int k1;
        float f7 = (e2.a() - e1.a()) + e3.a();
        float f8 = (e2.b() - e1.b()) + e3.b();
        float f9 = 1F - 3F / (float)k;
        i1 = (int)(e1.a() + f9 * (f7 - e1.a()));
        j1 = (int)(e1.b() + f9 * (f8 - e1.b()));
        k1 = 4;
_L10:
        if(k1 <= 16) goto _L7; else goto _L6
_L6:
        a.a.a.d d1 = null;
_L9:
        float f2 = (float)j - 3.5F;
        float f3;
        float f4;
        float f5;
        float f6;
        d d2;
        a a2;
        a a3;
        f af[];
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        a.a.a.d d3;
        if(d1 != null)
        {
            f3 = d1.a();
            f4 = d1.b();
            f5 = f2 - 3F;
            f6 = f5;
        } else
        {
            f3 = (e2.a() - e1.a()) + e3.a();
            f4 = (e2.b() - e1.b()) + e3.b();
            f5 = f2;
            f6 = f2;
        }
        d2 = d.a(f2, f5, f6, f2, e1.a(), e1.b(), e2.a(), e2.b(), f3, f4, e3.a(), e3.b());
        a2 = a;
        a3 = a.b.b.a().a(a2, j, j, d2);
        if(d1 == null)
        {
            af = new f[3];
            af[0] = e3;
            af[1] = e1;
            af[2] = e2;
        } else
        {
            af = new f[4];
            af[0] = e3;
            af[1] = e1;
            af[2] = e2;
            af[3] = d1;
        }
        return new h(a3, af);
_L2:
        j = i + 1;
          goto _L8
_L3:
        j = i + -1;
          goto _L8
_L4:
        throw a.g.a();
_L7:
        l1 = (int)(f1 * (float)k1);
        i2 = i1 - l1;
        j2 = Math.max(0, i2);
        k2 = Math.min(-1 + a.c(), i1 + l1);
        if((float)(k2 - j2) < 3F * f1)
            throw a.g.a();
        l2 = Math.max(0, j1 - l1);
        i3 = Math.min(-1 + a.d(), l1 + j1);
        if((float)(i3 - l2) < 3F * f1)
            throw a.g.a();
        d3 = (new c(a, j2, l2, k2 - j2, i3 - l2, f1, b)).a();
        d1 = d3;
          goto _L9
        a.g g1;
        g1;
        k1 <<= 1;
          goto _L10
    }

    private float b(int i, int j, int k, int i1)
    {
        boolean flag;
        int l1;
        int i2;
        int j2;
        int k2;
        byte byte0;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int k5;
        float f1;
        int l5;
        int i6;
        if(Math.abs(i1 - j) > Math.abs(k - i))
            flag = true;
        else
            flag = false;
        int i4;
        int j4;
        boolean flag1;
        int k4;
        int l4;
        int i5;
        int j5;
        int j6;
        int k6;
        if(!flag)
        {
            int j1 = i1;
            i1 = k;
            k = j1;
            int k1 = j;
            j = i;
            i = k1;
        }
        l1 = Math.abs(i1 - j);
        i2 = Math.abs(k - i);
        j2 = -l1 >> 1;
        if(j < i1)
            k2 = 1;
        else
            k2 = -1;
        if(i < k)
            byte0 = 1;
        else
            byte0 = -1;
        l2 = 0;
        i3 = i1 + k2;
        j3 = j;
        k3 = j2;
        l3 = i;
        if(j3 != i3) goto _L2; else goto _L1
_L1:
        k5 = l2;
_L7:
        if(k5 == 2)
        {
            l5 = (i1 + k2) - j;
            i6 = k - i;
            f1 = (float)Math.sqrt(l5 * l5 + i6 * i6);
        } else
        {
            f1 = (0.0F / 0.0F);
        }
_L4:
        return f1;
_L2:
        if(flag)
            i4 = l3;
        else
            i4 = j3;
        if(flag)
            j4 = j3;
        else
            j4 = l3;
        if(l2 == 1)
            flag1 = true;
        else
            flag1 = false;
        if(flag1 != a.a(i4, j4))
            break MISSING_BLOCK_LABEL_344;
        if(l2 != 2)
            break; /* Loop/switch isn't completed */
        j6 = j3 - j;
        k6 = l3 - i;
        f1 = (float)Math.sqrt(j6 * j6 + k6 * k6);
        if(true) goto _L4; else goto _L3
_L3:
        k4 = l2 + 1;
_L9:
        l4 = k3 + i2;
        if(l4 <= 0)
            break MISSING_BLOCK_LABEL_333;
        if(l3 == k) goto _L6; else goto _L5
_L5:
        i5 = l3 + byte0;
        j5 = l4 - l1;
_L8:
        j3 += k2;
        l2 = k4;
        k3 = j5;
        l3 = i5;
        break MISSING_BLOCK_LABEL_85;
_L6:
        k5 = k4;
          goto _L7
        i5 = l3;
        j5 = l4;
          goto _L8
        k4 = l2;
          goto _L9
    }

    public final h a(Map map)
    {
        a.b b1;
        if(map == null)
            b1 = null;
        else
            b1 = (a.b)map.get(l.e);
        b = b1;
        return a((new a.a.a.h(a, b)).a(map));
    }

    private final a a;
    private a.b b;
}

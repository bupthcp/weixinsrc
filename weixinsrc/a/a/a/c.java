// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import a.b;
import a.b.a;
import a.g;
import java.util.*;

// Referenced classes of package a.a.a:
//            d

final class c
{

    c(a a1, int j, int k, int l, int i1, float f1, b b1)
    {
        a = a1;
        c = j;
        d = k;
        e = l;
        f = i1;
        g = f1;
        i = b1;
    }

    private static float a(int ai[], int j)
    {
        return (float)(j - ai[2]) - (float)ai[1] / 2F;
    }

    private d a(int ai[], int j, int k)
    {
        int l;
        float f1;
        int i1;
        int j1;
        a a1;
        int k1;
        int ai1[];
        int l1;
        l = ai[0] + ai[1] + ai[2];
        f1 = a(ai, k);
        i1 = (int)f1;
        j1 = 2 * ai[1];
        a1 = a;
        k1 = a1.d();
        ai1 = h;
        ai1[0] = 0;
        ai1[1] = 0;
        ai1[2] = 0;
        l1 = j;
_L7:
        if(l1 >= 0 && a1.a(i1, l1) && ai1[1] <= j1) goto _L2; else goto _L1
_L1:
        float f2;
        d d1;
        float f3;
        Iterator iterator;
        if(l1 < 0 || ai1[1] > j1)
        {
            f2 = (0.0F / 0.0F);
        } else
        {
label0:
            {
                for(; l1 >= 0 && !a1.a(i1, l1) && ai1[0] <= j1; l1--)
                    ai1[0] = 1 + ai1[0];

                if(ai1[0] <= j1)
                    break label0;
                f2 = (0.0F / 0.0F);
            }
        }
_L8:
        if(Float.isNaN(f2)) goto _L4; else goto _L3
_L3:
        f3 = (float)(ai[0] + ai[1] + ai[2]) / 3F;
        iterator = b.iterator();
_L11:
        if(iterator.hasNext()) goto _L6; else goto _L5
_L5:
        d d2 = new d(f1, f2, f3);
        b.add(d2);
_L4:
        d1 = null;
_L12:
        return d1;
_L2:
        ai1[1] = 1 + ai1[1];
        l1--;
          goto _L7
        int i2 = j + 1;
_L9:
label1:
        {
            if(i2 < k1 && a1.a(i1, i2) && ai1[1] <= j1)
                break label1;
            if(i2 == k1 || ai1[1] > j1)
            {
                f2 = (0.0F / 0.0F);
            } else
            {
                for(; i2 < k1 && !a1.a(i1, i2) && ai1[2] <= j1; i2++)
                    ai1[2] = 1 + ai1[2];

                if(ai1[2] > j1)
                    f2 = (0.0F / 0.0F);
                else
                if(5 * Math.abs((ai1[0] + ai1[1] + ai1[2]) - l) >= l * 2)
                    f2 = (0.0F / 0.0F);
                else
                if(a(ai1))
                    f2 = a(ai1, i2);
                else
                    f2 = (0.0F / 0.0F);
            }
        }
          goto _L8
        ai1[1] = 1 + ai1[1];
        i2++;
          goto _L9
_L6:
        d d3 = (d)iterator.next();
        if(!d3.a(f3, f2, f1)) goto _L11; else goto _L10
_L10:
        d1 = d3.b(f2, f1, f3);
          goto _L12
    }

    private boolean a(int ai[])
    {
        boolean flag;
        float f1;
        float f2;
        int j;
        flag = false;
        f1 = g;
        f2 = f1 / 2F;
        j = ((flag) ? 1 : 0);
_L6:
        if(j < 3) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        if(Math.abs(f1 - (float)ai[j]) >= f2) goto _L4; else goto _L3
_L3:
        j++;
        if(true) goto _L6; else goto _L5
_L5:
    }

    final d a()
    {
        int j;
        int k;
        int l;
        int i1;
        int ai[];
        int j1;
        j = c;
        k = f;
        l = j + e;
        i1 = d + (k >> 1);
        ai = new int[3];
        j1 = 0;
_L18:
        if(j1 < k) goto _L2; else goto _L1
_L1:
        d d1;
        if(b.isEmpty())
            break MISSING_BLOCK_LABEL_314;
        d1 = (d)b.get(0);
_L8:
        return d1;
_L2:
        int l1;
        int i2;
        int j2;
        int k2;
        int k1;
        if((j1 & 1) == 0)
            k1 = j1 + 1 >> 1;
        else
            k1 = -(j1 + 1 >> 1);
        l1 = i1 + k1;
        ai[0] = 0;
        ai[1] = 0;
        ai[2] = 0;
        i2 = j;
_L9:
        if(i2 < l && !a.a(i2, l1)) goto _L4; else goto _L3
_L3:
        j2 = i2;
        k2 = 0;
_L15:
        if(j2 < l) goto _L6; else goto _L5
_L5:
        if(!a(ai))
            break; /* Loop/switch isn't completed */
        d1 = a(ai, l1, l);
        if(d1 != null) goto _L8; else goto _L7
_L7:
        j1++;
        continue; /* Loop/switch isn't completed */
_L4:
        i2++;
          goto _L9
_L6:
        if(!a.a(j2, l1)) goto _L11; else goto _L10
_L10:
        if(k2 == 1)
            break MISSING_BLOCK_LABEL_299;
        if(k2 != 2) goto _L13; else goto _L12
_L12:
        if(!a(ai))
            break; /* Loop/switch isn't completed */
        d1 = a(ai, l1, j2);
        if(d1 != null) goto _L8; else goto _L14
_L14:
        ai[0] = ai[2];
        ai[1] = 1;
        ai[2] = 0;
        k2 = 1;
_L16:
        j2++;
          goto _L15
_L13:
        k2++;
        ai[k2] = 1 + ai[k2];
          goto _L16
_L11:
        if(k2 == 1)
            k2++;
        ai[k2] = 1 + ai[k2];
          goto _L16
        throw a.g.a();
        if(true) goto _L18; else goto _L17
_L17:
    }

    private final a a;
    private final List b = new ArrayList(5);
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final float g;
    private final int h[] = new int[3];
    private final b i;
}

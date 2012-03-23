// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;

import a.g;

// Referenced classes of package a.b:
//            j, a, d

public abstract class b
{

    public b()
    {
    }

    public static b a()
    {
        return a;
    }

    protected static void a(a a1, float af[])
    {
        int i;
        int k;
        int l;
        boolean flag;
        i = a1.c();
        k = a1.d();
        l = 0;
        flag = true;
_L3:
        if(l < af.length && flag) goto _L2; else goto _L1
_L1:
        int i1;
        boolean flag1;
        i1 = -2 + af.length;
        flag1 = true;
_L4:
        if(i1 < 0 || !flag1)
            return;
        break MISSING_BLOCK_LABEL_179;
_L2:
        int l1 = (int)af[l];
        int i2 = (int)af[l + 1];
        if(l1 < -1 || l1 > i || i2 < -1 || i2 > k)
            throw g.a();
        int j1;
        int k1;
        if(l1 == -1)
        {
            af[l] = 0F;
            flag = true;
        } else
        if(l1 == i)
        {
            af[l] = i + -1;
            flag = true;
        } else
        {
            flag = false;
        }
        if(i2 == -1)
        {
            af[l + 1] = 0F;
            flag = true;
        } else
        if(i2 == k)
        {
            af[l + 1] = k + -1;
            flag = true;
        }
        l += 2;
          goto _L3
        j1 = (int)af[i1];
        k1 = (int)af[i1 + 1];
        if(j1 < -1 || j1 > i || k1 < -1 || k1 > k)
            throw g.a();
        if(j1 == -1)
        {
            af[i1] = 0F;
            flag1 = true;
        } else
        if(j1 == i)
        {
            af[i1] = i + -1;
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if(k1 == -1)
        {
            af[i1 + 1] = 0F;
            flag1 = true;
        } else
        if(k1 == k)
        {
            af[i1 + 1] = k + -1;
            flag1 = true;
        }
        i1 -= 2;
          goto _L4
    }

    public abstract a a(a a1, int i, int k, d d);

    private static b a = new j();

}

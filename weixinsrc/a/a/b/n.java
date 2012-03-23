// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;

import a.b.a;

// Referenced classes of package a.a.b:
//            c, d, f, e, 
//            l, k, i, j

abstract class n
{

    n()
    {
        this((byte)0);
    }

    private n(byte byte0)
    {
    }

    static n a(int i1)
    {
        if(i1 < 0 || i1 > 7)
            throw new IllegalArgumentException();
        else
            return a[i1];
    }

    final void a(a a1, int i1)
    {
        int j1 = 0;
_L2:
        if(j1 >= i1)
            return;
        int k1 = 0;
        do
        {
label0:
            {
                if(k1 < i1)
                    break label0;
                j1++;
            }
            if(true)
                continue;
            if(a(j1, k1))
                a1.c(k1, j1);
            k1++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    abstract boolean a(int i1, int j1);

    private static final n a[];

    static 
    {
        n an[] = new n[8];
        an[0] = new c();
        an[1] = new d();
        an[2] = new f();
        an[3] = new e();
        an[4] = new l();
        an[5] = new k();
        an[6] = new i();
        an[7] = new j();
        a = an;
    }
}

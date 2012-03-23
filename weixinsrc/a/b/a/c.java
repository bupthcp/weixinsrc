// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b.a;


// Referenced classes of package a.b.a:
//            a

public final class c
{

    private c(int i1, int j1)
    {
        o = false;
        n = i1;
        m = j1;
        if(j1 <= 0)
            d();
    }

    static int b(int i1, int j1)
    {
        return i1 ^ j1;
    }

    private void d()
    {
        int i1;
        int j1;
        i = new int[m];
        j = new int[m];
        i1 = 0;
        j1 = 1;
_L3:
        if(i1 < m) goto _L2; else goto _L1
_L1:
        int k1 = 0;
_L4:
        if(k1 >= -1 + m)
        {
            k = new a(this, new int[1]);
            int ai[] = new int[1];
            ai[0] = 1;
            l = new a(this, ai);
            o = true;
            return;
        }
        break MISSING_BLOCK_LABEL_130;
_L2:
        i[i1] = j1;
        j1 <<= 1;
        if(j1 >= m)
            j1 = (j1 ^ n) & -1 + m;
        i1++;
          goto _L3
        j[i[k1]] = k1;
        k1++;
          goto _L4
    }

    private void e()
    {
        if(!o)
            d();
    }

    final int a(int i1)
    {
        e();
        return i[i1];
    }

    final a a()
    {
        e();
        return k;
    }

    final a a(int i1, int j1)
    {
        e();
        if(i1 < 0)
            throw new IllegalArgumentException();
        a a1;
        if(j1 == 0)
        {
            a1 = k;
        } else
        {
            int ai[] = new int[i1 + 1];
            ai[0] = j1;
            a1 = new a(this, ai);
        }
        return a1;
    }

    final int b(int i1)
    {
        e();
        if(i1 == 0)
            throw new IllegalArgumentException();
        else
            return j[i1];
    }

    final a b()
    {
        e();
        return l;
    }

    public final int c()
    {
        return m;
    }

    final int c(int i1)
    {
        e();
        if(i1 == 0)
            throw new ArithmeticException();
        else
            return i[-1 + (m - j[i1])];
    }

    final int c(int i1, int j1)
    {
        e();
        int k1;
        if(i1 == 0 || j1 == 0)
        {
            k1 = 0;
        } else
        {
            if(i1 < 0 || j1 < 0 || i1 >= m || j1 >= m)
                i1++;
            int l1 = j[i1] + j[j1];
            k1 = i[l1 % m + l1 / m];
        }
        return k1;
    }

    public static final c a = new c(285, 256);
    public static final c b;
    private static c c = new c(4201, 4096);
    private static c d = new c(1033, 1024);
    private static c e;
    private static c f = new c(19, 16);
    private static c g;
    private static c h;
    private int i[];
    private int j[];
    private a k;
    private a l;
    private final int m;
    private final int n;
    private boolean o;

    static 
    {
        e = new c(67, 64);
        c c1 = new c(301, 256);
        b = c1;
        g = c1;
        h = e;
    }
}

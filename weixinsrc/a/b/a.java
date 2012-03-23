// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;


public final class a
{

    public a(int i)
    {
        this(i, i);
    }

    public a(int i, int j)
    {
        if(i <= 0 || j <= 0)
        {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        } else
        {
            a = i;
            b = j;
            c = i + 31 >> 5;
            d = new int[j * c];
            return;
        }
    }

    public final void a(int i, int j, int k, int l)
    {
        int i1;
        int j1;
        if(j < 0 || i < 0)
            throw new IllegalArgumentException("Left and top must be nonnegative");
        if(l <= 0 || k <= 0)
            throw new IllegalArgumentException("Height and width must be at least 1");
        i1 = i + k;
        j1 = j + l;
        if(j1 > b || i1 > a)
            throw new IllegalArgumentException("The region must fit inside the matrix");
          goto _L1
_L3:
        int k1;
        int l1;
        k1 = j * c;
        l1 = i;
_L4:
        if(l1 < i1)
            break MISSING_BLOCK_LABEL_104;
        j++;
_L1:
        if(j < j1) goto _L3; else goto _L2
_L2:
        return;
        int ai[] = d;
        int i2 = k1 + (l1 >> 5);
        ai[i2] = ai[i2] | 1 << (l1 & 0x1f);
        l1++;
          goto _L4
    }

    public final boolean a(int i, int j)
    {
        int k = j * c + (i >> 5);
        boolean flag;
        if((1 & d[k] >>> (i & 0x1f)) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int[] a()
    {
        int i = 0;
        do
        {
            if(i >= d.length || d[i] != 0)
            {
                int ai[];
                if(i == d.length)
                {
                    ai = null;
                } else
                {
label0:
                    {
                        int j = i / c;
                        int k = i % c << 5;
                        int l = d[i];
                        int j1;
                        for(int i1 = 0; l << 31 - i1 == 0; i1++)
                            break label0;

                        j1 = k + i1;
                        ai = new int[2];
                        ai[0] = j1;
                        ai[1] = j;
                    }
                }
                return ai;
            }
            i++;
        } while(true);
    }

    public final void b(int i, int j)
    {
        int k = j * c + (i >> 5);
        int ai[] = d;
        ai[k] = ai[k] | 1 << (i & 0x1f);
    }

    public final int[] b()
    {
        int i = -1 + d.length;
        do
        {
            if(i < 0 || d[i] != 0)
            {
                int ai[];
                if(i < 0)
                {
                    ai = null;
                } else
                {
label0:
                    {
                        int j = i / c;
                        int k = i % c << 5;
                        int l = d[i];
                        int j1;
                        for(int i1 = 31; l >>> i1 == 0; i1--)
                            break label0;

                        j1 = k + i1;
                        ai = new int[2];
                        ai[0] = j1;
                        ai[1] = j;
                    }
                }
                return ai;
            }
            i--;
        } while(true);
    }

    public final int c()
    {
        return a;
    }

    public final void c(int i, int j)
    {
        int k = j * c + (i >> 5);
        int ai[] = d;
        ai[k] = ai[k] ^ 1 << (i & 0x1f);
    }

    public final int d()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
        boolean flag = false;
        if(obj instanceof a) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        a a1;
        int i;
        a1 = (a)obj;
        if(a != a1.a || b != a1.b || c != a1.c || d.length != a1.d.length)
            continue; /* Loop/switch isn't completed */
        i = ((flag) ? 1 : 0);
_L5:
        if(i < d.length)
            continue; /* Loop/switch isn't completed */
        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
        if(d[i] != a1.d[i]) goto _L1; else goto _L4
_L4:
        i++;
          goto _L5
    }

    public final int hashCode()
    {
        int i = 31 * (31 * (31 * a + a) + b) + c;
        int ai[] = d;
        int j = ai.length;
        int k = 0;
        do
        {
            if(k >= j)
                return i;
            i = ai[k] + i * 31;
            k++;
        } while(true);
    }

    public final String toString()
    {
        StringBuilder stringbuilder;
        int i;
        stringbuilder = new StringBuilder(b * (1 + a));
        i = 0;
_L2:
        if(i >= b)
            return stringbuilder.toString();
        int j = 0;
        do
        {
label0:
            {
                if(j < a)
                    break label0;
                stringbuilder.append('\n');
                i++;
            }
            if(true)
                continue;
            String s;
            if(a(j, i))
                s = "X ";
            else
                s = "  ";
            stringbuilder.append(s);
            j++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    private final int a;
    private final int b;
    private final int c;
    private final int d[];
}

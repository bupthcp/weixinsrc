// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b.a;


// Referenced classes of package a.b.a:
//            c

final class a
{

    a(c c1, int ai[])
    {
        int i;
        int j;
        i = 1;
        super();
        if(ai.length == 0)
            throw new IllegalArgumentException();
        a = c1;
        j = ai.length;
        if(j <= i || ai[0] != 0)
            break MISSING_BLOCK_LABEL_104;
_L3:
        if(i < j && ai[i] == 0) goto _L2; else goto _L1
_L1:
        if(i == j)
        {
            b = c1.a().b;
        } else
        {
            b = new int[j - i];
            System.arraycopy(ai, i, b, 0, b.length);
        }
_L4:
        return;
_L2:
        i++;
          goto _L3
        b = ai;
          goto _L4
    }

    final int a()
    {
        return -1 + b.length;
    }

    final int a(int i)
    {
        return b[(-1 + b.length) - i];
    }

    final a a(int i, int j)
    {
        if(i < 0)
            throw new IllegalArgumentException();
        if(j != 0) goto _L2; else goto _L1
_L1:
        a a1 = a.a();
_L4:
        return a1;
_L2:
        int k = b.length;
        int ai[] = new int[k + i];
        int l = 0;
        do
        {
label0:
            {
                if(l < k)
                    break label0;
                a1 = new a(a, ai);
            }
            if(true)
                continue;
            ai[l] = a.c(b[l], j);
            l++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    final a a(a a1)
    {
        if(!a.equals(a1.a))
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        if(!b()) goto _L2; else goto _L1
_L1:
        return a1;
_L2:
        if(a1.b())
        {
            a1 = this;
            continue; /* Loop/switch isn't completed */
        }
        int ai[] = b;
        int ai1[] = a1.b;
        int ai3[];
        int i;
        int j;
        if(ai.length <= ai1.length)
        {
            int ai2[] = ai;
            ai = ai1;
            ai1 = ai2;
        }
        ai3 = new int[ai.length];
        i = ai.length - ai1.length;
        System.arraycopy(ai, 0, ai3, 0, i);
        j = i;
label0:
        {
            if(j < ai.length)
                break label0;
            a1 = new a(a, ai3);
        }
        if(true) goto _L1; else goto _L3
_L3:
        ai3[j] = a.b.a.c.b(ai1[j - i], ai[j]);
        j++;
        break MISSING_BLOCK_LABEL_89;
        if(true) goto _L1; else goto _L4
_L4:
    }

    final int b(int i)
    {
        int j = 0;
        if(i != 0) goto _L2; else goto _L1
_L1:
        int l = a(j);
_L4:
        return l;
_L2:
        int k;
        k = b.length;
        if(i != 1)
            break; /* Loop/switch isn't completed */
        l = j;
        while(j < k) 
        {
            int k1 = a.b.a.c.b(l, b[j]);
            j++;
            l = k1;
        }
        if(true) goto _L4; else goto _L3
_L3:
        l = b[j];
        int i1 = 1;
        while(i1 < k) 
        {
            int j1 = a.b.a.c.b(a.c(i, l), b[i1]);
            i1++;
            l = j1;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    final a b(a a1)
    {
        if(!a.equals(a1.a))
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        if(!b() && !a1.b()) goto _L2; else goto _L1
_L1:
        a a2 = a.a();
_L4:
        return a2;
_L2:
        int ai[];
        int i;
        int ai1[];
        int j;
        int ai2[];
        int k;
        ai = b;
        i = ai.length;
        ai1 = a1.b;
        j = ai1.length;
        ai2 = new int[-1 + (i + j)];
        k = 0;
_L5:
label0:
        {
            if(k < i)
                break label0;
            a2 = new a(a, ai2);
        }
        if(true) goto _L4; else goto _L3
_L3:
        int l;
        int i1;
        l = ai[k];
        i1 = 0;
_L6:
label1:
        {
            if(i1 < j)
                break label1;
            k++;
        }
          goto _L5
        ai2[k + i1] = a.b.a.c.b(ai2[k + i1], a.c(l, ai1[i1]));
        i1++;
          goto _L6
    }

    final boolean b()
    {
        boolean flag = false;
        if(b[flag] == 0)
            flag = true;
        return flag;
    }

    final a c(int i)
    {
        if(i != 0) goto _L2; else goto _L1
_L1:
        this = a.a();
_L4:
        return this;
_L2:
        int j;
        int ai[];
        int k;
        if(i == 1)
            continue; /* Loop/switch isn't completed */
        j = b.length;
        ai = new int[j];
        k = 0;
_L5:
label0:
        {
            if(k < j)
                break label0;
            this = new a(a, ai);
        }
        if(true) goto _L4; else goto _L3
_L3:
        ai[k] = a.c(b[k], i);
        k++;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(8 * (-1 + b.length));
        int i = -1 + b.length;
        do
        {
            if(i < 0)
                return stringbuilder.toString();
            int j = a(i);
            if(j != 0)
            {
                if(j < 0)
                {
                    stringbuilder.append(" - ");
                    j = -j;
                } else
                if(stringbuilder.length() > 0)
                    stringbuilder.append(" + ");
                if(i == 0 || j != 1)
                {
                    int k = a.b(j);
                    if(k == 0)
                        stringbuilder.append('1');
                    else
                    if(k == 1)
                    {
                        stringbuilder.append('a');
                    } else
                    {
                        stringbuilder.append("a^");
                        stringbuilder.append(k);
                    }
                }
                if(i != 0)
                    if(i == 1)
                    {
                        stringbuilder.append('x');
                    } else
                    {
                        stringbuilder.append("x^");
                        stringbuilder.append(i);
                    }
            }
            i--;
        } while(true);
    }

    private final c a;
    private final int b[];
}

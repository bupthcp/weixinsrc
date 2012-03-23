// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;

import a.b.a;
import a.d;

// Referenced classes of package a.a.b:
//            s, q, n

final class h
{

    h(a a1)
    {
        int i = a1.d();
        if(i < 21 || (i & 3) != 1)
        {
            throw d.a();
        } else
        {
            a = a1;
            return;
        }
    }

    private int a(int i, int j, int k)
    {
        int l;
        if(a.a(i, j))
            l = 1 | k << 1;
        else
            l = k << 1;
        return l;
    }

    final s a()
    {
        int i = 0;
        if(c == null) goto _L2; else goto _L1
_L1:
        s s1 = c;
_L9:
        return s1;
_L2:
        int j;
        int k;
        j = i;
        k = i;
_L10:
        if(j < 6) goto _L4; else goto _L3
_L3:
        int l;
        int i1;
        l = a(8, 7, a(8, 8, a(7, 8, k)));
        i1 = 5;
_L11:
        if(i1 >= 0) goto _L6; else goto _L5
_L5:
        int j1;
        int k1;
        int l1;
        j1 = a.d();
        k1 = j1 + -7;
        l1 = j1 + -1;
_L12:
        if(l1 >= k1) goto _L8; else goto _L7
_L7:
        int i2 = j1 + -8;
_L13:
        if(i2 < j1)
            break MISSING_BLOCK_LABEL_182;
        c = s.b(l, i);
        if(c != null)
            s1 = c;
        else
            throw d.a();
          goto _L9
_L4:
        k = a(j, 8, k);
        j++;
          goto _L10
_L6:
        l = a(8, i1, l);
        i1--;
          goto _L11
_L8:
        i = a(8, l1, i);
        l1--;
          goto _L12
        i = a(i2, 8, i);
        i2++;
          goto _L13
    }

    final q b()
    {
        if(b == null) goto _L2; else goto _L1
_L1:
        q q1 = b;
_L12:
        return q1;
_L2:
        int i;
        int j;
        i = a.d();
        j = i + -17 >> 2;
        if(j > 6) goto _L4; else goto _L3
_L3:
        q1 = q.b(j);
          goto _L5
_L4:
        int k;
        int l;
        int i1;
        k = i + -11;
        l = 5;
        i1 = 0;
_L9:
        if(l >= 0) goto _L7; else goto _L6
_L6:
        q1 = q.c(i1);
        if(q1 == null || q1.d() != i)
            break; /* Loop/switch isn't completed */
        b = q1;
          goto _L5
_L7:
        int j1 = i + -9;
_L10:
label0:
        {
            if(j1 >= k)
                break label0;
            l--;
        }
        if(true) goto _L9; else goto _L8
        i1 = a(j1, l, i1);
        j1--;
          goto _L10
_L8:
        int k1;
        int l1;
        k1 = 5;
        l1 = 0;
_L13:
label1:
        {
            if(k1 >= 0)
                break label1;
            q1 = q.c(l1);
            int i2;
            int j2;
            if(q1 != null && q1.d() == i)
                b = q1;
            else
                throw d.a();
        }
_L5:
        if(true) goto _L12; else goto _L11
_L11:
        i2 = i + -9;
_L14:
label2:
        {
            if(i2 >= k)
                break label2;
            k1--;
        }
          goto _L13
        j2 = a(k1, i2, l1);
        i2--;
        l1 = j2;
          goto _L14
    }

    final byte[] c()
    {
        q q1;
        int i;
        a a1;
        byte abyte0[];
        int j;
        int k;
        int l;
        int i1;
        boolean flag;
        s s1 = a();
        q1 = b();
        n n1 = a.a.b.n.a(s1.b());
        i = a.d();
        n1.a(a, i);
        a1 = q1.e();
        abyte0 = new byte[q1.c()];
        j = i + -1;
        k = 0;
        l = 0;
        i1 = 0;
        flag = true;
_L1:
        int j1;
        int k1;
        int l1;
        int i2;
        boolean flag1;
        if(j <= 0)
            if(i1 != q1.c())
                throw d.a();
            else
                return abyte0;
        if(j == 6)
            j--;
        j1 = 0;
label0:
        {
            if(j1 < i)
                break label0;
            flag1 = flag ^ true;
            j -= 2;
            flag = flag1;
        }
          goto _L1
        if(flag)
            k1 = (i + -1) - j1;
        else
            k1 = j1;
        l1 = 0;
_L3:
label1:
        {
            if(l1 < 2)
                break label1;
            j1++;
        }
        break MISSING_BLOCK_LABEL_101;
        if(!a1.a(j - l1, k1))
        {
            k++;
            l <<= 1;
            if(a.a(j - l1, k1))
                l |= 1;
            if(k == 8)
            {
                i2 = i1 + 1;
                abyte0[i1] = (byte)l;
                l = 0;
                i1 = i2;
                k = 0;
            }
        }
        l1++;
        if(true) goto _L3; else goto _L2
_L2:
    }

    private final a a;
    private q b;
    private s c;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b.a;


// Referenced classes of package a.b.a:
//            a, c, b

public final class d
{

    public d(c c1)
    {
        a = c1;
    }

    public final void a(int ai[], int i)
    {
        a a1;
        int ai1[];
        boolean flag;
        boolean flag1;
        int j;
        a1 = new a(a, ai);
        ai1 = new int[i];
        flag = a.equals(c.b);
        flag1 = true;
        j = 0;
_L5:
        if(j < i) goto _L2; else goto _L1
_L1:
        if(!flag1) goto _L4; else goto _L3
_L3:
        return;
_L2:
        c c1 = a;
        int k;
        int l;
        boolean flag2;
        if(flag)
            k = j + 1;
        else
            k = j;
        l = a1.b(c1.a(k));
        ai1[(-1 + ai1.length) - j] = l;
        a a2;
        a a3;
        a a4;
        a a5;
        a a6;
        a a7;
        a a8;
        a a9;
        a a10;
        a a11;
        int i1;
        int j1;
        a a12;
        a a13;
        a a14;
        int k1;
        int l1;
        int i2;
        int j2;
        a a15;
        a a16;
        a aa[];
        a a17;
        a a18;
        int k2;
        int ai2[];
        int l2;
        int i3;
        int ai3[];
        int j3;
        int ai4[];
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        int l4;
        int i5;
        int j5;
        int k5;
        if(l != 0)
            flag2 = false;
        else
            flag2 = flag1;
        j++;
        flag1 = flag2;
          goto _L5
_L4:
        a2 = new a(a, ai1);
        a3 = a.a(i, 1);
        if(a3.a() >= a2.a())
        {
            a4 = a2;
            a2 = a3;
            a3 = a4;
        }
        a5 = a.b();
        a6 = a.a();
        a7 = a.a();
        a8 = a.b();
        a9 = a3;
        a10 = a2;
        do
        {
label0:
            {
                if(a9.a() < i / 2)
                {
                    i2 = a8.a(0);
                    if(i2 == 0)
                        throw new b("sigmaTilde(0) was zero");
                    break label0;
                }
                if(a9.b())
                    throw new b("r_{i-1} was zero");
                a11 = a.a();
                i1 = a9.a(a9.a());
                j1 = a.c(i1);
                do
                {
label1:
                    {
                        if(a10.a() >= a9.a() && !a10.b())
                            break label1;
                        a12 = a11.b(a6).a(a5);
                        a13 = a11.b(a8).a(a7);
                        a7 = a8;
                        a8 = a13;
                        a5 = a6;
                        a6 = a12;
                        a14 = a9;
                        a9 = a10;
                        a10 = a14;
                    }
                    if(true)
                        break MISSING_BLOCK_LABEL_200;
                    k1 = a10.a() - a9.a();
                    l1 = a.c(a10.a(a10.a()), j1);
                    a11 = a11.a(a.a(k1, l1));
                    a10 = a10.a(a9.a(k1, l1));
                } while(true);
            }
        } while(true);
        j2 = a.c(i2);
        a15 = a8.c(j2);
        a16 = a9.c(j2);
        aa = new a[2];
        aa[0] = a15;
        aa[1] = a16;
        a17 = aa[0];
        a18 = aa[1];
        k2 = a17.a();
        if(k2 == 1)
        {
            ai3 = new int[1];
            ai3[0] = a17.a(1);
        } else
        {
            ai2 = new int[k2];
            l2 = 0;
            i3 = 1;
            do
            {
                if(i3 >= a.c() || l2 >= k2)
                {
                    if(l2 != k2)
                        throw new b("Error locator degree does not match number of roots");
                    break;
                }
                if(a17.b(i3) == 0)
                {
                    ai2[l2] = a.c(i3);
                    l2++;
                }
                i3++;
            } while(true);
            ai3 = ai2;
        }
        j3 = ai3.length;
        ai4 = new int[j3];
        k3 = 0;
_L8:
        if(k3 < j3) goto _L7; else goto _L6
_L6:
        j5 = 0;
_L10:
        if(j5 < ai3.length)
        {
            k5 = (-1 + ai.length) - a.b(ai3[j5]);
            if(k5 < 0)
                throw new b("Bad error location");
            break MISSING_BLOCK_LABEL_831;
        }
          goto _L3
_L7:
        l3 = a.c(ai3[k3]);
        i4 = 1;
        j4 = 0;
_L9:
label2:
        {
            if(j4 < j3)
                break label2;
            ai4[k3] = a.c(a18.b(l3), a.c(i4));
            if(flag)
                ai4[k3] = a.c(ai4[k3], l3);
            k3++;
        }
          goto _L8
        if(k3 != j4)
        {
            l4 = a.c(ai3[j4], l3);
            if((l4 & 1) == 0)
                i5 = l4 | 1;
            else
                i5 = l4 & -2;
            k4 = a.c(i4, i5);
        } else
        {
            k4 = i4;
        }
        j4++;
        i4 = k4;
          goto _L9
        ai[k5] = c.b(ai[k5], ai4[j5]);
        j5++;
          goto _L10
    }

    private final c a;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import a.b;
import a.b.a;
import a.*;
import java.util.*;

// Referenced classes of package a.a.a:
//            e, f, b, a

public final class h
{

    public h(a a1, b b1)
    {
        a = a1;
        e = b1;
    }

    private static float a(int ai[], int i)
    {
        return (float)(i - ai[4] - ai[3]) - (float)ai[2] / 2F;
    }

    private static boolean a(int ai[])
    {
        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        int j = ((flag) ? 1 : 0);
        do
        {
label0:
            {
                {
                    if(i < 5)
                        break label0;
                    int k;
                    if(j >= 7)
                    {
                        int i1 = (j << 8) / 7;
                        int j1 = i1 / 2;
                        if(Math.abs(i1 - (ai[flag] << 8)) < j1 && Math.abs(i1 - (ai[1] << 8)) < j1 && Math.abs(i1 * 3 - (ai[2] << 8)) < j1 * 3 && Math.abs(i1 - (ai[3] << 8)) < j1 && Math.abs(i1 - (ai[4] << 8)) < j1)
                            flag = true;
                    }
                }
                return flag;
            }
            k = ai[i];
            if(k == 0)
                break MISSING_BLOCK_LABEL_17;
            j += k;
            i++;
        } while(true);
    }

    private boolean a(int ai[], int i, int j)
    {
        int k;
        int i1;
        int j1;
        a a1;
        int k1;
        int ai1[];
        int l1;
        k = ai[0] + ai[1] + ai[2] + ai[3] + ai[4];
        i1 = (int)a(ai, j);
        j1 = ai[2];
        a1 = a;
        k1 = a1.d();
        ai1 = a();
        l1 = i;
_L5:
        if(l1 >= 0 && a1.a(i1, l1)) goto _L2; else goto _L1
_L1:
        float f1;
        boolean flag;
        int i2;
        int j2;
        a a2;
        int k2;
        int ai2[];
        int l2;
        float f2;
        float f3;
        int i3;
        if(l1 < 0)
        {
            f1 = (0.0F / 0.0F);
        } else
        {
            for(; l1 >= 0 && !a1.a(i1, l1) && ai1[1] <= j1; l1--)
                ai1[1] = 1 + ai1[1];

            if(l1 < 0 || ai1[1] > j1)
            {
                f1 = (0.0F / 0.0F);
            } else
            {
label0:
                {
                    for(; l1 >= 0 && a1.a(i1, l1) && ai1[0] <= j1; l1--)
                        ai1[0] = 1 + ai1[0];

                    if(ai1[0] <= j1)
                        break label0;
                    f1 = (0.0F / 0.0F);
                }
            }
        }
_L6:
        if(Float.isNaN(f1))
            break MISSING_BLOCK_LABEL_1045;
        i2 = (int)f1;
        j2 = ai[2];
        a2 = a;
        k2 = a2.c();
        ai2 = a();
        l2 = i1;
_L8:
        if(l2 >= 0 && a2.a(l2, i2)) goto _L4; else goto _L3
_L3:
        if(l2 < 0)
        {
            f2 = (0.0F / 0.0F);
        } else
        {
            for(; l2 >= 0 && !a2.a(l2, i2) && ai2[1] <= j2; l2--)
                ai2[1] = 1 + ai2[1];

            if(l2 < 0 || ai2[1] > j2)
            {
                f2 = (0.0F / 0.0F);
            } else
            {
label1:
                {
                    for(; l2 >= 0 && a2.a(l2, i2) && ai2[0] <= j2; l2--)
                        ai2[0] = 1 + ai2[0];

                    if(ai2[0] <= j2)
                        break label1;
                    f2 = (0.0F / 0.0F);
                }
            }
        }
_L9:
        if(Float.isNaN(f2))
            break MISSING_BLOCK_LABEL_1045;
        f3 = (float)k / 7F;
        i3 = 0;
_L11:
        boolean flag1;
        int j3;
        int k3;
        if(i3 >= b.size())
        {
            flag1 = false;
        } else
        {
label2:
            {
                e e1 = (e)b.get(i3);
                if(!e1.a(f3, f1, f2))
                    break label2;
                b.set(i3, e1.b(f1, f2, f3));
                flag1 = true;
            }
        }
        if(!flag1)
        {
            e e2 = new e(f2, f1, f3);
            b.add(e2);
        }
        flag = true;
_L12:
        return flag;
_L2:
        ai1[2] = 1 + ai1[2];
        l1--;
          goto _L5
        k3 = i + 1;
_L7:
label3:
        {
            if(k3 < k1 && a1.a(i1, k3))
                break label3;
            if(k3 == k1)
            {
                f1 = (0.0F / 0.0F);
            } else
            {
                for(; k3 < k1 && !a1.a(i1, k3) && ai1[3] < j1; k3++)
                    ai1[3] = 1 + ai1[3];

                if(k3 == k1 || ai1[3] >= j1)
                {
                    f1 = (0.0F / 0.0F);
                } else
                {
                    for(; k3 < k1 && a1.a(i1, k3) && ai1[4] < j1; k3++)
                        ai1[4] = 1 + ai1[4];

                    if(ai1[4] >= j1)
                        f1 = (0.0F / 0.0F);
                    else
                    if(5 * Math.abs((ai1[0] + ai1[1] + ai1[2] + ai1[3] + ai1[4]) - k) >= k * 2)
                        f1 = (0.0F / 0.0F);
                    else
                    if(a(ai1))
                        f1 = a(ai1, k3);
                    else
                        f1 = (0.0F / 0.0F);
                }
            }
        }
          goto _L6
        ai1[2] = 1 + ai1[2];
        k3++;
          goto _L7
_L4:
        ai2[2] = 1 + ai2[2];
        l2--;
          goto _L8
        j3 = i1 + 1;
_L10:
label4:
        {
            if(j3 < k2 && a2.a(j3, i2))
                break label4;
            if(j3 == k2)
            {
                f2 = (0.0F / 0.0F);
            } else
            {
                for(; j3 < k2 && !a2.a(j3, i2) && ai2[3] < j2; j3++)
                    ai2[3] = 1 + ai2[3];

                if(j3 == k2 || ai2[3] >= j2)
                {
                    f2 = (0.0F / 0.0F);
                } else
                {
                    for(; j3 < k2 && a2.a(j3, i2) && ai2[4] < j2; j3++)
                        ai2[4] = 1 + ai2[4];

                    if(ai2[4] >= j2)
                        f2 = (0.0F / 0.0F);
                    else
                    if(5 * Math.abs((ai2[0] + ai2[1] + ai2[2] + ai2[3] + ai2[4]) - k) >= k)
                        f2 = (0.0F / 0.0F);
                    else
                    if(a(ai2))
                        f2 = a(ai2, j3);
                    else
                        f2 = (0.0F / 0.0F);
                }
            }
        }
          goto _L9
        ai2[2] = 1 + ai2[2];
        j3++;
          goto _L10
        i3++;
          goto _L11
        flag = false;
          goto _L12
    }

    private int[] a()
    {
        d[0] = 0;
        d[1] = 0;
        d[2] = 0;
        d[3] = 0;
        d[4] = 0;
        return d;
    }

    private boolean b()
    {
        float f1;
        boolean flag;
        int i;
        Iterator iterator;
        float f2;
        int j;
        f1 = 0F;
        flag = false;
        i = b.size();
        iterator = b.iterator();
        f2 = f1;
        j = ((flag) ? 1 : 0);
_L5:
        if(iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if(j >= 3) goto _L4; else goto _L3
_L3:
        return flag;
_L2:
        e e1 = (e)iterator.next();
        if(e1.d() >= 2)
        {
            j++;
            f2 += e1.c();
        }
          goto _L5
_L4:
        float f3;
        f3 = f2 / (float)i;
_L6:
        Iterator iterator1;
label0:
        {
            for(iterator1 = b.iterator(); iterator1.hasNext();)
                break label0;

            if(f1 <= 0.05F * f2)
                flag = true;
        }
          goto _L3
        f1 += Math.abs(((e)iterator1.next()).c() - f3);
          goto _L6
    }

    final a.a.a.a a(Map map)
    {
        boolean flag;
        int i;
        int j;
        int k;
        int i1;
        boolean flag1;
        int ai[];
        int j1;
        int k1;
        int l1;
        if(map != null && map.containsKey(l.c))
            flag = true;
        else
            flag = false;
        i = a.d();
        j = a.c();
        k = (i * 3) / 228;
        e ae[];
        Iterator iterator;
        float f1;
        float f2;
        Iterator iterator1;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        int i2;
        int j2;
        int k2;
        Iterator iterator2;
        e e1;
        e e2;
        int l2;
        int i3;
        int j3;
        boolean flag2;
        boolean flag3;
        int k3;
        if(k < 3 || flag)
            i1 = 3;
        else
            i1 = k;
        flag1 = false;
        ai = new int[5];
        j1 = i1 + -1;
        k1 = i1;
        if(j1 >= i || flag1)
        {
            l1 = b.size();
            if(l1 < 3)
                throw g.a();
            break MISSING_BLOCK_LABEL_625;
        }
        ai[0] = 0;
        ai[1] = 0;
        ai[2] = 0;
        ai[3] = 0;
        ai[4] = 0;
        j2 = 0;
        k2 = 0;
_L2:
label0:
        {
            if(k2 < j)
                break label0;
            if(a(ai) && a(ai, j1, j))
            {
                k1 = ai[0];
                if(c)
                    flag1 = b();
            }
            j1 += k1;
        }
        if(true)
            break MISSING_BLOCK_LABEL_76;
        if(!a.a(k2, j1))
            break; /* Loop/switch isn't completed */
        if((j2 & 1) == 1)
            j2++;
        ai[j2] = 1 + ai[j2];
_L5:
        k2++;
        if(true) goto _L2; else goto _L1
_L1:
        if((j2 & 1) != 0)
            break MISSING_BLOCK_LABEL_610;
        if(j2 != 4)
            break MISSING_BLOCK_LABEL_592;
        if(!a(ai))
            break MISSING_BLOCK_LABEL_552;
        if(!a(ai, j1, k2))
            break MISSING_BLOCK_LABEL_512;
        if(!c) goto _L4; else goto _L3
_L3:
        flag3 = b();
        j3 = j1;
        k3 = k2;
        flag2 = flag3;
        i3 = k3;
_L8:
        ai[0] = 0;
        ai[1] = 0;
        ai[2] = 0;
        ai[3] = 0;
        ai[4] = 0;
        flag1 = flag2;
        k2 = i3;
        j2 = 0;
        j1 = j3;
        k1 = 2;
          goto _L5
_L4:
        if(b.size() > 1) goto _L7; else goto _L6
_L6:
        l2 = 0;
_L9:
        if(l2 > ai[2])
        {
            j3 = j1 + (-2 + (l2 - ai[2]));
            i3 = j + -1;
            flag2 = flag1;
        } else
        {
            i3 = k2;
            j3 = j1;
            flag2 = flag1;
        }
          goto _L8
_L7:
        iterator2 = b.iterator();
        e1 = null;
_L10:
label1:
        {
            if(iterator2.hasNext())
                break label1;
            l2 = 0;
        }
          goto _L9
        e2 = (e)iterator2.next();
        if(e2.d() >= 2)
        {
label2:
            {
                if(e1 != null)
                    break label2;
                e1 = e2;
            }
        }
          goto _L10
        c = true;
        l2 = (int)(Math.abs(e1.a() - e2.a()) - Math.abs(e1.b() - e2.b())) / 2;
          goto _L9
        ai[0] = ai[2];
        ai[1] = ai[3];
        ai[2] = ai[4];
        ai[3] = 1;
        ai[4] = 0;
        j2 = 3;
          goto _L5
        ai[0] = ai[2];
        ai[1] = ai[3];
        ai[2] = ai[4];
        ai[3] = 1;
        ai[4] = 0;
        j2 = 3;
          goto _L5
        j2++;
        ai[j2] = 1 + ai[j2];
          goto _L5
        ai[j2] = 1 + ai[j2];
          goto _L5
        if(l1 <= 3) goto _L12; else goto _L11
_L11:
        iterator1 = b.iterator();
        f3 = 0F;
        f4 = 0F;
_L15:
        if(iterator1.hasNext()) goto _L14; else goto _L13
_L13:
        f6 = f3 / (float)l1;
        f7 = (float)Math.sqrt(f4 / (float)l1 - f6 * f6);
        Collections.sort(b, new a.a.a.f(f6));
        f8 = Math.max(0.2F * f6, f7);
        i2 = 0;
_L16:
        if(i2 < b.size() && b.size() > 3)
            break MISSING_BLOCK_LABEL_945;
_L12:
        if(b.size() > 3)
        {
            iterator = b.iterator();
            for(f1 = 0F; iterator.hasNext(); f1 += ((e)iterator.next()).c())
                break MISSING_BLOCK_LABEL_995;

            f2 = f1 / (float)b.size();
            Collections.sort(b, new a.a.a.b(f2));
            b.subList(3, b.size()).clear();
        }
        ae = new e[3];
        ae[0] = (e)b.get(0);
        ae[1] = (e)b.get(1);
        ae[2] = (e)b.get(2);
        f.a(ae);
        return new a.a.a.a(ae);
_L14:
        f5 = ((e)iterator1.next()).c();
        f3 += f5;
        f4 += f5 * f5;
          goto _L15
        if(Math.abs(((e)b.get(i2)).c() - f6) > f8)
        {
            b.remove(i2);
            i2--;
        }
        i2++;
          goto _L16
    }

    private final a a;
    private final List b = new ArrayList();
    private boolean c;
    private final int d[] = new int[5];
    private final b e;
}

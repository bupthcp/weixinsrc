// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;

import a.o;
import java.lang.reflect.Array;

// Referenced classes of package a.b:
//            c, a

public final class f extends c
{

    public f(o o1)
    {
        this(o1, (byte)0);
        b = true;
    }

    public f(o o1, byte byte0)
    {
        super(o1);
        b = false;
    }

    public final a a()
    {
        if(!b) goto _L2; else goto _L1
_L1:
        a a1;
        byte abyte1[];
        int j9;
        int k9;
        if(a != null)
        {
            a1 = a;
        } else
        {
label0:
            {
                o o2 = b();
                abyte1 = o2.a();
                j9 = o2.c();
                k9 = o2.d();
                if(o2.c() >= 40 && o2.d() >= 40)
                    break label0;
                a = super.a();
                a1 = a;
            }
        }
_L11:
        return a1;
        a a3;
        int ai4[][];
        int l9;
        a3 = new a(j9, k9);
        int ai3[] = new int[2];
        ai3[0] = k9;
        ai3[1] = j9;
        ai4 = (int[][])Array.newInstance(Integer.TYPE, ai3);
        ai4[0][0] = 0xff & abyte1[0];
        l9 = 1;
_L12:
        if(l9 < j9) goto _L4; else goto _L3
_L3:
        int i10 = 1;
_L13:
        if(i10 < k9) goto _L6; else goto _L5
_L5:
        boolean aflag[][];
        int k10;
        int ai5[] = new int[2];
        ai5[0] = k9;
        ai5[1] = j9;
        aflag = (boolean[][])Array.newInstance(Boolean.TYPE, ai5);
        k10 = 0;
_L15:
        if(k10 < k9) goto _L8; else goto _L7
_L7:
        int i11;
        int j11;
        i11 = ai4[k9 + -1][j9 + -1] / (k9 * j9);
        j11 = 0;
_L17:
        if(j11 < k9) goto _L10; else goto _L9
_L9:
        a = a3;
        a1 = a3;
          goto _L11
_L4:
        ai4[0][l9] = ai4[0][l9 + -1] + (0xff & abyte1[l9]);
        l9++;
          goto _L12
_L6:
        int j10;
        ai4[i10][0] = ai4[i10 + -1][0] + (0xff & abyte1[i10 * j9]);
        j10 = 1;
_L14:
label1:
        {
            if(j10 < j9)
                break label1;
            i10++;
        }
          goto _L13
        ai4[i10][j10] = ((ai4[i10 + -1][j10] + ai4[i10][j10 + -1]) - ai4[i10 + -1][j10 + -1]) + (0xff & abyte1[j10 + i10 * j9]);
        j10++;
          goto _L14
_L8:
        int l10 = 0;
_L16:
label2:
        {
            if(l10 < j9)
                break label2;
            k10++;
        }
          goto _L15
        aflag[k10][l10] = false;
        l10++;
          goto _L16
_L10:
        int k11 = 0;
_L20:
label3:
        {
            if(k11 < j9)
                break label3;
            j11++;
        }
          goto _L17
        int l11 = 0xff & abyte1[k11 + j11 * j9];
        if((double)l11 >= 0.59999999999999998D * (double)i11) goto _L19; else goto _L18
_L18:
        a3.b(k11, j11);
_L22:
        k11++;
          goto _L20
_L19:
        if((double)l11 > 1.3D * (double)i11) goto _L22; else goto _L21
_L21:
        int i12;
        int j12;
        i12 = j9 >> 1;
        j12 = k9 >> 1;
_L26:
        float f1;
        int k12 = k11 - (i12 >> 1);
        int l12 = k11 + (i12 >> 1);
        int i13 = j11 - (j12 >> 1);
        int j13 = j11 + (j12 >> 1);
        if(k12 < 0)
        {
            k12 = 0;
            l12 = i12;
        }
        if(l12 >= j9)
        {
            l12 = j9 + -1;
            k12 = j9 - i12;
        }
        if(i13 < 0)
        {
            i13 = 0;
            j13 = j12;
        }
        if(j13 >= k9)
        {
            j13 = k9 + -1;
            i13 = k9 - j12;
        }
        int k13 = (j13 - i13) * (l12 - k12);
        f1 = (1F * (float)((ai4[j13][l12] - ai4[i13][l12] - ai4[j13][k12]) + ai4[i13][k12])) / (float)k13;
        if((float)l11 < 0.7F * f1)
            break MISSING_BLOCK_LABEL_768;
        if((float)l11 <= 1.2F * f1) goto _L24; else goto _L23
_L23:
        boolean flag = false;
_L27:
        if(flag)
            a3.b(k11, j11);
          goto _L22
_L24:
        j12 >>= 1;
        i12 >>= 1;
        if(j12 > 40 && i12 > 40) goto _L26; else goto _L25
_L25:
        if(l11 < 60 || (double)l11 < 0.90000000000000002D * (double)f1)
            break MISSING_BLOCK_LABEL_768;
        flag = false;
          goto _L27
        flag = true;
          goto _L27
_L2:
        if(a != null) goto _L29; else goto _L28
_L28:
        o o1 = b();
        if(o1.c() < 40 || o1.d() < 40) goto _L31; else goto _L30
_L30:
        byte abyte0[] = o1.a();
        int i = o1.c();
        int j = o1.d();
        int k = i >> 3;
        int l;
        int i1;
        int j1;
        int ai[];
        int ai1[][];
        int k1;
        a a2;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int ai2[];
        int k4;
        int l4;
        int i5;
        int j5;
        int k5;
        int l5;
        int i6;
        int j6;
        int k6;
        int l6;
        int i7;
        int j7;
        int k7;
        int l7;
        int i8;
        int j8;
        int k8;
        int l8;
        int i9;
        if((i & 7) != 0)
            l = k + 1;
        else
            l = k;
        i1 = j >> 3;
        if((j & 7) != 0)
            j1 = i1 + 1;
        else
            j1 = i1;
        ai = new int[2];
        ai[0] = j1;
        ai[1] = l;
        ai1 = (int[][])Array.newInstance(Integer.TYPE, ai);
        k1 = 0;
        if(k1 < j1) goto _L33; else goto _L32
_L32:
        a2 = new a(i, j);
        l1 = 0;
_L41:
        if(l1 < j1) goto _L35; else goto _L34
_L34:
        a = a2;
_L29:
        a1 = a;
          goto _L11
_L33:
        l5 = k1 << 3;
        if(l5 + 8 >= j)
            l5 = j + -8;
        i6 = 0;
_L38:
label4:
        {
            if(i6 < l)
                break label4;
            k1++;
        }
        break MISSING_BLOCK_LABEL_894;
        j6 = i6 << 3;
        if(j6 + 8 >= i)
            j6 = i + -8;
        k6 = j6 + l5 * i;
        l6 = 0;
        i7 = 0;
        j7 = 255;
        k7 = 0;
_L39:
        if(l6 < 8) goto _L37; else goto _L36
_L36:
        l8 = k7 >> 6;
        if(i7 - j7 <= 24)
        {
            i9 = j7 >> 1;
            if(k1 <= 0 || i6 <= 0)
                break MISSING_BLOCK_LABEL_1557;
            l8 = ai1[k1 + -1][i6] + 2 * ai1[k1][i6 + -1] + ai1[k1 + -1][i6 + -1] >> 2;
            if(j7 >= l8)
                break MISSING_BLOCK_LABEL_1557;
        }
_L42:
        ai1[k1][i6] = l8;
        i6++;
          goto _L38
_L37:
        l7 = k7;
        i8 = 0;
_L40:
label5:
        {
            if(i8 < 8)
                break label5;
            k8 = l6 + 1;
            k6 += i;
            l6 = k8;
            k7 = l7;
        }
          goto _L39
        j8 = 0xff & abyte0[k6 + i8];
        l7 += j8;
        if(j8 < j7)
            j7 = j8;
        if(j8 <= i7)
            j8 = i7;
        i8++;
        i7 = j8;
          goto _L40
_L35:
        i2 = l1 << 3;
        if(i2 + 8 >= j)
            j2 = j + -8;
        else
            j2 = i2;
        k2 = 0;
label6:
        {
            if(k2 < l)
                break label6;
            l1++;
        }
          goto _L41
        l2 = k2 << 3;
        if(l2 + 8 >= i)
            i3 = i + -8;
        else
            i3 = l2;
        if(k2 > 1)
            j3 = k2;
        else
            j3 = 2;
        if(j3 < l + -2)
            k3 = j3;
        else
            k3 = l + -3;
        if(l1 > 1)
            l3 = l1;
        else
            l3 = 2;
        if(l3 >= j1 + -2)
            l3 = j1 + -3;
        i4 = 0;
        j4 = -2;
        if(j4 > 2)
        {
            k4 = i4 / 25;
            l4 = i3 + j2 * i;
            i5 = 0;
            j5 = l4;
            break MISSING_BLOCK_LABEL_1360;
        } else
        {
            ai2 = ai1[l3 + j4];
            i4 += ai2[k3 + -2] + ai2[k3 + -1] + ai2[k3] + ai2[k3 + 1] + ai2[k3 + 2];
            j4++;
            break MISSING_BLOCK_LABEL_1330;
        }
        do
        {
            if(i5 >= 8)
            {
                k2++;
                break MISSING_BLOCK_LABEL_1243;
            }
            k5 = 0;
            do
            {
label7:
                {
                    if(k5 < 8)
                        break label7;
                    i5++;
                    j5 += i;
                }
                if(true)
                    break;
                if((double)(0xff & abyte0[j5 + k5]) <= 0.90000000000000002D * (double)k4)
                    a2.b(i3 + k5, j2 + i5);
                k5++;
            } while(true);
        } while(true);
_L31:
        a = super.a();
          goto _L29
        l8 = i9;
          goto _L42
    }

    private a a;
    private boolean b;
}

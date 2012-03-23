// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;


// Referenced classes of package a.a.b:
//            b

final class s
{

    private s(int i)
    {
        c = a.a.b.b.a(3 & i >> 3);
        d = (byte)(i & 7);
    }

    static int a(int i, int j)
    {
        int k = i ^ j;
        return b[k & 0xf] + b[0xf & k >>> 4] + b[0xf & k >>> 8] + b[0xf & k >>> 12] + b[0xf & k >>> 16] + b[0xf & k >>> 20] + b[0xf & k >>> 24] + b[0xf & k >>> 28];
    }

    static s b(int i, int j)
    {
        s s1 = c(i, j);
        if(s1 == null)
            s1 = c(i ^ 0x5412, j ^ 0x5412);
        return s1;
    }

    private static s c(int i, int j)
    {
        int k;
        int ai[][];
        int l;
        int i1;
        int j1;
        k = 0x7fffffff;
        ai = a;
        l = ai.length;
        i1 = 0;
        j1 = 0;
_L4:
label0:
        {
            {
                if(i1 < l)
                    break label0;
                int ai1[];
                int k1;
                s s1;
                int k2;
                if(k <= 3)
                    s1 = new s(j1);
                else
                    s1 = null;
            }
            return s1;
        }
        ai1 = ai[i1];
        k1 = ai1[0];
        if(k1 != i && k1 != j)
            break; /* Loop/switch isn't completed */
        s1 = new s(ai1[1]);
        if(true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_40;
_L1:
        int l1 = a(i, k1);
        int i2;
        int j2;
        if(l1 < k)
        {
            i2 = ai1[1];
        } else
        {
            l1 = k;
            i2 = j1;
        }
        if(i == j)
            break; /* Loop/switch isn't completed */
        j2 = a(j, k1);
        if(j2 >= l1)
            break; /* Loop/switch isn't completed */
        i2 = ai1[1];
        i1++;
        k2 = i2;
        k = j2;
        j1 = k2;
        if(true) goto _L4; else goto _L3
_L3:
        j2 = l1;
        break MISSING_BLOCK_LABEL_129;
        if(true) goto _L4; else goto _L5
_L5:
    }

    final b a()
    {
        return c;
    }

    final byte b()
    {
        return d;
    }

    public final boolean equals(Object obj)
    {
        boolean flag = false;
        if(obj instanceof s) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        s s1 = (s)obj;
        if(c == s1.c && d == s1.d)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final int hashCode()
    {
        return c.ordinal() << 3 | d;
    }

    private static final int a[][];
    private static final int b[];
    private final b c;
    private final byte d;

    static 
    {
        int ai[][] = new int[32][];
        int ai1[] = new int[2];
        ai1[0] = 21522;
        ai[0] = ai1;
        int ai2[] = new int[2];
        ai2[0] = 20773;
        ai2[1] = 1;
        ai[1] = ai2;
        int ai3[] = new int[2];
        ai3[0] = 24188;
        ai3[1] = 2;
        ai[2] = ai3;
        int ai4[] = new int[2];
        ai4[0] = 23371;
        ai4[1] = 3;
        ai[3] = ai4;
        int ai5[] = new int[2];
        ai5[0] = 17913;
        ai5[1] = 4;
        ai[4] = ai5;
        int ai6[] = new int[2];
        ai6[0] = 16590;
        ai6[1] = 5;
        ai[5] = ai6;
        int ai7[] = new int[2];
        ai7[0] = 20375;
        ai7[1] = 6;
        ai[6] = ai7;
        int ai8[] = new int[2];
        ai8[0] = 19104;
        ai8[1] = 7;
        ai[7] = ai8;
        int ai9[] = new int[2];
        ai9[0] = 30660;
        ai9[1] = 8;
        ai[8] = ai9;
        int ai10[] = new int[2];
        ai10[0] = 29427;
        ai10[1] = 9;
        ai[9] = ai10;
        int ai11[] = new int[2];
        ai11[0] = 32170;
        ai11[1] = 10;
        ai[10] = ai11;
        int ai12[] = new int[2];
        ai12[0] = 30877;
        ai12[1] = 11;
        ai[11] = ai12;
        int ai13[] = new int[2];
        ai13[0] = 26159;
        ai13[1] = 12;
        ai[12] = ai13;
        int ai14[] = new int[2];
        ai14[0] = 25368;
        ai14[1] = 13;
        ai[13] = ai14;
        int ai15[] = new int[2];
        ai15[0] = 27713;
        ai15[1] = 14;
        ai[14] = ai15;
        int ai16[] = new int[2];
        ai16[0] = 26998;
        ai16[1] = 15;
        ai[15] = ai16;
        int ai17[] = new int[2];
        ai17[0] = 5769;
        ai17[1] = 16;
        ai[16] = ai17;
        int ai18[] = new int[2];
        ai18[0] = 5054;
        ai18[1] = 17;
        ai[17] = ai18;
        int ai19[] = new int[2];
        ai19[0] = 7399;
        ai19[1] = 18;
        ai[18] = ai19;
        int ai20[] = new int[2];
        ai20[0] = 6608;
        ai20[1] = 19;
        ai[19] = ai20;
        int ai21[] = new int[2];
        ai21[0] = 1890;
        ai21[1] = 20;
        ai[20] = ai21;
        int ai22[] = new int[2];
        ai22[0] = 597;
        ai22[1] = 21;
        ai[21] = ai22;
        int ai23[] = new int[2];
        ai23[0] = 3340;
        ai23[1] = 22;
        ai[22] = ai23;
        int ai24[] = new int[2];
        ai24[0] = 2107;
        ai24[1] = 23;
        ai[23] = ai24;
        int ai25[] = new int[2];
        ai25[0] = 13663;
        ai25[1] = 24;
        ai[24] = ai25;
        int ai26[] = new int[2];
        ai26[0] = 12392;
        ai26[1] = 25;
        ai[25] = ai26;
        int ai27[] = new int[2];
        ai27[0] = 16177;
        ai27[1] = 26;
        ai[26] = ai27;
        int ai28[] = new int[2];
        ai28[0] = 14854;
        ai28[1] = 27;
        ai[27] = ai28;
        int ai29[] = new int[2];
        ai29[0] = 9396;
        ai29[1] = 28;
        ai[28] = ai29;
        int ai30[] = new int[2];
        ai30[0] = 8579;
        ai30[1] = 29;
        ai[29] = ai30;
        int ai31[] = new int[2];
        ai31[0] = 11994;
        ai31[1] = 30;
        ai[30] = ai31;
        int ai32[] = new int[2];
        ai32[0] = 11245;
        ai32[1] = 31;
        ai[31] = ai32;
        a = ai;
        int ai33[] = new int[16];
        ai33[1] = 1;
        ai33[2] = 1;
        ai33[3] = 2;
        ai33[4] = 1;
        ai33[5] = 2;
        ai33[6] = 2;
        ai33[7] = 3;
        ai33[8] = 1;
        ai33[9] = 2;
        ai33[10] = 2;
        ai33[11] = 3;
        ai33[12] = 2;
        ai33[13] = 3;
        ai33[14] = 3;
        ai33[15] = 4;
        b = ai33;
    }
}

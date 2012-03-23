// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;

import java.util.HashMap;
import java.util.Map;

public final class e extends Enum
{

    private e(String s1, int i1, int j1)
    {
        int ai[] = new int[1];
        ai[0] = j1;
        this(s1, i1, ai, new String[0]);
    }

    private transient e(String s1, int i1, int ai[], String as[])
    {
        super(s1, i1);
        t = ai;
        u = as;
    }

    public static e a(int i1)
    {
        if(i1 < 0 || i1 >= 900)
            throw new IllegalArgumentException((new StringBuilder("Bad ECI value: ")).append(i1).toString());
        else
            return (e)r.get(Integer.valueOf(i1));
    }

    public static e valueOf(String s1)
    {
        return (e)Enum.valueOf(a/b/e, s1);
    }

    public static e[] values()
    {
        e ae[] = v;
        int i1 = ae.length;
        e ae1[] = new e[i1];
        System.arraycopy(ae, 0, ae1, 0, i1);
        return ae1;
    }

    private static e a;
    private static e b;
    private static e c;
    private static e d;
    private static e e;
    private static e f;
    private static e g;
    private static e h;
    private static e i;
    private static e j;
    private static e k;
    private static e l;
    private static e m;
    private static e n;
    private static e o;
    private static e p;
    private static e q;
    private static final Map r;
    private static final Map s;
    private static final e v[];
    private final int t[];
    private final String u[];

    static 
    {
        e ae1[];
        int i1;
        int j1;
        int ai[] = new int[2];
        ai[1] = 2;
        a = new e("Cp437", 0, ai, new String[0]);
        int ai1[] = new int[2];
        ai1[0] = 1;
        ai1[1] = 3;
        String as[] = new String[1];
        as[0] = "ISO-8859-1";
        b = new e("ISO8859_1", 1, ai1, as);
        c = new e("ISO8859_2", 2, 4);
        d = new e("ISO8859_3", 3, 5);
        e = new e("ISO8859_4", 4, 6);
        f = new e("ISO8859_5", 5, 7);
        g = new e("ISO8859_6", 6, 8);
        h = new e("ISO8859_7", 7, 9);
        i = new e("ISO8859_8", 8, 10);
        j = new e("ISO8859_9", 9, 11);
        k = new e("ISO8859_10", 10, 12);
        l = new e("ISO8859_11", 11, 13);
        m = new e("ISO8859_13", 12, 15);
        n = new e("ISO8859_14", 13, 16);
        o = new e("ISO8859_15", 14, 7);
        p = new e("ISO8859_16", 15, 18);
        int ai2[] = new int[1];
        ai2[0] = 20;
        String as1[] = new String[1];
        as1[0] = "Shift_JIS";
        q = new e("SJIS", 16, ai2, as1);
        e ae[] = new e[17];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        ae[4] = e;
        ae[5] = f;
        ae[6] = g;
        ae[7] = h;
        ae[8] = i;
        ae[9] = j;
        ae[10] = k;
        ae[11] = l;
        ae[12] = m;
        ae[13] = n;
        ae[14] = o;
        ae[15] = p;
        ae[16] = q;
        v = ae;
        r = new HashMap();
        s = new HashMap();
        ae1 = values();
        i1 = ae1.length;
        j1 = 0;
_L3:
        e e1;
        int ai3[];
        int k1;
        int l1;
        if(j1 >= i1)
            return;
        e1 = ae1[j1];
        ai3 = e1.t;
        k1 = ai3.length;
        l1 = 0;
_L4:
        if(l1 < k1) goto _L2; else goto _L1
_L1:
        String as2[];
        int j2;
        int k2;
        s.put(e1.name(), e1);
        as2 = e1.u;
        j2 = as2.length;
        k2 = 0;
_L5:
        if(k2 < j2)
            break MISSING_BLOCK_LABEL_604;
        j1++;
          goto _L3
_L2:
        int i2 = ai3[l1];
        r.put(Integer.valueOf(i2), e1);
        l1++;
          goto _L4
        String s1 = as2[k2];
        s.put(s1, e1);
        k2++;
          goto _L5
    }
}

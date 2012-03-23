// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;


// Referenced classes of package a.a.b:
//            q

public final class o extends Enum
{

    private o(String s, int i1, int ai[], int j1)
    {
        super(s, i1);
        k = ai;
        l = j1;
    }

    public static o a(int i1)
    {
        i1;
        JVM INSTR tableswitch 0 13: default 72
    //                   0 80
    //                   1 86
    //                   2 93
    //                   3 100
    //                   4 107
    //                   5 114
    //                   6 72
    //                   7 121
    //                   8 128
    //                   9 135
    //                   10 72
    //                   11 72
    //                   12 72
    //                   13 142;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L1 _L8 _L9 _L10 _L1 _L1 _L1 _L11
_L1:
        throw new IllegalArgumentException();
_L2:
        o o1 = a;
_L13:
        return o1;
_L3:
        o1 = b;
        continue; /* Loop/switch isn't completed */
_L4:
        o1 = c;
        continue; /* Loop/switch isn't completed */
_L5:
        o1 = d;
        continue; /* Loop/switch isn't completed */
_L6:
        o1 = e;
        continue; /* Loop/switch isn't completed */
_L7:
        o1 = h;
        continue; /* Loop/switch isn't completed */
_L8:
        o1 = f;
        continue; /* Loop/switch isn't completed */
_L9:
        o1 = g;
        continue; /* Loop/switch isn't completed */
_L10:
        o1 = i;
        continue; /* Loop/switch isn't completed */
_L11:
        o1 = j;
        if(true) goto _L13; else goto _L12
_L12:
    }

    public static o valueOf(String s)
    {
        return (o)Enum.valueOf(a/a/b/o, s);
    }

    public static o[] values()
    {
        o ao[] = m;
        int i1 = ao.length;
        o ao1[] = new o[i1];
        System.arraycopy(ao, 0, ao1, 0, i1);
        return ao1;
    }

    public final int a(q q1)
    {
        int i1 = q1.a();
        int j1;
        if(i1 <= 9)
            j1 = 0;
        else
        if(i1 <= 26)
            j1 = 1;
        else
            j1 = 2;
        return k[j1];
    }

    public static final o a;
    public static final o b;
    public static final o c;
    public static final o d;
    public static final o e;
    public static final o f;
    public static final o g;
    public static final o h;
    public static final o i;
    public static final o j;
    private static final o m[];
    private final int k[];
    private final int l;

    static 
    {
        a = new o("TERMINATOR", 0, new int[3], 0);
        int ai[] = new int[3];
        ai[0] = 10;
        ai[1] = 12;
        ai[2] = 14;
        b = new o("NUMERIC", 1, ai, 1);
        int ai1[] = new int[3];
        ai1[0] = 9;
        ai1[1] = 11;
        ai1[2] = 13;
        c = new o("ALPHANUMERIC", 2, ai1, 2);
        d = new o("STRUCTURED_APPEND", 3, new int[3], 3);
        int ai2[] = new int[3];
        ai2[0] = 8;
        ai2[1] = 16;
        ai2[2] = 16;
        e = new o("BYTE", 4, ai2, 4);
        f = new o("ECI", 5, new int[3], 7);
        int ai3[] = new int[3];
        ai3[0] = 8;
        ai3[1] = 10;
        ai3[2] = 12;
        g = new o("KANJI", 6, ai3, 8);
        h = new o("FNC1_FIRST_POSITION", 7, new int[3], 5);
        i = new o("FNC1_SECOND_POSITION", 8, new int[3], 9);
        int ai4[] = new int[3];
        ai4[0] = 8;
        ai4[1] = 10;
        ai4[2] = 12;
        j = new o("HANZI", 9, ai4, 13);
        o ao[] = new o[10];
        ao[0] = a;
        ao[1] = b;
        ao[2] = c;
        ao[3] = d;
        ao[4] = e;
        ao[5] = f;
        ao[6] = g;
        ao[7] = h;
        ao[8] = i;
        ao[9] = j;
        m = ao;
    }
}

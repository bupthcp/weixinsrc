// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;


// Referenced classes of package com.tencent.mm.modelvideo:
//            RecordParams

public class vprotocal
{

    public vprotocal()
    {
    }

    private static native int GetNowFrameCnt();

    public static int a()
    {
        return cancel();
    }

    public static int a(RecordParams recordparams)
    {
        cancel();
        return compress(recordparams.c, recordparams.b, recordparams.d, recordparams.f, recordparams.e, recordparams.a, recordparams.g, recordparams.h, recordparams.i, recordparams.l, 0, recordparams.k);
    }

    public static int a(String s, String s1, String s2, int i)
    {
        return pack(s, s1, s2, i);
    }

    public static int b()
    {
        return GetNowFrameCnt();
    }

    public static int b(RecordParams recordparams)
    {
        cancel();
        return compress(recordparams.c, recordparams.b, recordparams.d, recordparams.f, recordparams.e, recordparams.a, recordparams.g, recordparams.h, recordparams.i, recordparams.l, 1, recordparams.k);
    }

    private static native int cancel();

    private static native int compress(int i, int j, int k, int l, int i1, int j1, int k1, int l1, 
            String s, String s1, int i2, String s2);

    private static native int pack(String s, String s1, String s2, int i);

    static 
    {
        System.loadLibrary("vprotocal");
    }
}

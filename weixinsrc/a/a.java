// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;


public final class a extends Enum
{

    private a(String s)
    {
        super(s, 0);
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(a/a, s);
    }

    public static a[] values()
    {
        a aa[] = b;
        int i = aa.length;
        a aa1[] = new a[i];
        System.arraycopy(aa, 0, aa1, 0, i);
        return aa1;
    }

    public static final a a;
    private static final a b[];

    static 
    {
        a = new a("QR_CODE");
        a aa[] = new a[1];
        aa[0] = a;
        b = aa;
    }
}

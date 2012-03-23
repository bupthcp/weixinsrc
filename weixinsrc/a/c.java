// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;


public final class c extends Enum
{

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(a/c, s);
    }

    public static c[] values()
    {
        c ac[] = h;
        int i = ac.length;
        c ac1[] = new c[i];
        System.arraycopy(ac, 0, ac1, 0, i);
        return ac1;
    }

    public static final c a;
    public static final c b;
    private static c c;
    private static c d;
    private static c e;
    private static c f;
    private static c g;
    private static final c h[];

    static 
    {
        c = new c("OTHER", 0);
        d = new c("ORIENTATION", 1);
        a = new c("BYTE_SEGMENTS", 2);
        b = new c("ERROR_CORRECTION_LEVEL", 3);
        e = new c("ISSUE_NUMBER", 4);
        f = new c("SUGGESTED_PRICE", 5);
        g = new c("POSSIBLE_COUNTRY", 6);
        c ac[] = new c[7];
        ac[0] = c;
        ac[1] = d;
        ac[2] = a;
        ac[3] = b;
        ac[4] = e;
        ac[5] = f;
        ac[6] = g;
        h = ac;
    }
}

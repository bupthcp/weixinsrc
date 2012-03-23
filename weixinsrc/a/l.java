// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;


public final class l extends Enum
{

    private l(String s, int j)
    {
        super(s, j);
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(a/l, s);
    }

    public static l[] values()
    {
        l al[] = i;
        int j = al.length;
        l al1[] = new l[j];
        System.arraycopy(al, 0, al1, 0, j);
        return al1;
    }

    public static final l a;
    public static final l b;
    public static final l c;
    public static final l d;
    public static final l e;
    private static l f;
    private static l g;
    private static l h;
    private static final l i[];

    static 
    {
        f = new l("OTHER", 0);
        a = new l("PURE_BARCODE", 1);
        b = new l("POSSIBLE_FORMATS", 2);
        c = new l("TRY_HARDER", 3);
        d = new l("CHARACTER_SET", 4);
        g = new l("ALLOWED_LENGTHS", 5);
        h = new l("ASSUME_CODE_39_CHECK_DIGIT", 6);
        e = new l("NEED_RESULT_POINT_CALLBACK", 7);
        l al[] = new l[8];
        al[0] = f;
        al[1] = a;
        al[2] = b;
        al[3] = c;
        al[4] = d;
        al[5] = g;
        al[6] = h;
        al[7] = e;
        i = al;
    }
}

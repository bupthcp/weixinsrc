// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;


public final class b extends Enum
{

    private b(String s, int i, int j)
    {
        super(s, i);
        f = j;
    }

    public static b a(int i)
    {
        if(i < 0 || i >= e.length)
            throw new IllegalArgumentException();
        else
            return e[i];
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(a/a/b/b, s);
    }

    public static b[] values()
    {
        b ab[] = g;
        int i = ab.length;
        b ab1[] = new b[i];
        System.arraycopy(ab, 0, ab1, 0, i);
        return ab1;
    }

    private static b a;
    private static b b;
    private static b c;
    private static b d;
    private static final b e[];
    private static final b g[];
    private final int f;

    static 
    {
        a = new b("L", 0, 1);
        b = new b("M", 1, 0);
        c = new b("Q", 2, 3);
        d = new b("H", 3, 2);
        b ab[] = new b[4];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        g = ab;
        b ab1[] = new b[4];
        ab1[0] = b;
        ab1[1] = a;
        ab1[2] = d;
        ab1[3] = c;
        e = ab1;
    }
}

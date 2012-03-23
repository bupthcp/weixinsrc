// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;

import java.util.EnumMap;
import java.util.Map;

// Referenced classes of package a:
//            c, f, a

public final class h
{

    public h(String s, byte abyte0[], f af[], a a1)
    {
        this(s, abyte0, af, a1, System.currentTimeMillis());
    }

    private h(String s, byte abyte0[], f af[], a a1, long l)
    {
        a = s;
        b = abyte0;
        c = af;
        d = a1;
        e = null;
        f = l;
    }

    public final String a()
    {
        return a;
    }

    public final void a(c c1, Object obj)
    {
        if(e == null)
            e = new EnumMap(a/c);
        e.put(c1, obj);
    }

    public final String toString()
    {
        return a;
    }

    private final String a;
    private final byte b[];
    private f c[];
    private final a d;
    private Map e;
    private final long f;
}

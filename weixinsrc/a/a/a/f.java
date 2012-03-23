// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import java.io.Serializable;
import java.util.Comparator;

// Referenced classes of package a.a.a:
//            e

final class f
    implements Serializable, Comparator
{

    f(float f1)
    {
        this(f1, (byte)0);
    }

    private f(float f1, byte byte0)
    {
        a = f1;
    }

    public final volatile int compare(Object obj, Object obj1)
    {
        e e1 = (e)obj;
        float f1 = Math.abs(((e)obj1).c() - a);
        float f2 = Math.abs(e1.c() - a);
        byte byte0;
        if(f1 < f2)
            byte0 = -1;
        else
        if(f1 == f2)
            byte0 = 0;
        else
            byte0 = 1;
        return byte0;
    }

    private final float a;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import java.io.Serializable;
import java.util.Comparator;

// Referenced classes of package a.a.a:
//            e

final class b
    implements Serializable, Comparator
{

    b(float f)
    {
        this(f, (byte)0);
    }

    private b(float f, byte byte0)
    {
        a = f;
    }

    public final volatile int compare(Object obj, Object obj1)
    {
        e e1 = (e)obj;
        e e2 = (e)obj1;
        int i;
        if(e2.d() == e1.d())
        {
            float f = Math.abs(e2.c() - a);
            float f1 = Math.abs(e1.c() - a);
            if(f < f1)
                i = 1;
            else
            if(f == f1)
                i = 0;
            else
                i = -1;
        } else
        {
            i = e2.d() - e1.d();
        }
        return i;
    }

    private final float a;
}

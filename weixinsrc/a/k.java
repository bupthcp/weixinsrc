// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;

import a.b.a;

// Referenced classes of package a:
//            e

public final class k
{

    public k(e e1)
    {
        if(e1 == null)
        {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        } else
        {
            a = e1;
            return;
        }
    }

    public final a a()
    {
        if(b == null)
            b = a.a();
        return b;
    }

    private final e a;
    private a b;
}

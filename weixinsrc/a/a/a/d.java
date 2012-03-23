// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import a.f;

public final class d extends f
{

    d(float f1, float f2, float f3)
    {
        super(f1, f2);
        a = f3;
    }

    final boolean a(float f1, float f2, float f3)
    {
        boolean flag = false;
        if(Math.abs(f2 - b()) <= f1 && Math.abs(f3 - a()) <= f1)
        {
            float f4 = Math.abs(f1 - a);
            if(f4 <= 1F || f4 <= a)
                flag = true;
        }
        return flag;
    }

    final d b(float f1, float f2, float f3)
    {
        return new d((f2 + a()) / 2F, (f1 + b()) / 2F, (f3 + a) / 2F);
    }

    private final float a;
}

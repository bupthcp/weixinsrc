// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.a;

import a.f;

public final class e extends f
{

    e(float f1, float f2, float f3)
    {
        this(f1, f2, f3, 1);
    }

    private e(float f1, float f2, float f3, int i)
    {
        super(f1, f2);
        a = f3;
        b = i;
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

    final e b(float f1, float f2, float f3)
    {
        int i = 1 + b;
        return new e((f2 + (float)b * a()) / (float)i, (f1 + (float)b * b()) / (float)i, (f3 + (float)b * a) / (float)i, i);
    }

    public final float c()
    {
        return a;
    }

    final int d()
    {
        return b;
    }

    private final float a;
    private int b;
}

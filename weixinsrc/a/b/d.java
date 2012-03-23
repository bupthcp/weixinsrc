// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;


public final class d
{

    private d(float f1, float f2, float f3, float f4, float f5, float f6, float f7, 
            float f8, float f9)
    {
        a = f1;
        b = f4;
        c = f7;
        d = f2;
        e = f5;
        f = f8;
        g = f3;
        h = f6;
        i = f9;
    }

    private static d a(float f1, float f2, float f3, float f4, float f5, float f6, float f7, float f8)
    {
        float f9 = f8 - f6;
        float f10 = (f6 + (f2 - f4)) - f8;
        d d1;
        if(f9 == 0F && f10 == 0F)
        {
            d1 = new d(f3 - f1, f5 - f3, f1, f4 - f2, f6 - f4, f2, 0F, 0F, 1F);
        } else
        {
            float f11 = f3 - f5;
            float f12 = f7 - f5;
            float f13 = (f5 + (f1 - f3)) - f7;
            float f14 = f4 - f6;
            float f15 = f11 * f9 - f12 * f14;
            float f16 = (f9 * f13 - f12 * f10) / f15;
            float f17 = (f11 * f10 - f13 * f14) / f15;
            d1 = new d((f3 - f1) + f16 * f3, (f7 - f1) + f17 * f7, f1, (f4 - f2) + f16 * f4, (f8 - f2) + f17 * f8, f2, f16, f17, 1F);
        }
        return d1;
    }

    public static d a(float f1, float f2, float f3, float f4, float f5, float f6, float f7, float f8, 
            float f9, float f10, float f11, float f12)
    {
        d d1 = a(3.5F, 3.5F, f1, 3.5F, f2, f3, 3.5F, f4);
        d d2 = new d(d1.e * d1.i - d1.f * d1.h, d1.f * d1.g - d1.d * d1.i, d1.d * d1.h - d1.e * d1.g, d1.c * d1.h - d1.b * d1.i, d1.a * d1.i - d1.c * d1.g, d1.b * d1.g - d1.a * d1.h, d1.b * d1.f - d1.c * d1.e, d1.c * d1.d - d1.a * d1.f, d1.a * d1.e - d1.b * d1.d);
        d d3 = a(f5, f6, f7, f8, f9, f10, f11, f12);
        d d4 = new d(d3.a * d2.a + d3.d * d2.b + d3.g * d2.c, d3.a * d2.d + d3.d * d2.e + d3.g * d2.f, d3.a * d2.g + d3.d * d2.h + d3.g * d2.i, d3.b * d2.a + d3.e * d2.b + d3.h * d2.c, d3.b * d2.d + d3.e * d2.e + d3.h * d2.f, d3.b * d2.g + d3.e * d2.h + d3.h * d2.i, d3.c * d2.a + d3.f * d2.b + d3.i * d2.c, d3.c * d2.d + d3.f * d2.e + d3.i * d2.f, d3.c * d2.g + d3.f * d2.h + d3.i * d2.i);
        return d4;
    }

    public final void a(float af[])
    {
        int j = af.length;
        float f1 = a;
        float f2 = b;
        float f3 = c;
        float f4 = d;
        float f5 = e;
        float f6 = f;
        float f7 = g;
        float f8 = h;
        float f9 = i;
        int k = 0;
        do
        {
            if(k >= j)
                return;
            float f10 = af[k];
            float f11 = af[k + 1];
            float f12 = f9 + (f3 * f10 + f6 * f11);
            af[k] = (f7 + (f1 * f10 + f4 * f11)) / f12;
            af[k + 1] = (f8 + (f10 * f2 + f11 * f5)) / f12;
            k += 2;
        } while(true);
    }

    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    private final float g;
    private final float h;
    private final float i;
}

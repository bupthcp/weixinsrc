// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;


public class f
{

    public f(float f1, float f2)
    {
        a = f1;
        b = f2;
    }

    public static float a(f f1, f f2)
    {
        float f3 = f1.a - f2.a;
        float f4 = f1.b - f2.b;
        return (float)Math.sqrt(f3 * f3 + f4 * f4);
    }

    public static void a(f af[])
    {
        float f1 = a(af[0], af[1]);
        float f2 = a(af[1], af[2]);
        float f3 = a(af[0], af[2]);
        f f4;
        f f5;
        f f6;
        float f7;
        float f8;
        if(f2 >= f1 && f2 >= f3)
        {
            f4 = af[0];
            f5 = af[1];
            f6 = af[2];
        } else
        if(f3 >= f2 && f3 >= f1)
        {
            f4 = af[1];
            f5 = af[0];
            f6 = af[2];
        } else
        {
            f4 = af[2];
            f5 = af[0];
            f6 = af[1];
        }
        f7 = f4.a;
        f8 = f4.b;
        if((f6.a - f7) * (f5.b - f8) - (f6.b - f8) * (f5.a - f7) >= 0F)
        {
            f f9 = f6;
            f6 = f5;
            f5 = f9;
        }
        af[0] = f6;
        af[1] = f4;
        af[2] = f5;
    }

    public final float a()
    {
        return a;
    }

    public final float b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        boolean flag = false;
        if(obj instanceof f)
        {
            f f1 = (f)obj;
            if(a == f1.a && b == f1.b)
                flag = true;
        }
        return flag;
    }

    public int hashCode()
    {
        return 31 * Float.floatToIntBits(a) + Float.floatToIntBits(b);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(25);
        stringbuilder.append('(');
        stringbuilder.append(a);
        stringbuilder.append(',');
        stringbuilder.append(b);
        stringbuilder.append(')');
        return stringbuilder.toString();
    }

    private final float a;
    private final float b;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;


// Referenced classes of package a.a.b:
//            n

final class j extends n
{

    j()
    {
        this((byte)0);
    }

    private j(byte byte0)
    {
    }

    final boolean a(int i, int k)
    {
        boolean flag;
        if((1 & (1 & i + k) + (i * k) % 3) == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }
}

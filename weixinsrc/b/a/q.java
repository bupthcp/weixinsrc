// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;


// Referenced classes of package b.a:
//            af

public class q
{

    public q()
    {
    }

    public static int a(String s)
    {
        int i;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            i = (new af()).a(s);
        else
            i = 0;
        return i;
    }
}

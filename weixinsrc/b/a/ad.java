// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.os.Build;
import java.util.List;

// Referenced classes of package b.a:
//            f, c, g, h, 
//            u

public final class ad
{

    private ad()
    {
    }

    public static int a()
    {
        int i;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 9)
            i = (new f()).a();
        else
            i = -1;
        return i;
    }

    public static u a(int i)
    {
        u u;
        if(Build.MODEL.equals("M9"))
            u = (new c()).a(i);
        else
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 9 && a() > 1)
            u = (new f()).a(i);
        else
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8)
            u = (new g()).a(i);
        else
            u = (new h()).a(i);
        return u;
    }

    public static List a(android.hardware.Camera.Parameters parameters)
    {
        List list;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            list = (new f()).a(parameters);
        else
            list = null;
        return list;
    }

    public static boolean b()
    {
        boolean flag;
        flag = true;
        break MISSING_BLOCK_LABEL_2;
        if((Integer.valueOf(android.os.Build.VERSION.SDK).intValue() != 9 || !Build.MODEL.equals("M9")) && Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8)
            flag = false;
        return flag;
    }

    private static final int a = 8;
    private static final int b = 9;
    private static final int c = 5;
}

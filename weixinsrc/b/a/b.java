// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.widget.ListView;

// Referenced classes of package b.a:
//            t, x

public class b
{

    public b()
    {
    }

    public static void a(ListView listview)
    {
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8)
            (new t()).a(listview);
        else
            (new x()).a(listview);
    }
}

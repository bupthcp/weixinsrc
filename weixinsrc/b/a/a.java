// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import java.util.List;

// Referenced classes of package b.a:
//            i, n

public final class a
{

    private a()
    {
    }

    public static List a(Context context)
    {
        List list;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            list = (new i()).a(context);
        else
            list = (new n()).a(context);
        return list;
    }

    private static final int a = 5;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package b.a:
//            aj, aa

public class r
{

    public r()
    {
    }

    public static void a(View view, Animation animation)
    {
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8)
            (new aj()).a(view, animation);
        else
            (new aa()).a(view, animation);
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.hardware.Camera;
import android.os.Build;
import java.util.List;

// Referenced classes of package b.a:
//            k, u

class c
    implements k
{

    c()
    {
    }

    private static int b()
    {
        int i = -1;
        if(Build.MODEL.equals("M9")) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        String s = Build.DISPLAY;
        if(!s.substring(0, 0).equals("1"))
        {
            String as[] = s.split("-");
            if(as != null && as.length >= 2)
                i = Integer.parseInt(as[1]);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public int a()
    {
        return 0;
    }

    public u a(int i)
    {
        u u1 = new u();
        u1.a = Camera.open();
        u1.b = 0;
        if(b() >= 7093)
        {
            u1.b = 90;
            u1.a.setDisplayOrientation(180);
        }
        return u1;
    }

    public List a(android.hardware.Camera.Parameters parameters)
    {
        return null;
    }

    private static final int a = 7093;
}

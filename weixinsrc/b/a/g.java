// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.hardware.Camera;
import java.util.List;

// Referenced classes of package b.a:
//            k, u

class g
    implements k
{

    g()
    {
    }

    public int a()
    {
        return 0;
    }

    public u a(int i)
    {
        u u1 = new u();
        u1.a = Camera.open();
        u1.b = 90;
        u1.a.setDisplayOrientation(u1.b);
        return u1;
    }

    public List a(android.hardware.Camera.Parameters parameters)
    {
        return null;
    }

    private static final int a = 90;
}

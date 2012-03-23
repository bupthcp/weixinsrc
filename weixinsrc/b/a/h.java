// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.hardware.Camera;
import java.util.List;

// Referenced classes of package b.a:
//            k, u

class h
    implements k
{

    h()
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
        u1.b = 0;
        return u1;
    }

    public List a(android.hardware.Camera.Parameters parameters)
    {
        return null;
    }
}

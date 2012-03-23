// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.content.Context;
import android.hardware.SensorManager;
import com.tencent.mm.platformtools.Log;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui.shake:
//            ShakeSensorListener

public class ShakeManager
{

    public ShakeManager(Context context)
    {
        a = (SensorManager)context.getSystemService("sensor");
    }

    private boolean e()
    {
        boolean flag = false;
        if(a != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        List list = a.getSensorList(1);
        if(list != null && list.size() > 0)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a(ShakeListener shakelistener)
    {
        c();
        if(e())
        {
            b = new ShakeSensorListener(shakelistener);
            a.registerListener(b, 2, 0);
        } else
        {
            Log.a("MicroMsg.ShakeManager", "no sensor found for shake detection");
        }
    }

    public final boolean a()
    {
        boolean flag;
        if(b != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void b()
    {
        if(b != null)
            ShakeSensorListener.a();
    }

    public final void c()
    {
        if(b != null)
        {
            a.unregisterListener(b, 2);
            b = null;
        }
    }

    public final boolean d()
    {
        boolean flag;
        if(e())
            flag = true;
        else
            flag = false;
        return flag;
    }

    private SensorManager a;
    private ShakeSensorListener b;
}

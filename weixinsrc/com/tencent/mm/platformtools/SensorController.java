// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.content.*;
import android.hardware.*;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public class SensorController extends BroadcastReceiver
    implements SensorEventListener
{

    public SensorController(Context context)
    {
        h = false;
        i = false;
        b = (SensorManager)context.getSystemService("sensor");
        f = b.getDefaultSensor(8);
        boolean flag;
        if(f != null)
            flag = true;
        else
            flag = false;
        g = flag;
        c = 1F + d;
    }

    public final void a()
    {
        Log.e("MicroMsg.SensorController", "sensor callback removed");
        b.unregisterListener(this, f);
        b.unregisterListener(this);
        i = false;
        e = null;
    }

    public final void a(SensorEventCallBack sensoreventcallback)
    {
        Log.e("MicroMsg.SensorController", "sensor callback set");
        if(!i)
        {
            b.registerListener(this, f, 2);
            i = true;
        }
        e = sensoreventcallback;
    }

    public void onAccuracyChanged(Sensor sensor, int j)
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(intent.getAction().equals("android.intent.action.HEADSET_PLUG"))
        {
            int j = intent.getIntExtra("state", 0);
            if(j == 1)
                h = true;
            if(j == 0)
                h = false;
        }
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        if(!h) goto _L2; else goto _L1
_L1:
        return;
_L2:
        float f1;
        f1 = sensorevent.values[0];
        switch(sensorevent.sensor.getType())
        {
        default:
            continue; /* Loop/switch isn't completed */

        case 8: // '\b'
            if(f1 < a)
            {
                a = f1;
                d = 0.5F + f1;
            }
            break;
        }
        if(c < d || f1 >= d)
            break; /* Loop/switch isn't completed */
        if(e != null)
        {
            Log.e("MicroMsg.SensorController", "sensor event false");
            e.a(false);
        }
_L5:
        c = f1;
        if(true) goto _L1; else goto _L3
_L3:
        if(c > d || f1 <= d || e == null) goto _L5; else goto _L4
_L4:
        Log.e("MicroMsg.SensorController", "sensor event true");
        e.a(true);
          goto _L5
    }

    private static float a = 4.294967E+009F;
    private static float d = 0.5F;
    private SensorManager b;
    private float c;
    private SensorEventCallBack e;
    private Sensor f;
    private final boolean g;
    private boolean h;
    private boolean i;


    private class SensorEventCallBack
    {

        public abstract void a(boolean flag);
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.hardware.SensorListener;
import com.tencent.mm.platformtools.Log;

public class ShakeSensorListener
    implements SensorListener
{

    public ShakeSensorListener(ShakeManager.ShakeListener shakelistener)
    {
        float af[] = new float[3];
        af[0] = 2F;
        af[1] = 2.5F;
        af[2] = 0.5F;
        b = af;
        c = new float[3];
        a = shakelistener;
    }

    public static void a()
    {
        Log.d("MicroMsg.ShakeSensorListener", "reset threadHold");
        d = 5;
    }

    public void onAccuracyChanged(int i, int j)
    {
    }

    public void onSensorChanged(int i, float af[])
    {
        float af1[] = new float[3];
        int j = 0;
        boolean flag = false;
        while(j < 3) 
        {
            af1[j] = Math.round(0.45F * (b[j] * (af[j] - c[j])));
            float f = Math.abs(af1[j]);
            if(f >= 4F)
                Log.e("MicroMsg.ShakeSensorListener", (new StringBuilder()).append("result:").append(f).toString());
            if(d < 9)
                if(f >= 14F)
                {
                    d = 9;
                } else
                {
                    int k = (int)f;
                    if(d < k + -4)
                        d = k + -4;
                }
            if(f > (float)d)
                flag = true;
            c[j] = af[j];
            j++;
        }
        if(flag)
        {
            Log.d("MicroMsg.ShakeSensorListener", (new StringBuilder()).append("sensorChanged ").append(i).append(" (").append(af[0]).append(", ").append(af[1]).append(", ").append(af[2]).append(")").append(" diff(").append(af1[0]).append(" ").append(af1[1]).append(" ").append(af1[2]).append(")").toString());
            a.a();
        }
    }

    private static int d = 5;
    private ShakeManager.ShakeListener a;
    private final float b[];
    private float c[];

}

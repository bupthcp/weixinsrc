// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.b;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class a
{

    public a()
    {
    }

    public static ITelephony a(Context context)
    {
        Method method2 = android/telephony/TelephonyManager.getDeclaredMethod("getITelephony", null);
        Method method = method2;
        method.setAccessible(true);
        Method method1 = method;
_L1:
        NoSuchMethodException nosuchmethodexception;
        ITelephony itelephony;
        SecurityException securityexception;
        try
        {
            itelephony = (ITelephony)method1.invoke((TelephonyManager)context.getSystemService("phone"), null);
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            itelephony = null;
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            itelephony = null;
        }
        catch(InvocationTargetException invocationtargetexception)
        {
            itelephony = null;
        }
        return itelephony;
        securityexception;
        method = null;
_L3:
        method1 = method;
          goto _L1
        nosuchmethodexception;
        method = null;
_L2:
        method1 = method;
          goto _L1
        NoSuchMethodException nosuchmethodexception1;
        nosuchmethodexception1;
          goto _L2
        SecurityException securityexception1;
        securityexception1;
          goto _L3
    }
}

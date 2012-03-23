// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.a;

import android.content.Context;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.tencent.a.a:
//            e

final class a
    implements e
{

    a()
    {
    }

    public final ITelephony a(Context context, int i)
    {
        if(i != 0) goto _L2; else goto _L1
_L1:
        ITelephony itelephony = com.tencent.a.b.a.a(context);
_L4:
        return itelephony;
_L2:
        if(i == 1)
        {
label0:
            {
                Method method;
                InvocationTargetException invocationtargetexception;
                IllegalAccessException illegalaccessexception;
                IllegalArgumentException illegalargumentexception;
                Method method1;
                try
                {
                    method1 = context.getSystemService("phone2").getClass().getDeclaredMethod("getITelephony", null);
                }
                catch(SecurityException securityexception)
                {
                    method = null;
                    break label0;
                }
                catch(NoSuchMethodException nosuchmethodexception)
                {
                    method = null;
                    break label0;
                }
                method = method1;
                try
                {
                    method.setAccessible(true);
                }
                catch(SecurityException securityexception1) { }
                catch(NoSuchMethodException nosuchmethodexception1) { }
            }
            try
            {
                itelephony = (ITelephony)method.invoke(context.getSystemService("phone2"), null);
            }
            // Misplaced declaration of an exception variable
            catch(IllegalArgumentException illegalargumentexception)
            {
                itelephony = null;
            }
            // Misplaced declaration of an exception variable
            catch(IllegalAccessException illegalaccessexception)
            {
                itelephony = null;
            }
            // Misplaced declaration of an exception variable
            catch(InvocationTargetException invocationtargetexception)
            {
                itelephony = null;
            }
            continue; /* Loop/switch isn't completed */
        }
        itelephony = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private final String a = "phone";
    private final String b = "network";
    private final String c = "mode";
    private final String d = "2";
    private final String e = "1";
    private final String f = "GSM";
    private final String g = "CDMA";
    private final String h = "UNKNOWN";
}

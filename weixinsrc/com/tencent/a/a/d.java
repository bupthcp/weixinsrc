// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.a;

import android.os.RemoteException;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ITelephony;
import com.tencent.qqpim.utils.QQPimUtils;
import com.tencent.qqpim.utils.TextUtil;

// Referenced classes of package com.tencent.a.a:
//            b, f, a, e, 
//            c

public final class d
{

    private d()
    {
        b = b.b;
        c = false;
        d = false;
        String s = QQPimUtils.getManufaturer();
        String s1 = QQPimUtils.getModel();
        if(TextUtil.emptyIfNull(s).toLowerCase().equals("motorola") && TextUtil.emptyIfNull(s1).toLowerCase().indexOf("xt800") != -1)
            b = b.a;
        d()[b.ordinal()];
        JVM INSTR tableswitch 1 1: default 96
    //                   1 112;
           goto _L1 _L2
_L1:
        a = new f();
_L4:
        c();
        return;
_L2:
        a = new a();
        if(true) goto _L4; else goto _L3
_L3:
    }

    private ITelephony a(int i)
    {
        ITelephony itelephony;
        if(a == null)
            itelephony = null;
        else
            itelephony = a.a(QQPimUtils.APPLICATION_CONTEXT, i);
        return itelephony;
    }

    public static d a()
    {
        if(f == null) goto _L2; else goto _L1
_L1:
        d d1 = f;
_L4:
        return d1;
_L2:
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
        if(f == null)
            f = new d();
        d1 = f;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private c b(int i)
    {
        ITelephony itelephony = a(i);
        c c1;
        if(itelephony == null)
            c1 = c.c;
        else
            try
            {
                if(2 == itelephony.getActivePhoneType())
                    c1 = c.b;
                else
                if(1 == itelephony.getActivePhoneType())
                    c1 = c.a;
                else
                    c1 = c.c;
            }
            catch(RemoteException remoteexception)
            {
                remoteexception.toString();
                c1 = c.c;
            }
        return c1;
    }

    private void c()
    {
        d()[b.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 38;
           goto _L1 _L2
_L1:
        int i = 1;
_L3:
        int j = 0;
_L4:
        if(j >= i)
            return;
        break MISSING_BLOCK_LABEL_43;
_L2:
        i = 2;
          goto _L3
        if(c(j))
        {
            c c1 = b(j);
            if(c1 == c.b)
                d = true;
            else
            if(c1 == c.a)
                c = true;
        }
        j++;
          goto _L4
    }

    private boolean c(int i)
    {
        boolean flag;
        ITelephony itelephony;
        flag = false;
        itelephony = a(i);
        if(itelephony != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        boolean flag1 = itelephony.isRadioOn();
        flag = flag1;
        continue; /* Loop/switch isn't completed */
        RemoteException remoteexception;
        remoteexception;
        remoteexception.toString();
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static int[] d()
    {
        int ai[] = g;
        if(ai == null)
        {
            ai = new int[com.tencent.a.a.b.values().length];
            try
            {
                ai[b.a.ordinal()] = 1;
            }
            catch(NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai[b.b.ordinal()] = 2;
            }
            catch(NoSuchFieldError nosuchfielderror1) { }
            g = ai;
        }
        return ai;
    }

    public final ISms b()
    {
        if(a != null);
        return null;
    }

    private static Object e = new Object();
    private static d f = null;
    private static int g[];
    private e a;
    private b b;
    private boolean c;
    private boolean d;

}

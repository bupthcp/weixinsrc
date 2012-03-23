// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.platformtools:
//            Util, Log

public class FlowLimiter
{

    public FlowLimiter(long l, int i)
    {
        boolean flag = true;
        super();
        a = l;
        b = i;
        boolean flag1;
        if(a > 0L)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("FLOW_LIMTER > 0", flag1);
        if(b <= 0L)
            flag = false;
        Assert.assertTrue("FLOW_CAPACITY > 0", flag);
        c = Util.e();
        d = 0L;
    }

    public final int a(int i)
    {
        long l = Util.f(c);
        if(l < 0L)
            l = 0L;
        d = d - (l * b) / a;
        if(d < 0L)
            d = 0L;
        c = System.currentTimeMillis();
        d = d + (long)i;
        byte byte0;
        if(d > b)
        {
            Log.a("MicroMsg.FlowLimiter", (new StringBuilder()).append("flow push limited, current=").append(d).append(", flowCapacity=").append(b).append(", percentage = ").append((100L * d) / b).append("%").toString());
            byte0 = 30;
        } else
        if(d > b / 2L)
        {
            Log.b("MicroMsg.FlowLimiter", (new StringBuilder()).append("flow push half limited, current=").append(d).append(", flowCapacity=").append(b).append(", percentage = ").append((100L * d) / b).append("%").toString());
            byte0 = 85;
        } else
        {
            Log.e("MicroMsg.FlowLimiter", (new StringBuilder()).append("flow push passed, current=").append(d).append(", flowCapacity=").append(b).append(", percentage = ").append((100L * d) / b).append("%").toString());
            byte0 = 100;
        }
        return byte0;
    }

    private final long a;
    private final long b;
    private long c;
    private long d;
}

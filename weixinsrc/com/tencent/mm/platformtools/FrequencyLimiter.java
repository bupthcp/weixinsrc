// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;


// Referenced classes of package com.tencent.mm.platformtools:
//            Util, Log

public class FrequencyLimiter
{

    public FrequencyLimiter()
    {
        d = b;
        c = 0L;
    }

    public final boolean a()
    {
        if(Util.f(c) >= a) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.FrequncyLimiter", (new StringBuilder()).append("frequency limited, last=").append(c).append(", cur=").append(Util.e()).append(", retries=").append(d).toString());
        if(d > 0) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L5:
        return flag;
_L4:
        d = -1 + d;
_L6:
        c = Util.e();
        flag = true;
        if(true) goto _L5; else goto _L2
_L2:
        d = b;
          goto _L6
    }

    private final long a = 0x668a0L;
    private final int b = 3;
    private long c;
    private int d;
}

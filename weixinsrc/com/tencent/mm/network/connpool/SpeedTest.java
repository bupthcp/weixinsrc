// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import android.os.Looper;
import com.tencent.mm.platformtools.FlowLimiter;
import com.tencent.mm.platformtools.Log;
import java.util.HashMap;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network.connpool:
//            ConnEvent, InAddrHost, InAddress, IConnPoolMoniter, 
//            SpeedTestEngine

public class SpeedTest extends ConnEvent
{

    private SpeedTest(Looper looper)
    {
        super(looper);
        d = new HashMap();
        e = new InAddrHost(null, null, null);
        f = new FlowLimiter(0x5265c00L, 0x32000);
        b = null;
    }

    public SpeedTest(Looper looper, byte byte0)
    {
        this(looper);
    }

    protected final void a(int i, Object obj, Object obj1)
    {
        Log.d("MicroMsg.SpeedTest", (new StringBuilder()).append("onStatusCallback=").append(i).append(" ,").append(obj1).toString());
        i;
        JVM INSTR tableswitch 2 5: default 64
    //                   2 65
    //                   3 64
    //                   4 113
    //                   5 113;
           goto _L1 _L2 _L1 _L3 _L3
_L1:
        return;
_L2:
        Assert.assertTrue(obj instanceof InAddress);
        Assert.assertTrue(obj1 instanceof Long);
        if(b != null)
            ((Long)obj1).longValue();
        d.put((InAddress)obj, (Long)obj1);
        continue; /* Loop/switch isn't completed */
_L3:
        if(obj instanceof Integer)
        {
            if(a != null)
                a.a(i, 0x40000000, "test", obj);
            if(f.a(((Integer)obj).intValue()) <= 30)
            {
                Log.b("MicroMsg.SpeedTest", "speed test limited");
                if(c != null)
                    c.a();
            }
        }
        if(true) goto _L1; else goto _L4
_L4:
    }

    protected final void a(String s, Integer integer, Object obj)
    {
    }

    protected final void a(byte abyte0[], Object obj)
    {
        Assert.assertNotNull(c);
        c = null;
    }

    public final void a(InAddress ainaddress[])
    {
        if(f.a(0) <= 30)
        {
            Log.b("MicroMsg.SpeedTest", "speed test limited");
            if(c != null)
                c.a();
        } else
        {
            e.a(ainaddress);
            if(c != null)
            {
                Log.a("MicroMsg.SpeedTest", "already testing, update targets");
            } else
            {
                Log.c("MicroMsg.SpeedTest", "begin speed test");
                c = new SpeedTestEngine(e, this);
                c.start();
            }
        }
    }

    private OnTestFinish b;
    private SpeedTestEngine c;
    private HashMap d;
    private InAddrHost e;
    private FlowLimiter f;
}

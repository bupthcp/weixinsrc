// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelstat;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.TrafficStats;

// Referenced classes of package com.tencent.mm.modelstat:
//            NetStatInfo, NetStatStorage

public final class NetStatStorageLogic
{

    private NetStatStorageLogic()
    {
    }

    public static void a(int i, int j, int k)
    {
        NetStatInfo netstatinfo = new NetStatInfo();
        netstatinfo.l(i);
        netstatinfo.x(j);
        netstatinfo.a(0x800800);
        a(netstatinfo);
        a(netstatinfo, k);
        MMCore.f().G().a(netstatinfo);
    }

    private static void a(NetStatInfo netstatinfo)
    {
        TrafficStats.f();
        netstatinfo.m((int)TrafficStats.d());
        netstatinfo.y((int)TrafficStats.c());
        netstatinfo.n((int)TrafficStats.b());
        netstatinfo.z((int)TrafficStats.a());
        netstatinfo.a(0x1000000 | (0x1000 | (0x2000000 | (0x2000 | netstatinfo.c()))));
    }

    private static void a(NetStatInfo netstatinfo, int i)
    {
        i;
        JVM INSTR lookupswitch 10: default 92
    //                   4: 93
    //                   8: 174
    //                   9: 147
    //                   19: 174
    //                   21: 201
    //                   22: 228
    //                   37: 120
    //                   38: 120
    //                   40: 283
    //                   41: 256;
           goto _L1 _L2 _L3 _L4 _L3 _L5 _L6 _L7 _L7 _L8 _L9
_L1:
        return;
_L2:
        netstatinfo.p(netstatinfo.z() + netstatinfo.A());
        netstatinfo.a(0x8000 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L7:
        netstatinfo.d(netstatinfo.n() + netstatinfo.o());
        netstatinfo.a(8 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L4:
        netstatinfo.r(netstatinfo.z() + netstatinfo.A());
        netstatinfo.a(0x20000 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L3:
        netstatinfo.f(netstatinfo.n() + netstatinfo.o());
        netstatinfo.a(0x20 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L5:
        netstatinfo.t(netstatinfo.z() + netstatinfo.A());
        netstatinfo.a(0x80000 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L6:
        netstatinfo.h(netstatinfo.n() + netstatinfo.o());
        netstatinfo.a(0x80 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L9:
        netstatinfo.v(netstatinfo.z() + netstatinfo.A());
        netstatinfo.a(0x200000 | netstatinfo.c());
        continue; /* Loop/switch isn't completed */
_L8:
        netstatinfo.j(netstatinfo.n() + netstatinfo.o());
        netstatinfo.a(0x200 | netstatinfo.c());
        if(true) goto _L1; else goto _L10
_L10:
    }

    public static void b(int i, int j, int k)
    {
        NetStatInfo netstatinfo = new NetStatInfo();
        netstatinfo.k(i);
        netstatinfo.w(j);
        netstatinfo.a(0x400400);
        a(netstatinfo);
        a(netstatinfo, k);
        MMCore.f().G().a(netstatinfo);
    }

    static 
    {
        TrafficStats.e();
    }
}

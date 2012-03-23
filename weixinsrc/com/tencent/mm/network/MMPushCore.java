// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.content.Context;
import android.os.Handler;
import com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL;

// Referenced classes of package com.tencent.mm.network:
//            NetService, NetworkEvent, MMAutoAuth

public final class MMPushCore
{

    private MMPushCore()
    {
    }

    public static IConnPoolMoniter_AIDL a()
    {
        return h().h;
    }

    public static void a(Context context)
    {
        h().d = context;
    }

    public static void a(Handler handler)
    {
        h().e = handler;
    }

    public static void a(MMAutoAuth mmautoauth)
    {
        h().g = mmautoauth;
    }

    public static void a(INetworkAvailable inetworkavailable)
    {
        h().f = inetworkavailable;
    }

    public static void a(NetService netservice)
    {
        h().b = netservice;
    }

    public static void a(NetworkEvent networkevent)
    {
        h().c = networkevent;
    }

    public static void a(IConnPoolMoniter_AIDL iconnpoolmoniter_aidl)
    {
        h().h = iconnpoolmoniter_aidl;
    }

    public static NetService b()
    {
        return h().b;
    }

    public static NetworkEvent c()
    {
        return h().c;
    }

    public static Context d()
    {
        return h().d;
    }

    public static Handler e()
    {
        return h().e;
    }

    public static INetworkAvailable f()
    {
        return h().f;
    }

    public static MMAutoAuth g()
    {
        return h().g;
    }

    private static MMPushCore h()
    {
        if(a == null)
            a = new MMPushCore();
        return a;
    }

    private static MMPushCore a;
    private NetService b;
    private NetworkEvent c;
    private Context d;
    private Handler e;
    private INetworkAvailable f;
    private MMAutoAuth g;
    private IConnPoolMoniter_AIDL h;
}

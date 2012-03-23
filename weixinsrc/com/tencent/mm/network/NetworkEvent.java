// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.RemoteCallbackList;
import com.tencent.mm.platformtools.*;

// Referenced classes of package com.tencent.mm.network:
//            IOnNetworkChange_AIDL

public final class NetworkEvent extends INetworkEvent_AIDL.Stub
{

    public NetworkEvent()
    {
        a = 5;
        c = 0;
        e = new MTimerHandler(new _cls1(), false);
    }

    static RemoteCallbackList a(NetworkEvent networkevent)
    {
        return networkevent.d;
    }

    static int b(NetworkEvent networkevent)
    {
        return networkevent.a;
    }

    public final int a()
    {
        int i;
        if(0L > Util.d(b))
            i = 6;
        else
            i = a;
        return i;
    }

    public final void a(int i)
    {
        int j;
label0:
        {
            j = 0;
            if(i != a)
                if(4 == i)
                {
                    if(a == 3)
                    {
                        a = i;
                        j = 1;
                    }
                } else
                if(3 == i)
                {
                    if(a != 0 && a != 2)
                    {
                        c = 1 + c;
                        if(c <= 0)
                            break label0;
                        a = 3;
                        j = 1;
                    }
                } else
                {
                    if(5 != i)
                        break label0;
                    c = j;
                    a = 5;
                    j = 1;
                }
        }
_L1:
        if(j != 0)
            e.a(1000L);
        return;
        a = i;
        j = 1;
          goto _L1
    }

    public final void a(String s)
    {
        long l = 0L;
        Log.a("MicroMsg.NetworkEvent", (new StringBuilder()).append("service out of band:").append(s).toString());
        try
        {
            String as[] = s.split(",");
            switch(Integer.valueOf(as[0]).intValue())
            {
            default:
                b = 0L;
                break;

            case 1: // '\001'
                if(as.length > 1)
                    l = Integer.valueOf(as[1]).intValue();
                b = l;
                break;
            }
        }
        catch(Exception exception) { }
    }

    public final boolean a(IOnNetworkChange_AIDL ionnetworkchange_aidl)
    {
        d.register(ionnetworkchange_aidl);
        return true;
    }

    public final void b()
    {
        d.kill();
    }

    public final boolean b(IOnNetworkChange_AIDL ionnetworkchange_aidl)
    {
        return d.unregister(ionnetworkchange_aidl);
    }

    public final long c()
    {
        return b;
    }

    private int a;
    private long b;
    private int c;
    private final RemoteCallbackList d = new RemoteCallbackList();
    private MTimerHandler e;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            int i = -1 + NetworkEvent.a(a).beginBroadcast();
            while(i >= 0) 
            {
                IOnNetworkChange_AIDL ionnetworkchange_aidl = (IOnNetworkChange_AIDL)NetworkEvent.a(a).getBroadcastItem(i);
                try
                {
                    ionnetworkchange_aidl.a(NetworkEvent.b(a));
                }
                catch(RemoteException remoteexception) { }
                i--;
            }
            NetworkEvent.a(a).finishBroadcast();
            return false;
        }

        private NetworkEvent a;

        _cls1()
        {
            a = NetworkEvent.this;
            super();
        }
    }

}

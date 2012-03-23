// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import android.os.RemoteException;
import com.tencent.mm.network.*;
import com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL;
import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.modelbase:
//            LocalAccInfo, RAccInfo

public class RDispatcher
    implements IDispatcher
{

    public RDispatcher(IDispatcher_AIDL idispatcher_aidl, IDeadObjectFixer ideadobjectfixer)
    {
        a = idispatcher_aidl;
        b = ideadobjectfixer;
    }

    private void a(Exception exception)
    {
        if(((exception instanceof RemoteException) || (exception instanceof NullPointerException)) && b != null)
            b.a();
    }

    public final int a(IReqResp_AIDL ireqresp_aidl, IOnGYNetEnd_AIDL iongynetend_aidl)
    {
        int j = a.a(ireqresp_aidl, iongynetend_aidl);
        int i = j;
_L2:
        return i;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "remote dispatcher lost, send failed");
        a(exception);
        i = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final String a()
    {
        String s1 = a.c();
        String s = s1;
_L2:
        return s;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "query remote network server ip failed");
        a(exception);
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a(int i)
    {
        a.a(i);
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", (new StringBuilder()).append("cancel remote rr failed, netid=").append(i).toString());
        a(exception);
          goto _L1
    }

    public final void a(IConnPoolMoniter_AIDL iconnpoolmoniter_aidl)
    {
        a.a(iconnpoolmoniter_aidl);
_L1:
        return;
        Exception exception;
        exception;
        a(exception);
          goto _L1
    }

    public final void a(String s, String s1, int ai[], int ai1[], int i, int j)
    {
        a.a(s, s1, ai, ai1, i, j);
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "set built-in ip failed, core service down");
        a(exception);
          goto _L1
    }

    public final void a(boolean flag)
    {
        a.a(flag);
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "change active status failed, core service down");
        a(exception);
          goto _L1
    }

    public final void b()
    {
        a.d();
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "clear dns cache failed, core service down");
        a(exception);
          goto _L1
    }

    public final void c()
    {
        a.b();
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "reset failed, core service down");
        a(exception);
          goto _L1
    }

    public final LocalAccInfo d()
    {
        LocalAccInfo localaccinfo;
        try
        {
            localaccinfo = new LocalAccInfo(a.a());
        }
        catch(Exception exception)
        {
            a(exception);
            localaccinfo = null;
        }
        return localaccinfo;
    }

    public final IAccInfo e()
    {
        RAccInfo raccinfo;
        try
        {
            raccinfo = new RAccInfo(a.a());
        }
        catch(Exception exception)
        {
            a(exception);
            raccinfo = null;
        }
        return raccinfo;
    }

    public final boolean f()
    {
        boolean flag1 = a.e();
        boolean flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        Log.a("MicroMsg.IDispatcher", "core service down, guess network stable");
        a(exception);
        flag = true;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final INetworkEvent_AIDL g()
    {
        INetworkEvent_AIDL inetworkevent_aidl1 = a.f();
        INetworkEvent_AIDL inetworkevent_aidl = inetworkevent_aidl1;
_L2:
        return inetworkevent_aidl;
        Exception exception;
        exception;
        a(exception);
        inetworkevent_aidl = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private IDispatcher_AIDL a;
    private IDeadObjectFixer b;

    private class IDeadObjectFixer
    {

        public abstract void a();
    }

}

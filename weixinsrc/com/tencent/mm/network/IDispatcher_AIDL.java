// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.IInterface;
import com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL;

// Referenced classes of package com.tencent.mm.network:
//            IReqResp_AIDL, IOnGYNetEnd_AIDL, IAccInfo_AIDL, INetworkEvent_AIDL

public interface IDispatcher_AIDL
    extends IInterface
{

    public abstract int a(IReqResp_AIDL ireqresp_aidl, IOnGYNetEnd_AIDL iongynetend_aidl);

    public abstract IAccInfo_AIDL a();

    public abstract void a(int i);

    public abstract void a(IConnPoolMoniter_AIDL iconnpoolmoniter_aidl);

    public abstract void a(String s, String s1, String s2, String s3);

    public abstract void a(String s, String s1, int ai[], int ai1[], int i, int j);

    public abstract void a(boolean flag);

    public abstract void b();

    public abstract String c();

    public abstract void d();

    public abstract boolean e();

    public abstract INetworkEvent_AIDL f();
}

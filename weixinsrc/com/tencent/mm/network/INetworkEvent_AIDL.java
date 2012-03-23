// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.IInterface;

// Referenced classes of package com.tencent.mm.network:
//            IOnNetworkChange_AIDL

public interface INetworkEvent_AIDL
    extends IInterface
{

    public abstract int a();

    public abstract boolean a(IOnNetworkChange_AIDL ionnetworkchange_aidl);

    public abstract void b();

    public abstract boolean b(IOnNetworkChange_AIDL ionnetworkchange_aidl);

    public abstract long c();
}

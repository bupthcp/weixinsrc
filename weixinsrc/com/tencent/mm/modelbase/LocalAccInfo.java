// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import android.os.RemoteException;
import com.tencent.mm.network.IAccInfo_AIDL;

public class LocalAccInfo
{

    public LocalAccInfo(IAccInfo_AIDL iaccinfo_aidl)
    {
        a = iaccinfo_aidl;
    }

    public final int a()
    {
        int j = a.g();
        int i = j;
_L2:
        return i;
        RemoteException remoteexception;
        remoteexception;
        i = 0;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a(String s, int i)
    {
        a.a(s, i);
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a(String s, String s1, String s2)
    {
        a.a(s, s1, s2);
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void b()
    {
        a.a();
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private final IAccInfo_AIDL a;
}

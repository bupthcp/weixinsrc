// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import android.os.RemoteException;
import com.tencent.mm.network.IAccInfo;
import com.tencent.mm.network.IAccInfo_AIDL;
import com.tencent.mm.platformtools.Util;

public class RAccInfo
    implements IAccInfo
{

    public RAccInfo(IAccInfo_AIDL iaccinfo_aidl)
    {
        a = iaccinfo_aidl;
    }

    private String b()
    {
        String s1 = a.d();
        String s = s1;
_L2:
        return s;
        RemoteException remoteexception;
        remoteexception;
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private String d()
    {
        String s1 = a.b();
        String s = s1;
_L2:
        return s;
        RemoteException remoteexception;
        remoteexception;
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a()
    {
        a.a();
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
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

    public final String c()
    {
        String s1 = a.c();
        String s = s1;
_L2:
        return s;
        RemoteException remoteexception;
        remoteexception;
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final String e()
    {
        String s1 = a.e();
        String s = s1;
_L2:
        return s;
        RemoteException remoteexception;
        remoteexception;
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final byte[] f()
    {
        byte abyte1[] = a.f();
        byte abyte0[] = abyte1;
_L2:
        return abyte0;
        RemoteException remoteexception;
        remoteexception;
        abyte0 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int g()
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

    public String toString()
    {
        String s = (new StringBuilder()).append("RAccInfo:\n").append("|-uin     =").append(g()).append("\n").toString();
        String s1 = (new StringBuilder()).append(s).append("|-user    =").append(d()).append("\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("|-session =").append(e()).append("\n").toString();
        String s3 = (new StringBuilder()).append(s2).append("|-pass    =").append(c()).append("\n").toString();
        String s4 = (new StringBuilder()).append(s3).append("|-pass2   =").append(b()).append("\n").toString();
        return (new StringBuilder()).append(s4).append("`-cookie  =").append(Util.a(f())).toString();
    }

    private final IAccInfo_AIDL a;
}

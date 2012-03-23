// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.a;

import com.tencent.qphone.base.remote.FromServiceMsg;
import com.tencent.qphone.base.remote.c;

public abstract class b extends c
{

    public b()
    {
    }

    public final void a(FromServiceMsg fromservicemsg)
    {
        boolean flag;
        if(fromservicemsg.d().equals("baseSdk.Msf.PingCallback"))
            flag = false;
        else
            flag = true;
        if(flag)
            b(fromservicemsg);
    }

    public abstract void b(FromServiceMsg fromservicemsg);
}

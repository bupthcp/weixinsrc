// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;


public class MMWifiLock
{

    static android.net.wifi.WifiManager.WifiLock a(MMWifiLock mmwifilock)
    {
        return mmwifilock.a;
    }

    protected void finalize()
    {
        if(a != null)
        {
            if(a.isHeld())
                a.release();
            a = null;
        }
    }

    private android.net.wifi.WifiManager.WifiLock a;
}

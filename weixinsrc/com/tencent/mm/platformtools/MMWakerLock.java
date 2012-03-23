// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;

public class MMWakerLock
{

    public MMWakerLock(Context context)
    {
        a = null;
        a = ((PowerManager)context.getSystemService("power")).newWakeLock(0x10000001, "MicroMsg.MMWakerLock");
    }

    static android.os.PowerManager.WakeLock a(MMWakerLock mmwakerlock)
    {
        return mmwakerlock.a;
    }

    public final void a()
    {
        a.acquire();
        (new Handler()).postDelayed(new _cls1(), 14000L);
    }

    public final void b()
    {
        if(a != null && a.isHeld())
            a.release();
    }

    public final boolean c()
    {
        return a.isHeld();
    }

    protected void finalize()
    {
        if(a != null && a.isHeld())
            a.release();
        a = null;
    }

    private android.os.PowerManager.WakeLock a;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            if(MMWakerLock.a(a) != null && MMWakerLock.a(a).isHeld())
                MMWakerLock.a(a).release();
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private MMWakerLock a;

        _cls1()
        {
            a = MMWakerLock.this;
            super();
        }
    }

}

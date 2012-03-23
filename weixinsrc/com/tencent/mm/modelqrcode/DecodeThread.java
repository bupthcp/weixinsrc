// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import a.b;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.tencent.mm.modelqrcode:
//            DecodeHandler, CameraManager, ScreenManager

public final class DecodeThread extends Thread
{

    public DecodeThread(CameraManager cameramanager, ScreenManager screenmanager, Handler handler)
    {
        b = handler;
        c = null;
        e = cameramanager;
        f = screenmanager;
    }

    public final Handler a()
    {
        try
        {
            d.await();
        }
        catch(InterruptedException interruptedexception) { }
        return a;
    }

    public final void run()
    {
        Looper.prepare();
        a = new DecodeHandler(e, f, c, b);
        d.countDown();
        Looper.loop();
    }

    private Handler a;
    private Handler b;
    private b c;
    private final CountDownLatch d = new CountDownLatch(1);
    private CameraManager e;
    private ScreenManager f;
}

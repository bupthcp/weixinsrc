// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import a.a;
import a.b;
import a.b.f;
import a.*;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.*;
import com.tencent.mm.platformtools.Log;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.tencent.mm.modelqrcode:
//            CameraManager, PlanarYUVLuminanceSource, ScreenManager

final class DecodeHandler extends Handler
{

    DecodeHandler(CameraManager cameramanager, ScreenManager screenmanager, b b1, Handler handler)
    {
        d = null;
        e = null;
        f = null;
        c = handler;
        e = cameramanager;
        f = screenmanager;
        Vector vector = new Vector();
        vector.add(a.a);
        b.put(l.b, vector);
        if(b1 != null)
            b.put(l.e, b1);
        a.a(b);
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 305418243 305418246: default 36
    //                   305418243 37
    //                   305418244 36
    //                   305418245 36
    //                   305418246 511;
           goto _L1 _L2 _L1 _L1 _L3
_L1:
        return;
_L2:
        h h1;
        byte abyte0[] = (byte[])message.obj;
        long l1 = System.currentTimeMillis();
        int i = e.c().x;
        int i1 = e.c().y;
        Rect rect2;
        PlanarYUVLuminanceSource planaryuvluminancesource;
        k k1;
        long l2;
        Message message1;
        Bundle bundle;
        h h2;
        if(d != null)
        {
            rect2 = d;
        } else
        {
            Point point = f.a();
            Rect rect = new Rect(f.b());
            Rect rect1 = new Rect();
            if(e.b())
            {
                rect1.top = (i1 * rect.left) / point.x;
                rect1.bottom = (i1 * rect.right) / point.x;
                rect1.left = (i * rect.top) / point.y;
                rect1.right = (i * rect.bottom) / point.y;
            } else
            {
                rect1.left = (i * rect.left) / point.x;
                rect1.right = (i * rect.right) / point.x;
                rect1.top = (i1 * rect.top) / point.y;
                rect1.bottom = (i1 * rect.bottom) / point.y;
            }
            d = rect1;
            rect2 = d;
        }
        planaryuvluminancesource = new PlanarYUVLuminanceSource(abyte0, i, i1, rect2);
        k1 = new k(new f(planaryuvluminancesource, (byte)0));
        h2 = a.a(k1);
        h1 = h2;
        a.a();
_L4:
        Exception exception;
        Exception exception1;
        if(h1 != null)
        {
            l2 = System.currentTimeMillis();
            Log.d("DecodeHandler", (new StringBuilder()).append("Found barcode (").append(l2 - l1).append(" ms):").append(h1.toString()).append("  TEXT:").append(h1.a()).toString());
            message1 = Message.obtain(c, 0x12345004, h1);
            bundle = new Bundle();
            bundle.putParcelable("barcode_bitmap", planaryuvluminancesource.b());
            message1.setData(bundle);
            message1.sendToTarget();
        } else
        {
            Message.obtain(c, 0x12345005).sendToTarget();
        }
        continue; /* Loop/switch isn't completed */
        exception1;
        a.a();
        h1 = null;
          goto _L4
        exception;
        a.a();
        throw exception;
_L3:
        Looper.myLooper().quit();
        if(true) goto _L1; else goto _L5
_L5:
    }

    private final j a = new j();
    private final Hashtable b = new Hashtable(3);
    private Handler c;
    private Rect d;
    private CameraManager e;
    private ScreenManager f;
}

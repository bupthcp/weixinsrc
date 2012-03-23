// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import a.h;
import android.os.*;

// Referenced classes of package com.tencent.mm.modelqrcode:
//            DecodeThread, CameraManager, ScreenManager

public final class CaptureHandler extends Handler
{

    public CaptureHandler(CameraManager cameramanager, ScreenManager screenmanager, OnResetPreviewListener onresetpreviewlistener, OnSuccessListener onsuccesslistener)
    {
        b = null;
        c = null;
        d = null;
        a = State.b;
        c = onresetpreviewlistener;
        d = onsuccesslistener;
        e = cameramanager;
        b = new DecodeThread(cameramanager, screenmanager, this);
        b.start();
        b();
    }

    private void b()
    {
        if(a == State.b)
        {
            a = State.a;
            e.a(b.a());
            e.b(this);
        }
    }

    public final void a()
    {
        a = State.c;
        Message.obtain(b.a(), 0x12345006).sendToTarget();
        try
        {
            b.join();
        }
        catch(InterruptedException interruptedexception) { }
        removeMessages(0x12345004);
        removeMessages(0x12345005);
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 305418241 305418245: default 40
    //                   305418241 41
    //                   305418242 62
    //                   305418243 40
    //                   305418244 69
    //                   305418245 121;
           goto _L1 _L2 _L3 _L1 _L4 _L5
_L1:
        return;
_L2:
        if(a == State.a)
            e.b(this);
        continue; /* Loop/switch isn't completed */
_L3:
        b();
        continue; /* Loop/switch isn't completed */
_L4:
        a = State.b;
        Bundle bundle = message.getData();
        if(bundle != null)
            bundle.getParcelable("barcode_bitmap");
        if(d != null)
            d.a(((h)message.obj).a());
        continue; /* Loop/switch isn't completed */
_L5:
        a = State.a;
        e.a(b.a());
        if(true) goto _L1; else goto _L6
_L6:
    }

    private State a;
    private DecodeThread b;
    private OnResetPreviewListener c;
    private OnSuccessListener d;
    private CameraManager e;

    private class State extends Enum
    {

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/tencent/mm/modelqrcode/CaptureHandler$State, s);
        }

        public static State[] values()
        {
            return (State[])d.clone();
        }

        public static final State a;
        public static final State b;
        public static final State c;
        private static final State d[];

        static 
        {
            a = new State("PREVIEW", 0);
            b = new State("SUCCESS", 1);
            c = new State("DONE", 2);
            State astate[] = new State[3];
            astate[0] = a;
            astate[1] = b;
            astate[2] = c;
            d = astate;
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    private class OnSuccessListener
    {

        public abstract void a(String s);
    }

}

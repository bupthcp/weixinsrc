// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.os.Handler;
import android.os.Message;

public class MTimerHandler extends Handler
{

    public MTimerHandler(CallBack callback, boolean flag)
    {
        d = 0L;
        e = callback;
        if(a >= 8192)
            a = 0;
        int i = 1 + a;
        a = i;
        b = i;
        c = flag;
    }

    public final void a()
    {
        removeMessages(b);
    }

    public final void a(long l)
    {
        d = l;
        a();
        sendEmptyMessageDelayed(b, l);
    }

    public final boolean b()
    {
        boolean flag;
        if(!hasMessages(b))
            flag = true;
        else
            flag = false;
        return flag;
    }

    protected void finalize()
    {
        a();
        super.finalize();
    }

    public void handleMessage(Message message)
    {
        if(message.what == b && e != null && e.a() && c)
            sendEmptyMessageDelayed(b, d);
    }

    private static int a;
    private final int b;
    private final boolean c;
    private long d;
    private final CallBack e;

    private class CallBack
    {

        public abstract boolean a();
    }

}

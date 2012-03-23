// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public abstract class SyncTask
{

    public SyncTask()
    {
        this(0L, null);
    }

    public SyncTask(long l, Object obj)
    {
        b = new Object();
        d = new _cls1();
        c = l;
        a = obj;
    }

    protected abstract Object a();

    public final Object a(Handler handler)
    {
        if(handler != null) goto _L2; else goto _L1
_L1:
        Object obj;
        Log.a("MicroMsg.SyncTask", "null handler, task in exec thread, return now");
        obj = a();
_L4:
        return obj;
_L2:
        if(Thread.currentThread().getId() == handler.getLooper().getThread().getId())
        {
            Log.a("MicroMsg.SyncTask", "same tid, task in exec thread, return now");
            obj = a();
            continue; /* Loop/switch isn't completed */
        }
        handler.post(d);
        synchronized(b)
        {
            b.wait(c);
        }
_L5:
        Log.e("MicroMsg.SyncTask", (new StringBuilder()).append("sync task done, return=").append(a).toString());
        obj = a;
        if(true) goto _L4; else goto _L3
_L3:
        exception;
        obj1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch(InterruptedException interruptedexception) { }
          goto _L5
    }

    public final void a(Object obj)
    {
        a = obj;
        Object obj1 = b;
        obj1;
        JVM INSTR monitorenter ;
        b.notify();
        return;
    }

    private Object a;
    private Object b;
    private final long c;
    private Runnable d;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            a.a(a.a());
        }

        private SyncTask a;

        _cls1()
        {
            a = SyncTask.this;
            super();
        }
    }

}

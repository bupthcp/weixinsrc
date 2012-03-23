// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import android.content.*;
import com.tencent.mm.platformtools.Log;

public final class CoreServiceHelper
{

    private CoreServiceHelper()
    {
    }

    public static void a(Context context)
    {
        Intent intent = new Intent();
        intent.setAction("com.tencent.mm.booter.CoreService");
        context.stopService(intent);
    }

    public static boolean a(Context context, String s)
    {
        boolean flag;
label0:
        {
            flag = false;
            try
            {
                if(!s.equals("noop") && context.getSharedPreferences("com.tencent.mm_preferences", 0).getBoolean("settings_fully_exit", false))
                {
                    Log.c("MicroMsg.CoreServiceHelper", "fully exited, no need to start service");
                    break label0;
                }
                Log.d("MicroMsg.CoreServiceHelper", (new StringBuilder()).append("ensure service running, type=").append(s).toString());
                Intent intent = new Intent();
                intent.setAction("com.tencent.mm.booter.CoreService");
                intent.setFlags(0x10000000);
                context.startService(intent);
            }
            catch(Exception exception) { }
            flag = true;
        }
        return flag;
    }

    /**
     * @deprecated Method b is deprecated
     */

    public static void b(Context context)
    {
        com/tencent/mm/booter/CoreServiceHelper;
        JVM INSTR monitorenter ;
        boolean flag;
        Log.c("MicroMsg.CoreServiceHelper", "setContext before bindService");
        Intent intent = new Intent();
        intent.setAction("com.tencent.mm.booter.CoreService");
        if(a)
            context.unbindService(b);
        flag = context.bindService(intent, b, 1);
        if(!flag) goto _L2; else goto _L1
_L1:
        com/tencent/mm/booter/CoreServiceHelper;
        JVM INSTR monitorexit ;
        return;
_L2:
        Log.a("MicroMsg.CoreServiceHelper", "bindService failed, may be caused by some crashes");
        if(true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean a = false;
    private static final ServiceConnection b = new _cls1();


    private class _cls1
        implements ServiceConnection
    {

        public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            Log.b("MicroMsg.CoreServiceHelper", "onServiceConnected ");
            CoreServiceHelper.a = true;
            MMCore.a(new RDispatcher(com.tencent.mm.network.IDispatcher_AIDL.Stub.a(ibinder), a));
        }

        public final void onServiceDisconnected(ComponentName componentname)
        {
            Log.b("MicroMsg.CoreServiceHelper", "onServiceDisconnected ");
            CoreServiceHelper.a = false;
            MMCore.b();
            MMCore.g().b();
            if(MMCore.t() && !MMCore.w())
            {
                CoreServiceHelper.a(MMCore.c(), "auto");
                CoreServiceHelper.b(MMCore.c());
            }
        }

        private com.tencent.mm.modelbase.RDispatcher.IDeadObjectFixer a;

        _cls1()
        {
            class _cls1
                implements com.tencent.mm.modelbase.RDispatcher.IDeadObjectFixer
            {

                public final void a()
                {
                    MMCore.b();
                    CoreServiceHelper.b(MMCore.c());
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            a = new _cls1();
        }
    }

}

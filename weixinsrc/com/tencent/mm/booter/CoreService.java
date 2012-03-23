// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.*;
import com.tencent.mm.modelbase.MMUncaughtExceptionHandler;
import com.tencent.mm.modelstat.NetStatWatchDog;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.test.Test;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.tencent.mm.booter:
//            NotifyReceiver, Debugger

public class CoreService extends Service
    implements IOnGYNetNotify, com.tencent.mm.network.MMPushCore.INetworkAvailable
{

    public CoreService()
    {
        d = new NetStatWatchDog();
        e = null;
        f = new FrequencyLimiter();
        g = new MTimerHandler(new _cls3(), false);
    }

    static FrequencyLimiter a(CoreService coreservice)
    {
        return coreservice.f;
    }

    static MMAutoAuth b(CoreService coreservice)
    {
        return coreservice.a;
    }

    public final void a(boolean flag, String s, String s1)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)getSystemService("connectivity");
        d.a((new StringBuilder()).append("net_changed, on=").append(flag).append(", ").append(s).append(", ").append(s1).append(", bd=").append(connectivitymanager.getBackgroundDataSetting()).toString(), true);
        if(!flag)
        {
            Log.b("MicroMsg.CoreService", "[NETWORK LOST]");
            MMPushCore.b().a = false;
            MMPushCore.c().a(0);
        } else
        {
            Log.b("MicroMsg.CoreService", "[NETWORK CONNECTED]");
            MMPushCore.b().a = true;
            MMPushCore.c().a(1);
            if(e == null)
                e = new MMWakerLock(getApplicationContext());
            if(!e.c())
                e.a();
            Log.c("MicroMsg.CoreService", "checking ready, start in 7000ms");
            g.a(7000L);
        }
    }

    public final boolean a(int i, int j, String s, int k, byte abyte0[])
    {
        boolean flag = false;
        if(getSharedPreferences("com.tencent.mm_preferences", flag).getBoolean("settings_fully_exit", flag))
        {
            Log.c("MicroMsg.CoreService", "fully exited, no need to notify worker");
        } else
        {
            Intent intent = new Intent(this, com/tencent/mm/booter/NotifyReceiver);
            intent.putExtra("notify_option_type", 2);
            intent.putExtra("notify_uin", a.g().g());
            intent.putExtra("notify_respType", k);
            intent.putExtra("notify_respBuf", abyte0);
            Log.c("MicroMsg.CoreService", (new StringBuilder()).append("notify broadcast:").append(intent.getAction()).append(", type=").append(k).toString());
            MMPushCore.e().postDelayed(new _cls2(intent), 100L);
            flag = true;
        }
        return flag;
    }

    public IBinder onBind(Intent intent)
    {
        Log.d("MicroMsg.CoreService", (new StringBuilder()).append("onBind~~~ threadID:").append(Thread.currentThread()).toString());
        return a;
    }

    public void onCreate()
    {
        Log.d("MicroMsg.CoreService", (new StringBuilder()).append("onCreate~~~threadID:").append(Thread.currentThread()).toString());
        super.onCreate();
        Debugger debugger = new Debugger(this);
        Log.a(Util.a(debugger.c(".com.tencent.mm.debug.log.level"), 0), false);
        Test.a = Util.a(debugger.d(".com.tencent.mm.debug.test.display_errcode"), false);
        Test.b = Util.a(debugger.d(".com.tencent.mm.debug.test.display_msgstate"), false);
        Test.c = Util.a(debugger.d(".com.tencent.mm.debug.test.network.simulate_fault"), false);
        Test.d = Util.a(debugger.d(".com.tencent.mm.debug.test.network.force_touch"), false);
        Test.e = Util.a(debugger.d(".com.tencent.mm.debug.test.outputToSdCardlog"), false);
        Test.f = Util.a(debugger.d(".com.tencent.mm.debug.test.crashIsExit"), false);
        Test.g = Util.a(debugger.d(".com.tencent.mm.debug.test.uploadLog"), false);
        try
        {
            Log.b("MicroMsg.Debugger", "try set test protocal version");
            int i = Integer.decode(debugger.b(".com.tencent.mm.debug.log.setversion")).intValue();
            ConstantsProtocal.a(i);
            Log.b("MicroMsg.Debugger", (new StringBuilder()).append("set up test protocal version = ").append(Integer.toHexString(i)).toString());
        }
        catch(Exception exception)
        {
            Log.c("MicroMsg.Debugger", "no debugger was got");
        }
        if(Test.g)
        {
            File file = new File("/sdcard/tencent/");
            if(!file.exists())
                file.mkdirs();
            File file1 = new File("/sdcard/tencent/", "push.log");
            String s;
            String s1;
            String s2;
            String s3;
            ConnectivityManager connectivitymanager;
            NetworkInfo networkinfo;
            NetStatWatchDog netstatwatchdog;
            StringBuilder stringbuilder;
            String s4;
            try
            {
                (new FileOutputStream(file1, true)).close();
            }
            catch(Exception exception1) { }
            Log.a("/sdcard/tencent/push.log", "push.log", "(null)", ConstantsProtocal.b);
        }
        MAlarmHandler.a(c);
        MMPushCore.a(getApplicationContext());
        MMPushCore.a(new NetService());
        MMPushCore.a(new NetworkEvent());
        MMPushCore.a(new Handler());
        MMPushCore.a(this);
        MMPushCore.a(d);
        a = MMPushCore.g();
        if(a == null)
        {
            Log.c("MicroMsg.CoreService", "autoAuth is null and new one");
            a = new MMAutoAuth(MMPushCore.e());
            MMPushCore.a(a);
        } else
        {
            Log.b("MicroMsg.CoreService", "autoAuth is not null and reset");
            a.b();
        }
        a.a(this);
        b = new MMUncaughtExceptionHandler(a.g(), "net_push");
        s = debugger.b(".com.tencent.mm.debug.server.host.http");
        s1 = debugger.b(".com.tencent.mm.debug.server.ports.http");
        s2 = debugger.b(".com.tencent.mm.debug.server.host.socket");
        s3 = debugger.b(".com.tencent.mm.debug.server.ports.socket");
        a.a(s, s1, s2, s3);
        MMReceivers.AlarmReceiver.c(getApplicationContext());
        connectivitymanager = (ConnectivityManager)getSystemService("connectivity");
        networkinfo = connectivitymanager.getActiveNetworkInfo();
        if(networkinfo == null || networkinfo.getState() != android.net.NetworkInfo.State.CONNECTED)
        {
            MMPushCore.b().a = false;
            MMPushCore.c().a(0);
        } else
        {
            MMPushCore.b().a = true;
            MMPushCore.c().a(1);
        }
        netstatwatchdog = d;
        stringbuilder = (new StringBuilder()).append("startup, ");
        if(networkinfo == null)
            s4 = "empty";
        else
            s4 = networkinfo.getTypeName();
        netstatwatchdog.a(stringbuilder.append(s4).append(", bd=").append(connectivitymanager.getBackgroundDataSetting()).toString(), true);
        getSharedPreferences("com.tencent.mm_preferences", 0).edit().putBoolean("push_service_running", true).commit();
    }

    public void onDestroy()
    {
        Log.d("MicroMsg.CoreService", (new StringBuilder()).append("onDestroy~~~ threadID:").append(Thread.currentThread()).toString());
        getSharedPreferences("com.tencent.mm_preferences", 0).edit().putBoolean("push_service_running", false).commit();
        d.a("stopped", true);
        NetStatWatchDog.b();
        super.onDestroy();
        Log.b("MicroMsg.CoreService", "[COMPLETE EXIT]");
        try
        {
            MMReceivers.AlarmReceiver.d(getApplicationContext());
            MMReceivers.AlarmReceiver.b(getApplicationContext());
        }
        catch(Exception exception) { }
        Process.killProcess(Process.myPid());
    }

    public void onRebind(Intent intent)
    {
        Log.d("MicroMsg.CoreService", (new StringBuilder()).append("onRebind~~~ threadID:").append(Thread.currentThread()).toString());
        super.onRebind(intent);
    }

    public void onStart(Intent intent, int i)
    {
        Log.d("MicroMsg.CoreService", (new StringBuilder()).append("onStart~~~threadID:").append(Thread.currentThread()).toString());
        super.onStart(intent, i);
    }

    public boolean onUnbind(Intent intent)
    {
        Log.d("MicroMsg.CoreService", (new StringBuilder()).append("onUnbind~~~ threadID:").append(Thread.currentThread()).toString());
        MMPushCore.b().a(null);
        return super.onUnbind(intent);
    }

    private MMAutoAuth a;
    private MMUncaughtExceptionHandler b;
    private final com.tencent.mm.platformtools.MAlarmHandler.IBumper c = new _cls1();
    private NetStatWatchDog d;
    private MMWakerLock e;
    private FrequencyLimiter f;
    private MTimerHandler g;

    private class _cls1
        implements com.tencent.mm.platformtools.MAlarmHandler.IBumper
    {

        public final void a()
        {
            MMReceivers.AlarmReceiver.a(a.getApplicationContext());
        }

        public final void b()
        {
            MMReceivers.AlarmReceiver.b(a.getApplicationContext());
        }

        private CoreService a;

        _cls1()
        {
            a = CoreService.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(!CoreService.a(a).a())
            {
                Log.a("MicroMsg.CoreService", "checker frequency limited");
            } else
            {
                Intent intent = new Intent(a, com/tencent/mm/booter/NotifyReceiver);
                intent.putExtra("notify_option_type", 1);
                intent.putExtra("notify_uin", CoreService.b(a).g().g());
                a.sendBroadcast(intent);
            }
            return true;
        }

        private CoreService a;

        _cls3()
        {
            a = CoreService.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            b.sendBroadcast(a);
        }

        private Intent a;
        private CoreService b;

        _cls2(Intent intent)
        {
            b = CoreService.this;
            a = intent;
            super();
        }
    }

}

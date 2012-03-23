// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.nearbyfriends;

import android.app.PendingIntent;
import android.content.*;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import b.a.a;
import com.tencent.mm.modelsimple.NetSceneLbsFind;
import com.tencent.mm.platformtools.*;
import java.util.LinkedList;
import java.util.List;

public class LBSManager extends BroadcastReceiver
{

    public LBSManager(Context context, OnLocationGotListener onlocationgotlistener)
    {
        j = false;
        m = new MTimerHandler(new _cls1(), false);
        f = onlocationgotlistener;
        a = false;
        k = 0;
        h = context;
        g = (LocationManager)context.getSystemService("location");
        i = PendingIntent.getBroadcast(context, 0, new Intent("filter_gps"), 0x8000000);
    }

    static boolean a(LBSManager lbsmanager)
    {
        lbsmanager.j = false;
        return false;
    }

    private boolean g()
    {
        boolean flag1 = g.isProviderEnabled("gps");
        boolean flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private boolean h()
    {
        boolean flag1 = g.isProviderEnabled("network");
        boolean flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void i()
    {
        m.a();
        a = true;
    }

    public final void a()
    {
        String s;
        String s1;
        boolean flag;
        s = Util.h(f());
        s1 = Util.h(e());
        flag = g();
        boolean flag1;
        if(Util.f(e) > 0x2bf20L || d <= 0)
            flag1 = false;
        else
            flag1 = true;
        if(!flag1 || f == null) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.LBSManager", (new StringBuilder()).append("location by GPS cache ok:[").append(b).append(" , ").append(c).append("]  ").append("accuracy:").append(d).toString());
        f.a(b, c, d, 0, s, s1, true);
        c();
_L4:
        return;
_L2:
        if(flag && !j)
        {
            j = true;
            k = 0;
            c();
            m.a(3000L);
        } else
        if(s.equals("") && s1.equals(""))
        {
            Log.e("MicroMsg.LBSManager", "get location by network failed");
            if(f != null)
                f.a(-1000F, -1000F, -1000, 1, "", "", false);
        } else
        {
            Log.e("MicroMsg.LBSManager", (new StringBuilder()).append("get location by network ok, macs : ").append(s).append(" cell ids :").append(s1).toString());
            if(f != null)
                f.a(-1000F, -1000F, -1000, 1, s, s1, true);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void b()
    {
        Log.e("MicroMsg.LBSManager", "removed gps update");
        if(g != null)
            g.removeUpdates(i);
        h.unregisterReceiver(this);
_L1:
        return;
        Exception exception;
        exception;
        Log.e("MicroMsg.LBSManager", "sensor receiver has already unregistered");
          goto _L1
    }

    public final void c()
    {
        if(g() || h())
        {
            Log.e("MicroMsg.LBSManager", "requested gps update");
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("filter_gps");
            h.registerReceiver(this, intentfilter);
            if(g())
                g.requestLocationUpdates("gps", 500L, 0F, i);
            if(h())
                g.requestLocationUpdates("network", 500L, 0F, i);
            l = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        }
    }

    public final void d()
    {
        if(g != null)
        {
            g.removeUpdates(i);
            Log.e("MicroMsg.LBSManager", "removed gps update on destroy");
        }
        if(m != null)
            i();
        f = null;
        h = null;
        m = null;
        g = null;
    }

    public final String e()
    {
        return NetSceneLbsFind.b(b.a.a.a(h));
    }

    public final String f()
    {
        WifiManager wifimanager = (WifiManager)h.getSystemService("wifi");
        String s;
        if(wifimanager == null)
        {
            Log.a("MicroMsg.LBSManager", "no wifi service");
            s = "";
        } else
        if(wifimanager.getConnectionInfo() == null)
        {
            Log.a("MicroMsg.LBSManager", "WIFILocation wifi info null");
            s = "";
        } else
        {
            LinkedList linkedlist = new LinkedList();
            List list = wifimanager.getScanResults();
            if(list != null)
            {
                for(int i1 = 0; i1 < list.size(); i1++)
                    linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.MacInfo(((ScanResult)list.get(i1)).BSSID, (new StringBuilder()).append(((ScanResult)list.get(i1)).level).append("").toString()));

            }
            s = NetSceneLbsFind.a(linkedlist);
        }
        return s;
    }

    public void onReceive(Context context, Intent intent)
    {
        Location location = (Location)intent.getExtras().get("location");
        k = 1 + k;
        if(location != null)
        {
            boolean flag = "gps".equals(location.getProvider());
            Log.e("MicroMsg.LBSManager", (new StringBuilder()).append("onReceived time:").append(l.b()).toString());
            if((flag && location.getAccuracy() <= 200F || !flag && location.getAccuracy() <= 700F) && location.getAccuracy() > 0F)
            {
                if(flag)
                {
                    float f1 = (float)location.getLatitude();
                    float f2 = (float)location.getLongitude();
                    int j1 = (int)location.getAccuracy();
                    if(j1 != 0)
                    {
                        b = f1;
                        c = f2;
                        d = j1;
                        e = Util.e();
                    }
                }
                Log.e("MicroMsg.LBSManager", (new StringBuilder()).append("location by GPS ok:[").append(location.getLatitude()).append(" , ").append(location.getLongitude()).append("]  ").append("accuracy:").append(location.getAccuracy()).append("  retry count:").append(k).append(" isGpsProvider:").append(flag).toString());
                if(f != null && !a)
                {
                    i();
                    String s = Util.h(f());
                    String s1 = Util.h(e());
                    int i1;
                    if(flag)
                        i1 = 0;
                    else
                        i1 = 1;
                    f.a((float)location.getLatitude(), (float)location.getLongitude(), (int)location.getAccuracy(), i1, s, s1, true);
                }
            }
        }
    }

    private static float b = -1000F;
    private static float c = -1000F;
    private static int d = -1000;
    private static long e;
    boolean a;
    private OnLocationGotListener f;
    private LocationManager g;
    private Context h;
    private PendingIntent i;
    private boolean j;
    private int k;
    private com.tencent.mm.algorithm.CodeInfo.TestTime l;
    private MTimerHandler m;


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            Log.e("MicroMsg.LBSManager", "get location by GPS failed.");
            a.a = true;
            a.a();
            com.tencent.mm.ui.nearbyfriends.LBSManager.a(a);
            return false;
        }

        private LBSManager a;

        _cls1()
        {
            a = LBSManager.this;
            super();
        }
    }


    private class OnLocationGotListener
    {

        public abstract void a(float f1, float f2, int i1, int j1, String s, String s1, boolean flag);
    }

}

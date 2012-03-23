// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import android.net.*;

// Referenced classes of package com.tencent.qqpim.utils:
//            QQPimUtils

public class Apn
{

    public Apn()
    {
    }

    public static void checkInit()
    {
        if(!IS_INIT) goto _L2; else goto _L1
_L1:
        return;
_L2:
        com/tencent/qqpim/utils/Apn;
        JVM INSTR monitorenter ;
        if(!IS_INIT) goto _L3; else goto _L1
_L3:
        break MISSING_BLOCK_LABEL_28;
        Exception exception;
        exception;
        throw exception;
        init();
        IS_INIT = true;
        com/tencent/qqpim/utils/Apn;
        JVM INSTR monitorexit ;
          goto _L1
    }

    public static String getApnName(int i)
    {
        i;
        JVM INSTR tableswitch 0 4: default 36
    //                   0 59
    //                   1 47
    //                   2 41
    //                   3 36
    //                   4 53;
           goto _L1 _L2 _L3 _L4 _L1 _L5
_L1:
        String s = "N/A";
_L7:
        return s;
_L4:
        s = "Wap";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "Net";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "Wlan";
        continue; /* Loop/switch isn't completed */
_L2:
        s = "N/A";
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static void init()
    {
        NetworkInfo networkinfo;
        int i;
        networkinfo = ((ConnectivityManager)QQPimUtils.APPLICATION_CONTEXT.getSystemService("connectivity")).getActiveNetworkInfo();
        QQPimUtils.writeToLog("Apn", " ");
        QQPimUtils.writeToLog("Apn", (new StringBuilder("networkInfo : ")).append(networkinfo).toString());
        i = -1;
        String s;
        M_APN_TYPE = 0;
        s = null;
        if(networkinfo != null)
        {
            i = networkinfo.getType();
            QQPimUtils.writeToLog("Apn", (new StringBuilder("typeName : ")).append(networkinfo.getTypeName()).toString());
            s = networkinfo.getExtraInfo();
            if(s == null)
                M_APN_TYPE = 0;
            else
                s = s.trim().toLowerCase();
        }
        QQPimUtils.writeToLog("Apn", (new StringBuilder("extraInfo : ")).append(s).toString());
        if(i != 1) goto _L2; else goto _L1
_L1:
        M_APN_TYPE = 4;
        M_USE_PROXY = false;
_L5:
        QQPimUtils.writeToLog("Apn", (new StringBuilder("M_APN_TYPE : ")).append(M_APN_TYPE).toString());
        QQPimUtils.writeToLog("Apn", (new StringBuilder("M_USE_PROXY : ")).append(M_USE_PROXY).toString());
        QQPimUtils.writeToLog("Apn", (new StringBuilder("M_APN_PROXY : ")).append(M_APN_PROXY).toString());
        QQPimUtils.writeToLog("Apn", (new StringBuilder("M_APN_PORT : ")).append(M_APN_PORT).toString());
        break MISSING_BLOCK_LABEL_449;
_L2:
        if(s == null)
            break MISSING_BLOCK_LABEL_424;
        if(!s.contains(APN_CMWAP) && !s.contains(APN_UNIWAP) && !s.contains(APN_3GWAP) && !s.contains(APN_CTWAP)) goto _L4; else goto _L3
_L3:
        M_APN_TYPE = 2;
_L8:
        M_USE_PROXY = false;
        if(isProxyMode(M_APN_TYPE))
        {
            M_APN_PROXY = Proxy.getDefaultHost();
            M_APN_PORT = Proxy.getDefaultPort();
            if(M_APN_PROXY != null)
                M_APN_PROXY = M_APN_PROXY.trim();
            if(M_APN_PROXY != null && !"".equals(M_APN_PROXY))
            {
                M_USE_PROXY = true;
                M_APN_TYPE = 2;
                if("10.0.0.200".equals(M_APN_PROXY))
                    M_PROXY_TYPE = 1;
                else
                    M_PROXY_TYPE = 0;
            } else
            {
                M_USE_PROXY = false;
                M_APN_TYPE = 1;
            }
        }
        if(true) goto _L5; else goto _L4
_L4:
        if(!s.contains(APN_CMNET) && !s.contains(APN_UNINET) && !s.contains(APN_3GNET) && !s.contains(APN_CTNET)) goto _L7; else goto _L6
_L6:
        M_APN_TYPE = 1;
          goto _L8
_L7:
        s.contains(APN_777);
        M_APN_TYPE = 0;
          goto _L8
_L10:
        return;
        Exception exception;
        exception;
        if(true) goto _L10; else goto _L9
_L9:
    }

    private static boolean isProxyMode(int i)
    {
        boolean flag;
        if(i != 2 && i != 0)
            flag = false;
        else
            flag = true;
        return flag;
    }

    public static String APN_3GNET = "3gnet";
    public static String APN_3GWAP = "3gwap";
    public static String APN_777 = "#777";
    public static String APN_CMNET = "cmnet";
    public static String APN_CMWAP = "cmwap";
    public static String APN_CTNET = "ctnet";
    public static String APN_CTWAP = "ctwap";
    public static final String APN_NET = "Net";
    public static String APN_UNINET = "uninet";
    public static String APN_UNIWAP = "uniwap";
    public static final String APN_UNKNOWN = "N/A";
    public static final String APN_WAP = "Wap";
    public static final String APN_WIFI = "Wlan";
    public static boolean IS_INIT = false;
    public static int M_APN_PORT = 0;
    public static String M_APN_PROXY = null;
    public static int M_APN_TYPE = 0;
    public static byte M_PROXY_TYPE = 0;
    public static boolean M_USE_PROXY = false;
    private static final String PROXY_CTWAP = "10.0.0.200";
    public static final byte PROXY_TYPE_CM = 0;
    public static final byte PROXY_TYPE_CT = 1;
    private static final String TAG = "Apn";
    public static final int TYPE_NET = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_WAP = 2;
    public static final int TYPE_WIFI = 4;

    static 
    {
        M_APN_TYPE = 4;
        M_APN_PORT = 80;
        M_PROXY_TYPE = 0;
        M_USE_PROXY = false;
        IS_INIT = false;
    }
}

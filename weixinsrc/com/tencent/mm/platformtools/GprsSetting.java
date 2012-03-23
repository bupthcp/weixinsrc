// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class GprsSetting
{

    private GprsSetting()
    {
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo == null) goto _L2; else goto _L1
_L1:
        int i = networkinfo.getType();
        if(i != 1) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        return flag;
        NullPointerException nullpointerexception;
        nullpointerexception;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static boolean b(Context context)
    {
        NetworkInfo anetworkinfo[];
        int i;
        int j;
        int k;
        anetworkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getAllNetworkInfo();
        i = anetworkinfo.length;
        j = 0;
        k = 0;
_L6:
        if(j >= i) goto _L2; else goto _L1
_L1:
        NetworkInfo networkinfo;
        networkinfo = anetworkinfo[j];
        if(!networkinfo.isConnected())
            break MISSING_BLOCK_LABEL_152;
        if(networkinfo.getType() != 1) goto _L4; else goto _L3
_L3:
        boolean flag = false;
          goto _L5
_L4:
        boolean flag1;
        if(networkinfo.getType() != 0)
            break MISSING_BLOCK_LABEL_152;
        if(networkinfo.getExtraInfo().equalsIgnoreCase("cmwap"))
        {
            k++;
            break MISSING_BLOCK_LABEL_152;
        }
        if(networkinfo.getExtraInfo().equalsIgnoreCase("3gwap"))
        {
            k++;
            break MISSING_BLOCK_LABEL_152;
        }
        flag1 = networkinfo.getExtraInfo().equalsIgnoreCase("uniwap");
        if(flag1)
        {
            k++;
            break MISSING_BLOCK_LABEL_152;
        }
        flag = false;
          goto _L5
_L2:
        if(k > 0)
            flag = true;
        else
            flag = false;
          goto _L5
        NullPointerException nullpointerexception;
        nullpointerexception;
        flag = false;
_L5:
        return flag;
        j++;
          goto _L6
    }
}

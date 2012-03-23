// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL;
import com.tencent.mm.platformtools.GprsSetting;

public final class NetService
{

    public NetService()
    {
        b = null;
        a = false;
    }

    public static boolean a(int i, int j, Context context)
    {
        boolean flag;
        SharedPreferences sharedpreferences;
        flag = true;
        sharedpreferences = context.getSharedPreferences("com.tencent.mm_preferences", 0);
        if(!sharedpreferences.getBoolean("settings_active_time_full", flag)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int k = sharedpreferences.getInt("settings_active_begin_time_hour", 8);
        int l = sharedpreferences.getInt("settings_active_begin_time_min", 0);
        int i1 = sharedpreferences.getInt("settings_active_end_time_hour", 23);
        int j1 = sharedpreferences.getInt("settings_active_end_time_min", 0);
        if(k != i1 || l != j1)
            if(k == i1 && l < j1)
            {
                if(i != k || j < l || j > j1)
                    flag = false;
            } else
            if(i1 > k)
            {
                if((i <= k || i >= i1) && (i != k || j < l) && (i != i1 || j > j1))
                    flag = false;
            } else
            if((i1 < k || k == i1 && l > j1) && (i <= k || i > 23) && (i != k || j < l) && (i != i1 || j > j1) && (i <= 0 || i >= i1))
                flag = false;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(Context context)
    {
        boolean flag;
        if(context != null && !GprsSetting.b(context))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean b(Context context)
    {
        boolean flag;
        if(context != null && GprsSetting.a(context))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final IConnPoolMoniter_AIDL a()
    {
        return b;
    }

    public final void a(IConnPoolMoniter_AIDL iconnpoolmoniter_aidl)
    {
        b = iconnpoolmoniter_aidl;
    }

    public boolean a;
    private IConnPoolMoniter_AIDL b;
}

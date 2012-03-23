// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import android.content.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;

public class MountReceiver extends BroadcastReceiver
{

    public MountReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(!intent.getAction().equals("android.intent.action.MEDIA_EJECT")) goto _L2; else goto _L1
_L1:
        if(MMCore.f().b())
        {
            MMCore.f().a(MMCore.a());
            com.tencent.mm.ui.MMToast.ToastSdcard.a(context, 1);
        }
_L4:
        return;
_L2:
        if(intent.getAction().equals("android.intent.action.MEDIA_MOUNTED") && MMCore.f().b())
        {
            MMCore.f().a(MMCore.a());
            if(Util.i())
                com.tencent.mm.ui.MMToast.ToastSdcard.a(context, 2);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }
}

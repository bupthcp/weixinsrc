// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.receiver;

import android.content.*;
import android.os.Bundle;
import com.tencent.qqpim.UI.MobileRegisterActivity;

public class SmsSendReceiver extends BroadcastReceiver
{

    public SmsSendReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(intent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = getResultCode();
        if("com.tencent.qqpim.action_register_sms_sended".equals(intent.getAction()))
        {
            Intent intent1 = new Intent();
            intent1.setClass(context, com/tencent/qqpim/UI/MobileRegisterActivity);
            intent1.addFlags(0x30000000);
            Bundle bundle = new Bundle();
            bundle.putInt("retcode_sms_sened_key", i);
            intent1.putExtras(bundle);
            context.startActivity(intent1);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String ACTION_REGISTER_SMS_SENDED = "com.tencent.qqpim.action_register_sms_sended";
}

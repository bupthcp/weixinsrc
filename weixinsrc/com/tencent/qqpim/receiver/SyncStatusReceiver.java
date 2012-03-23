// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.receiver;

import android.content.*;
import com.tencent.qqpim.model.SyncModel;

public class SyncStatusReceiver extends BroadcastReceiver
{

    public SyncStatusReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(intent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s = intent.getAction();
        if("com.tencent.qqpim.action_req_is_sync_working".equals(s))
        {
            if(SyncModel.LOCAL_SYNC_RUNNING)
            {
                String s1 = intent.getStringExtra("package_name");
                if(s1 != null && !s1.equals(context.getPackageName()))
                {
                    Intent intent1 = new Intent();
                    intent1.setAction("com.tencent.qqpim.action_resp_sync_is_working");
                    context.sendBroadcast(intent1);
                }
            }
        } else
        if("com.tencent.qqpim.action_resp_sync_is_working".equals(s))
            SyncModel.REMOTE_SYNC_RUNNING = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String ACTION_REQ_IS_SYNC_WORKING = "com.tencent.qqpim.action_req_is_sync_working";
    public static final String ACTION_RESP_SYNC_IS_WORKING = "com.tencent.qqpim.action_resp_sync_is_working";
    public static final String EXTRA_REQ_SYNC_IS_WORKING_PACKAGE_NAME = "package_name";
}

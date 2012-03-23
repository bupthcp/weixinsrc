// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.service;

import android.content.Context;
import android.os.Handler;
import com.tencent.qphone.a.a.a.e;

public class QQServiceUtil
{

    public QQServiceUtil(Context context)
    {
        amEngine = null;
        amEngine = new e(APP_ID, context, new myAMActionLister(null));
    }

    public void startGetSystemAccout(Handler handler)
    {
        callbackhandler = handler;
        amEngine.getDefaultPassport(KEY_ID);
    }

    public static int APP_ID = 128;
    public static byte KEY[];
    public static int KEY_ID = 7;
    e amEngine;
    Handler callbackhandler;

    static 
    {
        byte abyte0[] = new byte[16];
        abyte0[0] = 105;
        abyte0[1] = 2;
        abyte0[2] = -74;
        abyte0[3] = -48;
        abyte0[4] = 103;
        abyte0[5] = -82;
        abyte0[6] = -32;
        abyte0[7] = -67;
        abyte0[8] = 2;
        abyte0[9] = -40;
        abyte0[10] = -78;
        abyte0[11] = 17;
        abyte0[12] = 103;
        abyte0[13] = -82;
        abyte0[14] = -76;
        abyte0[15] = 119;
        KEY = abyte0;
    }

    private class myAMActionLister extends d
    {

        private void startInitUI(Bundle bundle)
        {
            if(bundle != null)
            {
                bundle.getInt("ret");
                System.out.println("ret");
                Message message = callbackhandler.obtainMessage();
                message.setData(bundle);
                message.what = 23;
                callbackhandler.sendMessage(message);
                amEngine.a();
            }
        }

        public void onGetDefaultPassportResult(Bundle bundle)
        {
            startInitUI(bundle);
        }

        public void onGetMainAccountResult(Bundle bundle)
        {
            startInitUI(bundle);
        }

        final QQServiceUtil this$0;

        private myAMActionLister()
        {
            this$0 = QQServiceUtil.this;
            super();
        }

        myAMActionLister(myAMActionLister myamactionlister)
        {
            this();
        }
    }

}

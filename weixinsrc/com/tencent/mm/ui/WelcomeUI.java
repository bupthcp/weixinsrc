// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import com.tencent.mm.platformtools.Log;

public class WelcomeUI extends Activity
{

    public WelcomeUI()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        Log.d("MicroMsg.WelcomeUI", "onCreate");
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(0x7f030106);
        (new Handler()).postDelayed(new _cls1(), 1700L);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
            flag = true;
        else
            flag = super.onKeyDown(i, keyevent);
        return flag;
    }

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            a.setResult(-1, new Intent());
            a.finish();
        }

        private WelcomeUI a;

        _cls1()
        {
            a = WelcomeUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class SendFeedBackUI extends MMActivity
    implements IOnSceneEnd
{

    public SendFeedBackUI()
    {
        b = null;
    }

    static ProgressDialog a(SendFeedBackUI sendfeedbackui, ProgressDialog progressdialog)
    {
        sendfeedbackui.b = progressdialog;
        return progressdialog;
    }

    static EditText a(SendFeedBackUI sendfeedbackui)
    {
        return sendfeedbackui.a;
    }

    protected final int a()
    {
        return 0x7f03004c;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
        if(i == 0 && j == 0)
            MMAlert.a(this, getString(0x7f0a0193), getString(0x7f0a0010), new _cls3());
        else
            MMAlert.a(this, getString(0x7f0a0194), getString(0x7f0a0010), new _cls4());
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0192);
        a = (EditText)findViewById(0x7f070117);
        b(0x7f0a0015, new _cls1());
        a(0x7f0a0011, new _cls2());
    }

    public void onDestroy()
    {
        MMCore.g().b(47, this);
        super.onDestroy();
    }

    private EditText a;
    private ProgressDialog b;

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private SendFeedBackUI a;

        _cls3()
        {
            a = SendFeedBackUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private SendFeedBackUI a;

        _cls4()
        {
            a = SendFeedBackUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SendFeedBackUI a;

        _cls1()
        {
            a = SendFeedBackUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = SendFeedBackUI.a(a).getText().toString().trim();
            if(s.length() > 0)
            {
                NetSceneSendFeedBack netscenesendfeedback = new NetSceneSendFeedBack((new StringBuilder()).append("android-").append(Build.MODEL).append("-").append(android.os.Build.VERSION.SDK).toString(), s);
                MMCore.g().a(59, a);
                MMCore.g().b(netscenesendfeedback);
                a.n();
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneSendFeedBack a;
                    private _cls2 b;

                _cls1(NetSceneSendFeedBack netscenesendfeedback)
                {
                    b = _cls2.this;
                    a = netscenesendfeedback;
                    super();
                }
                }

                SendFeedBackUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a0012), true, new _cls1(netscenesendfeedback)));
            }
        }

        private SendFeedBackUI a;

        _cls2()
        {
            a = SendFeedBackUI.this;
            super();
        }
    }

}

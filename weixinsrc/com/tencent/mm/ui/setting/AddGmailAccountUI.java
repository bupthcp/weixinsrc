// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneGmailOper;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class AddGmailAccountUI extends MMActivity
    implements IOnSceneEnd
{

    public AddGmailAccountUI()
    {
        d = null;
        e = null;
    }

    static ProgressDialog a(AddGmailAccountUI addgmailaccountui, ProgressDialog progressdialog)
    {
        addgmailaccountui.d = progressdialog;
        return progressdialog;
    }

    static EditText a(AddGmailAccountUI addgmailaccountui)
    {
        return addgmailaccountui.a;
    }

    static EditText b(AddGmailAccountUI addgmailaccountui)
    {
        return addgmailaccountui.b;
    }

    protected final int a()
    {
        return 0x7f030002;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.AddGmailAccountUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        break MISSING_BLOCK_LABEL_42;
        if(netscenebase.b() == 60 && ((NetSceneGmailOper)netscenebase).g() == 1)
        {
            if(d != null)
            {
                d.dismiss();
                d = null;
            }
            if(i != 0 || j != 0)
                e = MMAlert.a(this, 0x7f0a0416, 0x7f0a0010);
            else
            if(((NetSceneGmailOper)netscenebase).f() != 0)
                e = MMAlert.a(this, 0x7f0a0417, 0x7f0a0010);
            else
                finish();
        }
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0410);
        a = (EditText)findViewById(0x7f070002);
        b = (EditText)findViewById(0x7f070003);
        c = (TextView)findViewById(0x7f070004);
        c.setOnClickListener(new _cls1());
        b(new _cls2());
        MMCore.g().a(60, this);
    }

    public void onDestroy()
    {
        if(e != null)
        {
            e.dismiss();
            e = null;
        }
        if(d != null)
        {
            d.dismiss();
            d = null;
        }
        MMCore.g().b(60, this);
        super.onDestroy();
    }

    private EditText a;
    private EditText b;
    private TextView c;
    private ProgressDialog d;
    private AlertDialog e;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            NetSceneGmailOper netscenegmailoper = new NetSceneGmailOper(1, AddGmailAccountUI.a(a).getText().toString(), AddGmailAccountUI.b(a).getText().toString());
            MMCore.g().b(netscenegmailoper);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    MMCore.g().a(a);
                }

                private NetSceneGmailOper a;
                private _cls1 b;

                _cls1(NetSceneGmailOper netscenegmailoper)
                {
                    b = _cls1.this;
                    a = netscenegmailoper;
                    super();
                }
            }

            AddGmailAccountUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a0419), true, new _cls1(netscenegmailoper)));
        }

        private AddGmailAccountUI a;

        _cls1()
        {
            a = AddGmailAccountUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private AddGmailAccountUI a;

        _cls2()
        {
            a = AddGmailAccountUI.this;
            super();
        }
    }

}

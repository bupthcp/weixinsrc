// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.tencent.mm.model.ConfigStorageLogic;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneBindQQ;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.SecurityImage;

public class ProcessErrNeedQQPwd
    implements IOnSceneEnd
{

    public ProcessErrNeedQQPwd(Context context, CallBack callback)
    {
        a = context;
        b = null;
        c = null;
        d = null;
        f = "";
        e = null;
        g = null;
        h = "";
        i = callback;
    }

    static AlertDialog a(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        return processerrneedqqpwd.d;
    }

    static ProgressDialog a(ProcessErrNeedQQPwd processerrneedqqpwd, ProgressDialog progressdialog)
    {
        processerrneedqqpwd.c = progressdialog;
        return progressdialog;
    }

    static void a(ProcessErrNeedQQPwd processerrneedqqpwd, String s)
    {
        MMCore.g().a(33, processerrneedqqpwd);
        processerrneedqqpwd.f = s;
        processerrneedqqpwd.c = MMAlert.a(processerrneedqqpwd.a, processerrneedqqpwd.a.getString(0x7f0a0010), processerrneedqqpwd.a.getString(0x7f0a031d), true, processerrneedqqpwd. new _cls3());
        MMCore.g().b(new NetSceneBindQQ(ConfigStorageLogic.a(), processerrneedqqpwd.f, "", "", 3));
    }

    static AlertDialog b(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        processerrneedqqpwd.d = null;
        return null;
    }

    static String c(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        return processerrneedqqpwd.f;
    }

    static SecurityImage d(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        return processerrneedqqpwd.e;
    }

    static Context e(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        return processerrneedqqpwd.a;
    }

    static SecurityImage f(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        processerrneedqqpwd.e = null;
        return null;
    }

    static String g(ProcessErrNeedQQPwd processerrneedqqpwd)
    {
        return processerrneedqqpwd.h;
    }

    public final void a()
    {
        MMCore.g().b(33, this);
    }

    public final void a(int j, int k, String s, NetSceneBase netscenebase)
    {
        if(netscenebase != null && netscenebase.b() == 33) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        h = ((NetSceneBindQQ)netscenebase).g();
        g = ((NetSceneBindQQ)netscenebase).f();
        if(i != null && i.a(j, k) || j != 4) goto _L1; else goto _L3
_L3:
        switch(k)
        {
        case -72: 
            d = MMAlert.a(a, 0x7f0a016d, 0x7f0a0010);
            break;

        case -6: 
            if(e == null)
                e = com.tencent.mm.ui.SecurityImage.Builder.a(a, 0x7f0a00f6, g, h, new _cls5(), new _cls6(), new GenKeyModel());
            else
                e.b(g, h);
            break;

        case 10000: 
            _cls4 _lcls4 = new _cls4();
            d = MMAlert.a(a, a.getString(0x7f0a016c), a.getString(0x7f0a0010), _lcls4, null);
            break;
        }
        if(true) goto _L1; else goto _L4
_L4:
    }

    public final void b()
    {
        b = View.inflate(a, 0x7f0300d6, null);
        EditText edittext = (EditText)b.findViewById(0x7f07023e);
        edittext.setHint(0x7f0a016b);
        _cls1 _lcls1 = new _cls1(edittext);
        _cls2 _lcls2 = new _cls2();
        d = MMAlert.a(a, a.getString(0x7f0a016a), b, _lcls1, _lcls2);
    }

    private Context a;
    private View b;
    private ProgressDialog c;
    private AlertDialog d;
    private SecurityImage e;
    private String f;
    private byte g[];
    private String h;
    private CallBack i;

    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            a.a();
        }

        private ProcessErrNeedQQPwd a;

        _cls3()
        {
            a = ProcessErrNeedQQPwd.this;
            super();
        }
    }


    private class CallBack
    {

        public abstract boolean a(int j, int k);

        public CallBack()
        {
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int j)
        {
            NetSceneBindQQ netscenebindqq = new NetSceneBindQQ(ConfigStorageLogic.a(), ProcessErrNeedQQPwd.c(a), ProcessErrNeedQQPwd.d(a).a(), ProcessErrNeedQQPwd.d(a).b(), 3);
            MMCore.g().b(netscenebindqq);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface1)
                {
                    b.a.a();
                    MMCore.g().a(a);
                }

                private NetSceneBindQQ a;
                private _cls5 b;

                _cls1(NetSceneBindQQ netscenebindqq)
                {
                    b = _cls5.this;
                    a = netscenebindqq;
                    super();
                }
            }

            ProcessErrNeedQQPwd.a(a, MMAlert.a(ProcessErrNeedQQPwd.e(a), ProcessErrNeedQQPwd.e(a).getString(0x7f0a0010), ProcessErrNeedQQPwd.e(a).getString(0x7f0a011b), true, new _cls1(netscenebindqq)));
        }

        final ProcessErrNeedQQPwd a;

        _cls5()
        {
            a = ProcessErrNeedQQPwd.this;
            super();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnDismissListener
    {

        public void onDismiss(DialogInterface dialoginterface)
        {
            ProcessErrNeedQQPwd.f(a);
        }

        private ProcessErrNeedQQPwd a;

        _cls6()
        {
            a = ProcessErrNeedQQPwd.this;
            super();
        }
    }


    private class GenKeyModel extends com.tencent.mm.ui.SecurityImage.ISecurityModel
    {

        public final void a()
        {
            NetSceneBindQQ netscenebindqq = new NetSceneBindQQ(ConfigStorageLogic.a(), ProcessErrNeedQQPwd.c(a), ProcessErrNeedQQPwd.g(a), "", 3);
            MMCore.g().b(netscenebindqq);
        }

        protected final void b()
        {
        }

        private ProcessErrNeedQQPwd a;

        GenKeyModel()
        {
            a = ProcessErrNeedQQPwd.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int j)
        {
            ProcessErrNeedQQPwd.a(a).dismiss();
            ProcessErrNeedQQPwd.b(a);
            a.a();
            a.b();
        }

        private ProcessErrNeedQQPwd a;

        _cls4()
        {
            a = ProcessErrNeedQQPwd.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int j)
        {
            ProcessErrNeedQQPwd.a(b).dismiss();
            ProcessErrNeedQQPwd.b(b);
            ProcessErrNeedQQPwd.a(b, a.getText().toString().trim());
        }

        private EditText a;
        private ProcessErrNeedQQPwd b;

        _cls1(EditText edittext)
        {
            b = ProcessErrNeedQQPwd.this;
            a = edittext;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int j)
        {
            ProcessErrNeedQQPwd.a(a).dismiss();
            ProcessErrNeedQQPwd.b(a);
            a.a();
        }

        private ProcessErrNeedQQPwd a;

        _cls2()
        {
            a = ProcessErrNeedQQPwd.this;
            super();
        }
    }

}

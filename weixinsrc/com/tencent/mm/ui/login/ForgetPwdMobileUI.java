// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.*;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class ForgetPwdMobileUI extends MMActivity
    implements IOnSceneEnd
{

    public ForgetPwdMobileUI()
    {
        b = null;
        c = null;
        d = null;
        h = null;
    }

    static ProgressDialog a(ForgetPwdMobileUI forgetpwdmobileui, ProgressDialog progressdialog)
    {
        forgetpwdmobileui.h = progressdialog;
        return progressdialog;
    }

    static String a(ForgetPwdMobileUI forgetpwdmobileui)
    {
        return forgetpwdmobileui.c;
    }

    static String a(ForgetPwdMobileUI forgetpwdmobileui, String s)
    {
        forgetpwdmobileui.b = s;
        return s;
    }

    static String b(ForgetPwdMobileUI forgetpwdmobileui)
    {
        return forgetpwdmobileui.d;
    }

    static TextView c(ForgetPwdMobileUI forgetpwdmobileui)
    {
        return forgetpwdmobileui.g;
    }

    static EditText d(ForgetPwdMobileUI forgetpwdmobileui)
    {
        return forgetpwdmobileui.a;
    }

    static String e(ForgetPwdMobileUI forgetpwdmobileui)
    {
        return forgetpwdmobileui.b;
    }

    protected final int a()
    {
        return 0x7f030050;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(Util.c(this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        if(h != null)
        {
            h.dismiss();
            h = null;
        }
        if(i == 0 && j == 0)
        {
            MMAlert.a(this, 0x7f0a010d, 0x7f0a001c, new _cls4());
            continue; /* Loop/switch isn't completed */
        }
        switch(j)
        {
        default:
            flag = false;
            break;

        case -35: 
            break; /* Loop/switch isn't completed */
        }
_L4:
        if(!flag)
            Toast.makeText(this, getString(0x7f0a02e0), 0).show();
        if(true) goto _L1; else goto _L3
_L3:
        Toast.makeText(this, 0x7f0a02d6, 0).show();
        flag = true;
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        j;
        JVM INSTR tableswitch 100 100: default 28
    //                   100 29;
           goto _L1 _L2
_L1:
        return;
_L2:
        c = Util.a(intent.getStringExtra("country_name"), "");
        d = Util.a(intent.getStringExtra("couttry_code"), "");
        if(!c.equals(""))
            f.setText(c);
        if(!d.equals(""))
            g.setText((new StringBuilder()).append("+").append(d).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = Util.a(getIntent().getStringExtra("country_name"), "");
        d = Util.a(getIntent().getStringExtra("couttry_code"), "");
        d(0x7f0a0108);
        a = (EditText)findViewById(0x7f07011f);
        e = (LinearLayout)findViewById(0x7f070041);
        f = (TextView)findViewById(0x7f070043);
        g = (TextView)findViewById(0x7f070042);
        if(c != null && !c.equals(""))
            f.setText(c);
        if(d != null && !d.equals(""))
            g.setText((new StringBuilder()).append("+").append(d).toString());
        e.setOnClickListener(new _cls1());
        a(0x7f0a001a, new _cls2());
        b(new _cls3());
        MMCore.g().a(34, this);
    }

    public void onDestroy()
    {
        super.onDestroy();
        MMCore.g().b(34, this);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            finish();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    private EditText a;
    private String b;
    private String c;
    private String d;
    private LinearLayout e;
    private TextView f;
    private TextView g;
    private ProgressDialog h;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private ForgetPwdMobileUI a;

        _cls4()
        {
            a = ForgetPwdMobileUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/tools/CountryCodeUI);
            intent.putExtra("country_name", ForgetPwdMobileUI.a(a));
            intent.putExtra("couttry_code", ForgetPwdMobileUI.b(a));
            a.startActivityForResult(intent, 100);
        }

        private ForgetPwdMobileUI a;

        _cls1()
        {
            a = ForgetPwdMobileUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ForgetPwdMobileUI.a(a, (new StringBuilder()).append(ForgetPwdMobileUI.c(a).getText().toString().trim()).append(ForgetPwdMobileUI.d(a).getText().toString().trim()).toString());
            if(!o.a(ForgetPwdMobileUI.e(a)) || ForgetPwdMobileUI.d(a).getText().toString().trim().length() <= 0)
            {
                MMAlert.a(a, 0x7f0a02b4, 0x7f0a0010);
            } else
            {
                a.n();
                NetSceneResetPwd netsceneresetpwd = new NetSceneResetPwd(ForgetPwdMobileUI.e(a));
                MMCore.g().b(netsceneresetpwd);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneResetPwd a;
                    private _cls2 b;

                _cls1(NetSceneResetPwd netsceneresetpwd)
                {
                    b = _cls2.this;
                    a = netsceneresetpwd;
                    super();
                }
                }

                ForgetPwdMobileUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a0026), true, new _cls1(netsceneresetpwd)));
            }
        }

        private ForgetPwdMobileUI a;

        _cls2()
        {
            a = ForgetPwdMobileUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private ForgetPwdMobileUI a;

        _cls3()
        {
            a = ForgetPwdMobileUI.this;
            super();
        }
    }

}

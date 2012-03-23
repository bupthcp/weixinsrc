// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneAuth;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.ui.login:
//            LoginQQModel, PostLoginUtil, ForgetPassMenuSelector

public class LoginInputPwdUI extends MMActivity
    implements IOnSceneEnd
{

    public LoginInputPwdUI()
    {
        a = null;
        c = null;
        d = new LoginQQModel();
    }

    static ProgressDialog a(LoginInputPwdUI logininputpwdui, ProgressDialog progressdialog)
    {
        logininputpwdui.a = progressdialog;
        return progressdialog;
    }

    static LoginQQModel a(LoginInputPwdUI logininputpwdui)
    {
        return logininputpwdui.d;
    }

    static SecurityImage b(LoginInputPwdUI logininputpwdui)
    {
        return logininputpwdui.c;
    }

    static SecurityImage c(LoginInputPwdUI logininputpwdui)
    {
        logininputpwdui.c = null;
        return null;
    }

    protected final int a()
    {
        return 0x7f030060;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.LoginInputPwdUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        Log.d("MicroMsg.LoginInputPwdUI", (new StringBuilder()).append("Scene Type ").append(netscenebase.b()).toString());
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        if(Util.c(this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(netscenebase.b() != 1) goto _L4; else goto _L3
_L3:
        d.c = ((NetSceneAuth)netscenebase).e();
        d.d = ((NetSceneAuth)netscenebase).d();
        if(i != 4 || j != -16 && j != -17) goto _L4; else goto _L5
_L5:
        boolean flag;
        MMCore.o().a("", MMCore.f().a());
        flag = true;
_L13:
label0:
        {
            if(!flag && (i != 0 || j != 0))
                break label0;
            MMCore.f().f().a(4114, Boolean.valueOf(true));
            PostLoginUtil.a(this);
            PostLoginUtil.a(this, d.a);
            Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            startActivity(intent);
            finish();
        }
          goto _L1
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0)) goto _L7; else goto _L6
_L6:
        boolean flag1 = true;
_L12:
        if(!flag1)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a007b, aobj), 0).show();
        }
          goto _L1
_L7:
        i;
        JVM INSTR tableswitch 4 4: default 328
    //                   4 334;
           goto _L8 _L9
_L8:
        flag1 = false;
        continue; /* Loop/switch isn't completed */
_L9:
        if(j == -3 || j == -4)
        {
            MMAlert.a(this, 0x7f0a010e, 0x7f0a011c);
            flag1 = true;
        } else
        {
            if(j != -9)
                continue; /* Loop/switch isn't completed */
            MMAlert.a(this, 0x7f0a011d, 0x7f0a011c);
            flag1 = true;
        }
        continue; /* Loop/switch isn't completed */
        if(j != -6) goto _L8; else goto _L10
_L10:
        if(c == null)
        {
            c = com.tencent.mm.ui.SecurityImage.Builder.a(c(), 0x7f0a00f6, d.d, d.c, new _cls4(), new _cls5(), d);
        } else
        {
            Log.d("MicroMsg.LoginInputPwdUI", (new StringBuilder()).append("imgSid:").append(d.c).append(" img len").append(d.d.length).append(" ").append(CodeInfo.a()).toString());
            c.b(d.d, d.c);
        }
        flag1 = true;
        if(true) goto _L12; else goto _L11
_L11:
_L4:
        flag = false;
          goto _L13
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d.a = Util.a(getIntent().getStringExtra("login_mobilephone"), "");
        d(0x7f0a000f);
        MMAppMgr.e();
        EditText edittext = (EditText)findViewById(0x7f070146);
        ((Button)findViewById(0x7f070144)).setOnClickListener(new _cls1(edittext));
        ForgetPassMenuSelector forgetpassmenuselector = new ForgetPassMenuSelector(c());
        ((Button)findViewById(0x7f070143)).setOnClickListener(new _cls2(forgetpassmenuselector));
        b(new _cls3());
        MMCore.g().a(1, this);
    }

    public void onDestroy()
    {
        if(b != null)
            b.dismiss();
        MMCore.g().b(1, this);
        super.onDestroy();
    }

    private ProgressDialog a;
    private final AlertDialog b = null;
    private SecurityImage c;
    private LoginQQModel d;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Log.d("MicroMsg.LoginInputPwdUI", (new StringBuilder()).append("imgSid:").append(LoginInputPwdUI.a(a).c).append(" img len").append(LoginInputPwdUI.a(a).d.length).append(" ").append(CodeInfo.a()).toString());
            NetSceneAuth netsceneauth = new NetSceneAuth(LoginInputPwdUI.a(a).a, LoginInputPwdUI.a(a).b, LoginInputPwdUI.b(a).b(), LoginInputPwdUI.b(a).a());
            MMCore.g().b(netsceneauth);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface1)
                {
                    MMCore.g().a(a);
                }

                private NetSceneAuth a;
                private _cls4 b;

                _cls1(NetSceneAuth netsceneauth)
                {
                    b = _cls4.this;
                    a = netsceneauth;
                    super();
                }
            }

            LoginInputPwdUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a011b), true, new _cls1(netsceneauth)));
        }

        private LoginInputPwdUI a;

        _cls4()
        {
            a = LoginInputPwdUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnDismissListener
    {

        public void onDismiss(DialogInterface dialoginterface)
        {
            LoginInputPwdUI.c(a);
        }

        private LoginInputPwdUI a;

        _cls5()
        {
            a = LoginInputPwdUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            LoginInputPwdUI.a(b).b = a.getText().toString();
            if(LoginInputPwdUI.a(b).a.equals(""))
                MMAlert.a(b, 0x7f0a00ba, 0x7f0a011c);
            else
            if(LoginInputPwdUI.a(b).b.equals(""))
            {
                MMAlert.a(b, 0x7f0a00b9, 0x7f0a011c);
            } else
            {
                b.n();
                NetSceneAuth netsceneauth = new NetSceneAuth(LoginInputPwdUI.a(b).a, LoginInputPwdUI.a(b).b, "", "");
                MMCore.g().b(netsceneauth);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneAuth a;
                    private _cls1 b;

                _cls1(NetSceneAuth netsceneauth)
                {
                    b = _cls1.this;
                    a = netsceneauth;
                    super();
                }
                }

                LoginInputPwdUI.a(b, MMAlert.a(b, b.getString(0x7f0a0010), b.getString(0x7f0a011b), true, new _cls1(netsceneauth)));
            }
        }

        private EditText a;
        private LoginInputPwdUI b;

        _cls1(EditText edittext)
        {
            b = LoginInputPwdUI.this;
            a = edittext;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String as[] = new String[3];
            as[0] = b.getResources().getString(0x7f0a0109);
            as[1] = b.getResources().getString(0x7f0a010a);
            as[2] = b.getResources().getString(0x7f0a010b);
            MMAlert.a(b.c(), null, as, null, a);
        }

        private ForgetPassMenuSelector a;
        private LoginInputPwdUI b;

        _cls2(ForgetPassMenuSelector forgetpassmenuselector)
        {
            b = LoginInputPwdUI.this;
            a = forgetpassmenuselector;
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

        private LoginInputPwdUI a;

        _cls3()
        {
            a = LoginInputPwdUI.this;
            super();
        }
    }

}

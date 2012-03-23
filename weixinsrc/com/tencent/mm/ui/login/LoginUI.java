// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.*;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneAuth;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.network.INetworkEvent_AIDL;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.ui.login:
//            LoginQQModel, RegByQQAuthUI, PostLoginUtil, ForgetPassMenuSelector

public class LoginUI extends MMActivity
    implements IOnSceneEnd
{

    public LoginUI()
    {
        d = null;
        e = null;
        g = null;
        h = new LoginQQModel();
    }

    static ProgressDialog a(LoginUI loginui, ProgressDialog progressdialog)
    {
        loginui.d = progressdialog;
        return progressdialog;
    }

    static LoginQQModel a(LoginUI loginui)
    {
        return loginui.h;
    }

    private boolean a(int i, int j)
    {
        boolean flag = false;
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, flag)) goto _L2; else goto _L1
_L1:
        flag = true;
_L11:
        return flag;
_L2:
        if(i != 4)
            continue; /* Loop/switch isn't completed */
        j;
        JVM INSTR lookupswitch 6: default 84
    //                   -30: 87
    //                   -9: 217
    //                   -6: 231
    //                   -4: 203
    //                   -3: 203
    //                   -1: 169;
           goto _L3 _L4 _L5 _L6 _L7 _L7 _L8
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        Intent intent = new Intent();
        intent.putExtra("RegByQQ_Account", h.a);
        intent.putExtra("RegByQQ_BindUin", UIN.a(h.a));
        intent.putExtra("RegByQQ_RawPsw", h.b);
        intent.putExtra("RegByQQ_Ticket", e);
        a(com/tencent/mm/ui/login/RegByQQAuthUI, intent);
        flag = true;
        break; /* Loop/switch isn't completed */
_L8:
        if(MMCore.q().g().a() != 6) goto _L7; else goto _L9
_L9:
        MMAlert.a(this, 0x7f0a0139, 0x7f0a0138);
        flag = true;
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
_L7:
        MMAlert.a(this, 0x7f0a010e, 0x7f0a011c);
        flag = true;
        break; /* Loop/switch isn't completed */
_L5:
        MMAlert.a(this, 0x7f0a011d, 0x7f0a011c);
        flag = true;
        break; /* Loop/switch isn't completed */
_L6:
        if(g == null)
        {
            g = com.tencent.mm.ui.SecurityImage.Builder.a(c(), 0x7f0a00f6, h.d, h.c, new _cls4(), new _cls5(), h);
        } else
        {
            Log.d("MicroMsg.LoginUI", (new StringBuilder()).append("imgSid:").append(h.c).append(" img len").append(h.d.length).append(" ").append(CodeInfo.a()).toString());
            g.b(h.d, h.c);
        }
        flag = true;
        if(true) goto _L11; else goto _L10
_L10:
    }

    static EditText b(LoginUI loginui)
    {
        return loginui.a;
    }

    static EditText c(LoginUI loginui)
    {
        return loginui.b;
    }

    static SecurityImage d(LoginUI loginui)
    {
        return loginui.g;
    }

    static SecurityImage e(LoginUI loginui)
    {
        loginui.g = null;
        return null;
    }

    protected final int a()
    {
        return 0x7f03005e;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.LoginUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        Log.d("MicroMsg.LoginUI", (new StringBuilder()).append("Scene Type ").append(netscenebase.b()).toString());
        if(d != null)
        {
            d.dismiss();
            d = null;
        }
        if(Util.c(this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        if(netscenebase.b() != 1)
            break; /* Loop/switch isn't completed */
        h.c = ((NetSceneAuth)netscenebase).e();
        h.d = ((NetSceneAuth)netscenebase).d();
        e = ((NetSceneAuth)netscenebase).i_();
        if(i != 4 || j != -16 && j != -17)
            break; /* Loop/switch isn't completed */
        MMCore.o().a("", MMCore.f().a());
        flag = true;
_L4:
        if(flag || i == 0 && j == 0)
        {
            MMCore.f().f().a(4114, Boolean.valueOf(true));
            PostLoginUtil.a(this);
            PostLoginUtil.a(this, h.a);
            Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            startActivity(intent);
            finish();
        } else
        if(!a(i, j))
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a007b, aobj), 0).show();
        }
        if(true) goto _L1; else goto _L3
_L3:
        flag = false;
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a000f);
        MMAppMgr.e();
        a = (EditText)findViewById(0x7f070141);
        b = (EditText)findViewById(0x7f070142);
        c = (Button)findViewById(0x7f070144);
        c.setOnClickListener(new _cls1());
        ForgetPassMenuSelector forgetpassmenuselector = new ForgetPassMenuSelector(c());
        findViewById(0x7f070143).setOnClickListener(new _cls2(forgetpassmenuselector));
        d(0x7f0a0117);
        b(new _cls3());
        MMCore.g().a(1, this);
    }

    public void onDestroy()
    {
        if(f != null)
            f.dismiss();
        MMCore.g().b(1, this);
        super.onDestroy();
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
    private EditText b;
    private Button c;
    private ProgressDialog d;
    private String e;
    private final AlertDialog f = null;
    private SecurityImage g;
    private LoginQQModel h;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Log.d("MicroMsg.LoginUI", (new StringBuilder()).append("imgSid:").append(LoginUI.a(a).c).append(" img len").append(LoginUI.a(a).d.length).append(" ").append(CodeInfo.a()).toString());
            NetSceneAuth netsceneauth = new NetSceneAuth(LoginUI.a(a).a, LoginUI.a(a).b, LoginUI.d(a).b(), LoginUI.d(a).a());
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

            LoginUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a011b), true, new _cls1(netsceneauth)));
        }

        private LoginUI a;

        _cls4()
        {
            a = LoginUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnDismissListener
    {

        public void onDismiss(DialogInterface dialoginterface)
        {
            LoginUI.e(a);
        }

        private LoginUI a;

        _cls5()
        {
            a = LoginUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            LoginUI.a(a).a = LoginUI.b(a).getText().toString().trim();
            LoginUI.a(a).b = LoginUI.c(a).getText().toString();
            if(LoginUI.a(a).a.equals(""))
                MMAlert.a(a, 0x7f0a00ba, 0x7f0a011c);
            else
            if(LoginUI.a(a).b.equals(""))
            {
                MMAlert.a(a, 0x7f0a00b9, 0x7f0a011c);
            } else
            {
                a.n();
                NetSceneAuth netsceneauth = new NetSceneAuth(LoginUI.a(a).a, LoginUI.a(a).b, "", "");
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

                LoginUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a011b), true, new _cls1(netsceneauth)));
            }
        }

        private LoginUI a;

        _cls1()
        {
            a = LoginUI.this;
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
            MMAlert.a(b, null, as, null, a);
        }

        private ForgetPassMenuSelector a;
        private LoginUI b;

        _cls2(ForgetPassMenuSelector forgetpassmenuselector)
        {
            b = LoginUI.this;
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

        private LoginUI a;

        _cls3()
        {
            a = LoginUI.this;
            super();
        }
    }

}

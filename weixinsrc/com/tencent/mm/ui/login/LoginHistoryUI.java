// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.*;
import com.tencent.mm.algorithm.CodeInfo;
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
//            LoginQQModel, PostLoginUtil, ForgetPassMenuSelector

public class LoginHistoryUI extends MMActivity
    implements IOnSceneEnd
{

    public LoginHistoryUI()
    {
        f = null;
        h = null;
        i = new LoginQQModel();
        j = new _cls5();
    }

    static ProgressDialog a(LoginHistoryUI loginhistoryui, ProgressDialog progressdialog)
    {
        loginhistoryui.f = progressdialog;
        return progressdialog;
    }

    static com.tencent.mm.ui.MMAlert.OnAlertSelectId a(LoginHistoryUI loginhistoryui)
    {
        return loginhistoryui.j;
    }

    static void a(LoginHistoryUI loginhistoryui, Class class1)
    {
        loginhistoryui.a(class1);
    }

    private boolean a(int k, int l)
    {
        boolean flag = false;
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), k, l, flag)) goto _L2; else goto _L1
_L1:
        flag = true;
_L10:
        return flag;
_L2:
        if(k != 4)
            continue; /* Loop/switch isn't completed */
        l;
        JVM INSTR tableswitch -9 -1: default 76
    //                   -9 79
    //                   -8 76
    //                   -7 76
    //                   -6 141
    //                   -5 76
    //                   -4 127
    //                   -3 127
    //                   -2 76
    //                   -1 93;
           goto _L3 _L4 _L3 _L3 _L5 _L3 _L6 _L6 _L3 _L7
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        MMAlert.a(this, 0x7f0a011d, 0x7f0a011c);
        flag = true;
        break; /* Loop/switch isn't completed */
_L7:
        if(MMCore.q().g().a() != 6) goto _L6; else goto _L8
_L8:
        MMAlert.a(this, 0x7f0a0139, 0x7f0a0138);
        flag = true;
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
_L6:
        MMAlert.a(this, 0x7f0a010e, 0x7f0a011c);
        flag = true;
        break; /* Loop/switch isn't completed */
_L5:
        if(h == null)
        {
            h = com.tencent.mm.ui.SecurityImage.Builder.a(c(), 0x7f0a00f6, i.d, i.c, new _cls6(), new _cls7(), i);
        } else
        {
            Log.d("MicroMsg.LoginHistoryUI", (new StringBuilder()).append("imgSid:").append(i.c).append(" img len").append(i.d.length).append(" ").append(CodeInfo.a()).toString());
            h.b(i.d, i.c);
        }
        flag = true;
        if(true) goto _L10; else goto _L9
_L9:
    }

    static LoginQQModel b(LoginHistoryUI loginhistoryui)
    {
        return loginhistoryui.i;
    }

    static TextView c(LoginHistoryUI loginhistoryui)
    {
        return loginhistoryui.a;
    }

    static EditText d(LoginHistoryUI loginhistoryui)
    {
        return loginhistoryui.b;
    }

    static SecurityImage e(LoginHistoryUI loginhistoryui)
    {
        return loginhistoryui.h;
    }

    static SecurityImage f(LoginHistoryUI loginhistoryui)
    {
        loginhistoryui.h = null;
        return null;
    }

    protected final int a()
    {
        return 0x7f03005f;
    }

    public final void a(int k, int l, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.LoginHistoryUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(k).append(" errCode = ").append(l).append(" errMsg = ").append(s).toString());
        Log.d("MicroMsg.LoginHistoryUI", (new StringBuilder()).append("Scene Type ").append(netscenebase.b()).toString());
        if(f != null)
        {
            f.dismiss();
            f = null;
        }
        if(Util.c(this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        if(netscenebase.b() != 1)
            break; /* Loop/switch isn't completed */
        i.c = ((NetSceneAuth)netscenebase).e();
        i.d = ((NetSceneAuth)netscenebase).d();
        if(k != 4 || l != -16 && l != -17)
            break; /* Loop/switch isn't completed */
        MMCore.o().a("", MMCore.f().a());
        flag = true;
_L4:
        if(flag || k == 0 && l == 0)
        {
            MMCore.f().f().a(4114, Boolean.valueOf(true));
            PostLoginUtil.a(this);
            Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            startActivity(intent);
            finish();
        } else
        if(!a(k, l))
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(k);
            aobj[1] = Integer.valueOf(l);
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
        MMAppMgr.e();
        d(0x7f0a0117);
        String s = getSharedPreferences("com.tencent.mm_preferences", 0).getString("login_user_name", "");
        a = (TextView)findViewById(0x7f070141);
        b = (EditText)findViewById(0x7f070142);
        c = (Button)findViewById(0x7f070143);
        d = (Button)findViewById(0x7f070145);
        e = (Button)findViewById(0x7f070144);
        a.setText((new StringBuilder()).append("").append(s).toString());
        a(0x7f0a0110, new _cls1());
        e.setOnClickListener(new _cls2());
        ForgetPassMenuSelector forgetpassmenuselector = new ForgetPassMenuSelector(c());
        c.setOnClickListener(new _cls3(forgetpassmenuselector));
        d.setOnClickListener(new _cls4());
        MMCore.g().a(1, this);
    }

    public void onDestroy()
    {
        if(g != null)
            g.dismiss();
        MMCore.g().b(1, this);
        super.onDestroy();
    }

    public boolean onKeyDown(int k, KeyEvent keyevent)
    {
        if(keyevent.getKeyCode() == 4 && keyevent.getAction() == 0)
        {
            Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            intent.putExtra("can_finish", true);
            startActivity(intent);
            finish();
        }
        return super.onKeyDown(k, keyevent);
    }

    private TextView a;
    private EditText b;
    private Button c;
    private Button d;
    private Button e;
    private ProgressDialog f;
    private final AlertDialog g = null;
    private SecurityImage h;
    private LoginQQModel i;
    private com.tencent.mm.ui.MMAlert.OnAlertSelectId j;

    private class _cls5
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int k)
        {
            k;
            JVM INSTR tableswitch 0 1: default 24
        //                       0 25
        //                       1 58;
               goto _L1 _L2 _L3
_L1:
            return;
_L2:
            Intent intent = new Intent(a, com/tencent/mm/ui/login/RegByMobileRegUI);
            intent.putExtra("login_type", 2);
            a.startActivity(intent);
            continue; /* Loop/switch isn't completed */
_L3:
            LoginHistoryUI.a(a, com/tencent/mm/ui/login/LoginUI);
            if(true) goto _L1; else goto _L4
_L4:
        }

        private LoginHistoryUI a;

        _cls5()
        {
            a = LoginHistoryUI.this;
            super();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int k)
        {
            Log.d("MicroMsg.LoginHistoryUI", (new StringBuilder()).append("imgSid:").append(LoginHistoryUI.b(a).c).append(" img len").append(LoginHistoryUI.b(a).d.length).append(" ").append(CodeInfo.a()).toString());
            NetSceneAuth netsceneauth = new NetSceneAuth(LoginHistoryUI.b(a).a, LoginHistoryUI.b(a).b, LoginHistoryUI.e(a).b(), LoginHistoryUI.e(a).a());
            MMCore.g().b(netsceneauth);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface1)
                {
                    MMCore.g().a(a);
                }

                private NetSceneAuth a;
                private _cls6 b;

                _cls1(NetSceneAuth netsceneauth)
                {
                    b = _cls6.this;
                    a = netsceneauth;
                    super();
                }
            }

            LoginHistoryUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a011b), true, new _cls1(netsceneauth)));
        }

        private LoginHistoryUI a;

        _cls6()
        {
            a = LoginHistoryUI.this;
            super();
        }
    }


    private class _cls7
        implements android.content.DialogInterface.OnDismissListener
    {

        public void onDismiss(DialogInterface dialoginterface)
        {
            LoginHistoryUI.f(a);
        }

        private LoginHistoryUI a;

        _cls7()
        {
            a = LoginHistoryUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String as[] = new String[2];
            as[0] = a.getResources().getString(0x7f0a0112);
            as[1] = a.getResources().getString(0x7f0a0113);
            MMAlert.a(a, null, as, null, LoginHistoryUI.a(a));
        }

        private LoginHistoryUI a;

        _cls1()
        {
            a = LoginHistoryUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            LoginHistoryUI.b(a).a = LoginHistoryUI.c(a).getText().toString().trim();
            LoginHistoryUI.b(a).b = LoginHistoryUI.d(a).getText().toString();
            if(LoginHistoryUI.b(a).a.equals(""))
                MMAlert.a(a, 0x7f0a00ba, 0x7f0a011c);
            else
            if(LoginHistoryUI.b(a).b.equals(""))
            {
                MMAlert.a(a, 0x7f0a00b9, 0x7f0a011c);
            } else
            {
                a.n();
                NetSceneAuth netsceneauth = new NetSceneAuth(LoginHistoryUI.b(a).a, LoginHistoryUI.b(a).b, "", "");
                MMCore.g().b(netsceneauth);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneAuth a;
                    private _cls2 b;

                _cls1(NetSceneAuth netsceneauth)
                {
                    b = _cls2.this;
                    a = netsceneauth;
                    super();
                }
                }

                LoginHistoryUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a011b), true, new _cls1(netsceneauth)));
            }
        }

        private LoginHistoryUI a;

        _cls2()
        {
            a = LoginHistoryUI.this;
            super();
        }
    }


    private class _cls3
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
        private LoginHistoryUI b;

        _cls3(ForgetPassMenuSelector forgetpassmenuselector)
        {
            b = LoginHistoryUI.this;
            a = forgetpassmenuselector;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/login/RegByMobileRegUI);
            intent.putExtra("login_type", 1);
            a.startActivity(intent);
        }

        private LoginHistoryUI a;

        _cls4()
        {
            a = LoginHistoryUI.this;
            super();
        }
    }

}

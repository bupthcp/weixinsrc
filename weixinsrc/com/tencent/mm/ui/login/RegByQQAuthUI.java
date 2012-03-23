// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneGetUserName;
import com.tencent.mm.modelsimple.NetSceneReg;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.network.INetworkEvent_AIDL;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;

public class RegByQQAuthUI extends MMActivity
    implements IOnSceneEnd
{

    public RegByQQAuthUI()
    {
        a = null;
        b = null;
    }

    static ProgressDialog a(RegByQQAuthUI regbyqqauthui, ProgressDialog progressdialog)
    {
        regbyqqauthui.a = progressdialog;
        return progressdialog;
    }

    static EditText a(RegByQQAuthUI regbyqqauthui)
    {
        return regbyqqauthui.b;
    }

    static String a(RegByQQAuthUI regbyqqauthui, String s)
    {
        regbyqqauthui.d = s;
        return s;
    }

    private boolean a(int i, int j)
    {
        boolean flag = true;
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(i != 4) goto _L4; else goto _L3
_L3:
        j;
        JVM INSTR lookupswitch 6: default 80
    //                   -72: 165
    //                   -12: 141
    //                   -11: 153
    //                   -4: 129
    //                   -3: 117
    //                   -1: 85;
           goto _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L10:
        try
        {
            if(MMCore.q().g().a() == 6)
            {
                MMAlert.a(this, 0x7f0a0139, 0x7f0a0138);
                continue; /* Loop/switch isn't completed */
            }
        }
        catch(Exception exception) { }
_L9:
        MMAlert.a(this, 0x7f0a00aa, 0x7f0a00ec);
        continue; /* Loop/switch isn't completed */
_L8:
        MMAlert.a(this, 0x7f0a00ab, 0x7f0a00ec);
        continue; /* Loop/switch isn't completed */
_L6:
        MMAlert.a(this, 0x7f0a00ed, 0x7f0a00ec);
        continue; /* Loop/switch isn't completed */
_L7:
        MMAlert.a(this, 0x7f0a00ee, 0x7f0a00ec);
        continue; /* Loop/switch isn't completed */
_L5:
        MMAlert.a(c(), 0x7f0a00ef, 0x7f0a0010);
        if(true) goto _L1; else goto _L11
_L11:
    }

    static String b(RegByQQAuthUI regbyqqauthui)
    {
        return regbyqqauthui.d;
    }

    static int c(RegByQQAuthUI regbyqqauthui)
    {
        return regbyqqauthui.c;
    }

    static String d(RegByQQAuthUI regbyqqauthui)
    {
        return regbyqqauthui.e;
    }

    static String e(RegByQQAuthUI regbyqqauthui)
    {
        return regbyqqauthui.f;
    }

    protected final int a()
    {
        return 0x7f0300c4;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.RegByQQAuthUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        if(Util.c(this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(i == 0 && j == 0)
            switch(netscenebase.b())
            {
            case 2: // '\002'
                getSharedPreferences("com.tencent.mm_preferences", 0).edit().putString("login_user_name", g).commit();
                Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
                intent.addFlags(0x4000000);
                MMWizardActivity.a(this, new Intent(this, com/tencent/mm/ui/bindmobile/BindMContactIntroUI), intent);
                break;

            case 25: // '\031'
                Log.d("MicroMsg.RegByQQAuthUI", (new StringBuilder()).append("regbyqq userName :").append(((NetSceneGetUserName)netscenebase).d()).toString());
                NetSceneReg netscenereg = new NetSceneReg(((NetSceneGetUserName)netscenebase).d(), e, d, c, "", "", "", "", ((NetSceneGetUserName)netscenebase).f(), 0);
                MMCore.g().b(netscenereg);
                a = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a00f5), true, new _cls3(netscenereg));
                break;
            }
        else
        if(!a(i, j))
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a007c, aobj), 0).show();
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = getIntent().getIntExtra("RegByQQ_BindUin", 0);
        e = getIntent().getStringExtra("RegByQQ_RawPsw");
        g = getIntent().getStringExtra("RegByQQ_Account");
        f = getIntent().getStringExtra("RegByQQ_Ticket");
        d = getIntent().getStringExtra("RegByQQ_Nick");
        Log.e("MicroMsg.RegByQQAuthUI", (new StringBuilder()).append("values : bindUin:").append(c).append("  pass:").append(e).append("  ticket:").append(f).toString());
        b = (EditText)findViewById(0x7f07021a);
        if(d != null && !d.equals(""))
            b.setText(d);
        d(0x7f0a00ea);
        a(0x7f0a001a, new _cls1());
        b(new _cls2());
        MMCore.g().a(25, this);
        MMCore.g().a(2, this);
    }

    public void onDestroy()
    {
        MMCore.g().b(25, this);
        MMCore.g().b(2, this);
        super.onDestroy();
    }

    private ProgressDialog a;
    private EditText b;
    private int c;
    private String d;
    private String e;
    private String f;
    private String g;

    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneReg a;
        private RegByQQAuthUI b;

        _cls3(NetSceneReg netscenereg)
        {
            b = RegByQQAuthUI.this;
            a = netscenereg;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            RegByQQAuthUI.a(a, RegByQQAuthUI.a(a).getText().toString().trim());
            if(RegByQQAuthUI.b(a).equals(""))
            {
                MMAlert.a(a, 0x7f0a00b7, 0x7f0a00ae);
            } else
            {
                NetSceneGetUserName netscenegetusername = new NetSceneGetUserName(RegByQQAuthUI.c(a), RegByQQAuthUI.b(a), Util.m(RegByQQAuthUI.d(a)), RegByQQAuthUI.e(a));
                MMCore.g().b(netscenegetusername);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneGetUserName a;
                    private _cls1 b;

                _cls1(NetSceneGetUserName netscenegetusername)
                {
                    b = _cls1.this;
                    a = netscenegetusername;
                    super();
                }
                }

                RegByQQAuthUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a00eb), true, new _cls1(netscenegetusername)));
            }
        }

        private RegByQQAuthUI a;

        _cls1()
        {
            a = RegByQQAuthUI.this;
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

        private RegByQQAuthUI a;

        _cls2()
        {
            a = RegByQQAuthUI.this;
            super();
        }
    }

}

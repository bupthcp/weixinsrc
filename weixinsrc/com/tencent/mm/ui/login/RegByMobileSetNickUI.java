// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelsimple.NetSceneReg;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bindqq.BindQQUI;

// Referenced classes of package com.tencent.mm.ui.login:
//            RegAccountToast

public class RegByMobileSetNickUI extends MMActivity
    implements IOnSceneEnd
{

    public RegByMobileSetNickUI()
    {
        b = null;
        c = null;
    }

    static ProgressDialog a(RegByMobileSetNickUI regbymobilesetnickui, ProgressDialog progressdialog)
    {
        regbymobilesetnickui.b = progressdialog;
        return progressdialog;
    }

    static EditText a(RegByMobileSetNickUI regbymobilesetnickui)
    {
        return regbymobilesetnickui.a;
    }

    static String b(RegByMobileSetNickUI regbymobilesetnickui)
    {
        return regbymobilesetnickui.e;
    }

    protected final int a()
    {
        return 0x7f0300c2;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.RegByMobileSetNickUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
        if(Util.c(this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        if(i == 0 && j == 0)
        {
            int k = ConfigStorageLogic.d();
            Log.d("MicroMsg.RegByMobileSetNickUI", (new StringBuilder()).append("Reg By mobile status = ").append(k).append(" isSync = ").append(d).toString());
            int l;
            int i1;
            Intent intent;
            if(d)
            {
                l = k & 0xfffdffff;
                FriendLogic.a();
                FriendLogic.a(getApplicationContext());
            } else
            {
                l = k | 0x20000;
            }
            Log.d("MicroMsg.RegByMobileSetNickUI", (new StringBuilder()).append("Reg By mobile update = ").append(l).toString());
            MMCore.f().f().a(7, Integer.valueOf(l));
            if(!d)
                i1 = 1;
            else
                i1 = 2;
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(17, i1));
            MMCore.g().b(new NetSceneSync(5));
            getSharedPreferences("com.tencent.mm_preferences", 0).edit().putString("login_user_name", e).commit();
            intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            if(((NetSceneReg)netscenebase).g())
                MMWizardActivity.a(this, (new Intent(this, com/tencent/mm/ui/bindqq/BindQQUI)).putExtra("bindqq_regbymobile", 1), intent);
            else
                startActivity(intent);
            continue; /* Loop/switch isn't completed */
        }
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0))
            break; /* Loop/switch isn't completed */
        flag = true;
_L6:
        if(!flag)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a007c, aobj), 0).show();
        }
        if(true) goto _L1; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 4 4: default 420
    //                   4 426;
           goto _L4 _L5
_L4:
        flag = false;
          goto _L6
_L5:
        if(j != -7 && j != -10) goto _L4; else goto _L7
_L7:
        MMAlert.a(this, 0x7f0a00e8, 0x7f0a00e7);
        flag = true;
          goto _L6
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = getIntent().getBooleanExtra("is_sync_addr", false);
        e = getIntent().getExtras().getString("bindmcontact_mobile");
        d(0x7f0a0105);
        a = (EditText)findViewById(0x7f070216);
        a.addTextChangedListener(new com.tencent.mm.ui.MMEditText.MixedWordCountTextWatcher(a, null, 16));
        a(0x7f0a001c, new _cls1());
        b(0x7f0a001b, new _cls2());
        MMCore.g().a(2, this);
    }

    public void onDestroy()
    {
        if(c != null)
            c.a();
        MMCore.g().b(2, this);
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
    private ProgressDialog b;
    private RegAccountToast c;
    private boolean d;
    private String e;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = RegByMobileSetNickUI.a(a).getText().toString();
            if(s == null || s.length() <= 0)
            {
                MMAlert.a(a, 0x7f0a00b7, 0x7f0a0102);
            } else
            {
                a.n();
                String s1 = a.getIntent().getExtras().getString("regbymobile_pwd");
                String s2 = a.getIntent().getExtras().getString("regbymobile_ticket");
                NetSceneReg netscenereg = new NetSceneReg("", s1, s, 0, "", RegByMobileSetNickUI.b(a), "", "", s2, 1);
                MMCore.g().b(netscenereg);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneReg a;
                    private _cls1 b;

                _cls1(NetSceneReg netscenereg)
                {
                    b = _cls1.this;
                    a = netscenereg;
                    super();
                }
                }

                RegByMobileSetNickUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a00f5), true, new _cls1(netscenereg)));
            }
        }

        private RegByMobileSetNickUI a;

        _cls1()
        {
            a = RegByMobileSetNickUI.this;
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

        private RegByMobileSetNickUI a;

        _cls2()
        {
            a = RegByMobileSetNickUI.this;
            super();
        }
    }

}

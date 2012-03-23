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
import com.tencent.mm.modelfriend.NetSceneBindOpMobileForReg;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class RegByMobileVerifyUI extends MMActivity
    implements IOnSceneEnd
{

    public RegByMobileVerifyUI()
    {
        c = null;
    }

    static ProgressDialog a(RegByMobileVerifyUI regbymobileverifyui, ProgressDialog progressdialog)
    {
        regbymobileverifyui.c = progressdialog;
        return progressdialog;
    }

    static EditText a(RegByMobileVerifyUI regbymobileverifyui)
    {
        return regbymobileverifyui.a;
    }

    static void a(RegByMobileVerifyUI regbymobileverifyui, Class class1, Intent intent)
    {
        regbymobileverifyui.a(class1, intent);
    }

    static String b(RegByMobileVerifyUI regbymobileverifyui)
    {
        return regbymobileverifyui.b;
    }

    static void b(RegByMobileVerifyUI regbymobileverifyui, Class class1, Intent intent)
    {
        regbymobileverifyui.a(class1, intent);
    }

    protected final int a()
    {
        return 0x7f03001a;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.RegByMobileVerifyUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(((NetSceneBindOpMobileForReg)netscenebase).d() == 6) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        if(!Util.c(this)) goto _L4; else goto _L3
_L3:
        if(i != 0 || j != 0) goto _L6; else goto _L5
_L5:
        MMAlert.a(this, 0x7f0a02c9, 0x7f0a0010, new _cls5(netscenebase), new _cls6(netscenebase));
          goto _L4
_L6:
        j;
        JVM INSTR tableswitch -43 -32: default 184
    //                   -43 257
    //                   -42 184
    //                   -41 273
    //                   -40 184
    //                   -39 184
    //                   -38 184
    //                   -37 184
    //                   -36 305
    //                   -35 289
    //                   -34 241
    //                   -33 344
    //                   -32 321;
           goto _L7 _L8 _L7 _L9 _L7 _L7 _L7 _L7 _L10 _L11 _L12 _L13 _L14
_L7:
        boolean flag = false;
_L15:
        boolean flag1;
        if(flag)
            flag1 = true;
        else
            flag1 = false;
        if(!flag1)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a02b8, aobj), 0).show();
        }
_L4:
        if(true) goto _L1; else goto _L12
_L12:
        Toast.makeText(this, 0x7f0a02d0, 0).show();
        flag = true;
          goto _L15
_L8:
        Toast.makeText(this, 0x7f0a02d1, 0).show();
        flag = true;
          goto _L15
_L9:
        Toast.makeText(this, 0x7f0a02d5, 0).show();
        flag = true;
          goto _L15
_L11:
        Toast.makeText(this, 0x7f0a02d6, 0).show();
        flag = true;
          goto _L15
_L10:
        Toast.makeText(this, 0x7f0a02d4, 0).show();
        flag = true;
          goto _L15
_L14:
        MMAlert.a(this, 0x7f0a02d9, 0x7f0a02d8, new _cls3());
        flag = true;
          goto _L15
_L13:
        MMAlert.a(this, 0x7f0a02da, 0x7f0a02d8, new _cls4());
        flag = true;
          goto _L15
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(36, this);
        d(0x7f0a02b2);
        b = getIntent().getExtras().getString("bindmcontact_mobile");
        Log.d("MicroMsg.RegByMobileVerifyUI", (new StringBuilder()).append("init getintent mobile:").append(b).toString());
        a = (EditText)findViewById(0x7f070051);
        Button button = (Button)findViewById(0x7f070052);
        d = (TextView)findViewById(0x7f070050);
        TextView textview = d;
        Object aobj[] = new Object[1];
        aobj[0] = b;
        textview.setText(getString(0x7f0a02be, aobj));
        button.setOnClickListener(new _cls1());
        b(0x7f0a001b, new _cls2());
    }

    public void onDestroy()
    {
        MMCore.g().b(36, this);
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
    private String b;
    private ProgressDialog c;
    private TextView d;

    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Intent intent = new Intent();
            intent.putExtra("regbymobile_ticket", ((NetSceneBindOpMobileForReg)a).e());
            intent.putExtra("is_sync_addr", true);
            intent.putExtra("bindmcontact_mobile", RegByMobileVerifyUI.b(b));
            RegByMobileVerifyUI.a(b, com/tencent/mm/ui/login/RegByMobileSetPwdUI, intent);
            b.finish();
        }

        private NetSceneBase a;
        private RegByMobileVerifyUI b;

        _cls5(NetSceneBase netscenebase)
        {
            b = RegByMobileVerifyUI.this;
            a = netscenebase;
            super();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Intent intent = new Intent();
            intent.putExtra("regbymobile_ticket", ((NetSceneBindOpMobileForReg)a).e());
            intent.putExtra("is_sync_addr", false);
            intent.putExtra("bindmcontact_mobile", RegByMobileVerifyUI.b(b));
            RegByMobileVerifyUI.b(b, com/tencent/mm/ui/login/RegByMobileSetPwdUI, intent);
            b.finish();
        }

        private NetSceneBase a;
        private RegByMobileVerifyUI b;

        _cls6(NetSceneBase netscenebase)
        {
            b = RegByMobileVerifyUI.this;
            a = netscenebase;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private RegByMobileVerifyUI a;

        _cls3()
        {
            a = RegByMobileVerifyUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private RegByMobileVerifyUI a;

        _cls4()
        {
            a = RegByMobileVerifyUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = RegByMobileVerifyUI.a(a).getText().toString().trim();
            if(s.equals(""))
            {
                MMAlert.a(a, 0x7f0a02b5, 0x7f0a0010);
            } else
            {
                NetSceneBindOpMobileForReg netscenebindopmobileforreg = new NetSceneBindOpMobileForReg(RegByMobileVerifyUI.b(a), 6, s);
                MMCore.g().b(netscenebindopmobileforreg);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneBindOpMobileForReg a;
                    private _cls1 b;

                _cls1(NetSceneBindOpMobileForReg netscenebindopmobileforreg)
                {
                    b = _cls1.this;
                    a = netscenebindopmobileforreg;
                    super();
                }
                }

                RegByMobileVerifyUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a02b6), true, new _cls1(netscenebindopmobileforreg)));
            }
        }

        private RegByMobileVerifyUI a;

        _cls1()
        {
            a = RegByMobileVerifyUI.this;
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

        private RegByMobileVerifyUI a;

        _cls2()
        {
            a = RegByMobileVerifyUI.this;
            super();
        }
    }

}

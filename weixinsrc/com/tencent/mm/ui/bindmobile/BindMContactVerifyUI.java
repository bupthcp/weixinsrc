// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bindmobile;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.modelfriend.NetSceneBindOpMobile;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.MMWizardActivity;

// Referenced classes of package com.tencent.mm.ui.bindmobile:
//            BindMContactStatusUI

public class BindMContactVerifyUI extends MMWizardActivity
    implements IOnSceneEnd
{

    public BindMContactVerifyUI()
    {
        c = null;
    }

    static ProgressDialog a(BindMContactVerifyUI bindmcontactverifyui, ProgressDialog progressdialog)
    {
        bindmcontactverifyui.c = progressdialog;
        return progressdialog;
    }

    static EditText a(BindMContactVerifyUI bindmcontactverifyui)
    {
        return bindmcontactverifyui.a;
    }

    static String b(BindMContactVerifyUI bindmcontactverifyui)
    {
        return bindmcontactverifyui.b;
    }

    static void c(BindMContactVerifyUI bindmcontactverifyui)
    {
        bindmcontactverifyui.o();
    }

    protected final int a()
    {
        return 0x7f03001a;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.BindMContactVerifyUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(((NetSceneBindOpMobile)netscenebase).f() == 2) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        if(i == 0 && j == 0)
        {
            if(((NetSceneBindOpMobile)netscenebase).f() == 2)
            {
                FriendLogic.a(getApplicationContext());
                a(((android.content.Context) (this)), new Intent(this, com/tencent/mm/ui/bindmobile/BindMContactStatusUI));
            }
            continue; /* Loop/switch isn't completed */
        }
        j;
        JVM INSTR tableswitch -43 -32: default 184
    //                   -43 249
    //                   -42 184
    //                   -41 265
    //                   -40 184
    //                   -39 184
    //                   -38 184
    //                   -37 184
    //                   -36 297
    //                   -35 281
    //                   -34 233
    //                   -33 329
    //                   -32 313;
           goto _L3 _L4 _L3 _L5 _L3 _L3 _L3 _L3 _L6 _L7 _L8 _L9 _L10
_L9:
        break MISSING_BLOCK_LABEL_329;
_L8:
        break; /* Loop/switch isn't completed */
_L3:
        boolean flag = false;
_L12:
        if(!flag)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a02b8, aobj), 0).show();
        }
        if(true) goto _L1; else goto _L11
_L11:
        Toast.makeText(this, 0x7f0a02d0, 0).show();
        flag = true;
          goto _L12
_L4:
        Toast.makeText(this, 0x7f0a02d1, 0).show();
        flag = true;
          goto _L12
_L5:
        Toast.makeText(this, 0x7f0a02d5, 0).show();
        flag = true;
          goto _L12
_L7:
        Toast.makeText(this, 0x7f0a02d6, 0).show();
        flag = true;
          goto _L12
_L6:
        Toast.makeText(this, 0x7f0a02d4, 0).show();
        flag = true;
          goto _L12
_L10:
        MMAlert.a(this, 0x7f0a02d9, 0x7f0a02d8, null);
        flag = true;
          goto _L12
        MMAlert.a(this, 0x7f0a02da, 0x7f0a02d8, null);
        flag = true;
          goto _L12
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(27, this);
        d(0x7f0a02b2);
        b = (String)MMCore.f().f().a(4097);
        a = (EditText)findViewById(0x7f070051);
        Button button = (Button)findViewById(0x7f070052);
        if(b == null || b.equals(""))
            b = (String)MMCore.f().f().a(6);
        d = (TextView)findViewById(0x7f070050);
        TextView textview = d;
        Object aobj[] = new Object[1];
        aobj[0] = b;
        textview.setText(getString(0x7f0a02be, aobj));
        button.setOnClickListener(new _cls1());
        b(0x7f0a0015, new _cls2());
    }

    public void onDestroy()
    {
        MMCore.g().b(27, this);
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(keyevent.getKeyCode() == 4 && keyevent.getAction() == 0)
        {
            o();
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

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = BindMContactVerifyUI.a(a).getText().toString().trim();
            if(s.equals(""))
            {
                MMAlert.a(a, 0x7f0a02b5, 0x7f0a0010);
            } else
            {
                NetSceneBindOpMobile netscenebindopmobile = new NetSceneBindOpMobile(BindMContactVerifyUI.b(a), 2, s);
                MMCore.g().b(netscenebindopmobile);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneBindOpMobile a;
                    private _cls1 b;

                _cls1(NetSceneBindOpMobile netscenebindopmobile)
                {
                    b = _cls1.this;
                    a = netscenebindopmobile;
                    super();
                }
                }

                BindMContactVerifyUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a02b6), true, new _cls1(netscenebindopmobile)));
            }
        }

        private BindMContactVerifyUI a;

        _cls1()
        {
            a = BindMContactVerifyUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BindMContactVerifyUI.c(a);
        }

        private BindMContactVerifyUI a;

        _cls2()
        {
            a = BindMContactVerifyUI.this;
            super();
        }
    }

}

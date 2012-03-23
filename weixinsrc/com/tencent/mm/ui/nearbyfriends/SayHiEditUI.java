// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.nearbyfriends;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class SayHiEditUI extends MMActivity
    implements IOnSceneEnd
{

    public SayHiEditUI()
    {
        b = null;
    }

    static ProgressDialog a(SayHiEditUI sayhieditui, ProgressDialog progressdialog)
    {
        sayhieditui.b = progressdialog;
        return progressdialog;
    }

    static String a(SayHiEditUI sayhieditui)
    {
        String s = sayhieditui.a.getText().toString().trim();
        if(s.length() > 10)
            s = s.substring(0, 10);
        return s;
    }

    protected final int a()
    {
        return 0x7f0300cc;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        boolean flag;
        flag = true;
        Log.c("MicroMsg.SayHiEditUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
        j;
        JVM INSTR lookupswitch 3: default 100
    //                   -34: 122
    //                   -24: 122
    //                   -22: 109;
           goto _L1 _L2 _L2 _L3
_L2:
        break MISSING_BLOCK_LABEL_122;
_L1:
        flag = false;
_L4:
        if(!flag)
            if(i == 0 && j == 0)
                MMAlert.a(this, 0x7f0a03c2, 0x7f0a0010, new _cls3());
            else
                Toast.makeText(this, 0x7f0a03c5, 0).show();
        return;
_L3:
        Toast.makeText(this, 0x7f0a03c3, 0).show();
          goto _L4
        Toast.makeText(this, 0x7f0a03c4, 0).show();
          goto _L4
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(30, this);
        d(0x7f0a03c1);
        a = (EditText)findViewById(0x7f07022a);
        String s = getIntent().getStringExtra("Contact_User");
        int i = getIntent().getIntExtra("Contact_Scene", 18);
        a(getString(0x7f0a0011), new _cls1(s, i));
        b(new _cls2());
    }

    public void onDestroy()
    {
        MMCore.g().b(30, this);
        super.onDestroy();
    }

    private EditText a;
    private ProgressDialog b;

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private SayHiEditUI a;

        _cls3()
        {
            a = SayHiEditUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(a);
            ArrayList arraylist1 = new ArrayList();
            arraylist1.add(Integer.valueOf(b));
            NetSceneVerifyUser netsceneverifyuser = new NetSceneVerifyUser(2, arraylist, arraylist1, SayHiEditUI.a(c));
            MMCore.g().b(netsceneverifyuser);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    MMCore.g().a(a);
                }

                private NetSceneVerifyUser a;
                private _cls1 b;

                _cls1(NetSceneVerifyUser netsceneverifyuser)
                {
                    b = _cls1.this;
                    a = netsceneverifyuser;
                    super();
                }
            }

            SayHiEditUI.a(c, MMAlert.a(c.c(), c.getString(0x7f0a0010), c.getString(0x7f0a031d), true, new _cls1(netsceneverifyuser)));
        }

        private String a;
        private int b;
        private SayHiEditUI c;

        _cls1(String s, int i)
        {
            c = SayHiEditUI.this;
            a = s;
            b = i;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private SayHiEditUI a;

        _cls2()
        {
            a = SayHiEditUI.this;
            super();
        }
    }

}

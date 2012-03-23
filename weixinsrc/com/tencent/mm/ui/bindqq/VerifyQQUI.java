// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bindqq;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelsimple.NetSceneBindQQ;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.*;

public class VerifyQQUI extends MMWizardActivity
    implements IOnSceneEnd
{

    public VerifyQQUI()
    {
        a = null;
        b = 0L;
        c = "";
        d = null;
        e = "";
        f = null;
    }

    static long a(VerifyQQUI verifyqqui, long l)
    {
        verifyqqui.b = l;
        return l;
    }

    static ProgressDialog a(VerifyQQUI verifyqqui, ProgressDialog progressdialog)
    {
        verifyqqui.a = progressdialog;
        return progressdialog;
    }

    static String a(VerifyQQUI verifyqqui, String s)
    {
        verifyqqui.c = s;
        return s;
    }

    static void a(VerifyQQUI verifyqqui)
    {
        verifyqqui.o();
    }

    static long b(VerifyQQUI verifyqqui)
    {
        return verifyqqui.b;
    }

    static String c(VerifyQQUI verifyqqui)
    {
        return verifyqqui.c;
    }

    static void d(VerifyQQUI verifyqqui)
    {
        verifyqqui.o();
    }

    static String e(VerifyQQUI verifyqqui)
    {
        return verifyqqui.e;
    }

    static byte[] f(VerifyQQUI verifyqqui)
    {
        return verifyqqui.d;
    }

    static SecurityImage g(VerifyQQUI verifyqqui)
    {
        return verifyqqui.f;
    }

    static SecurityImage h(VerifyQQUI verifyqqui)
    {
        verifyqqui.f = null;
        return null;
    }

    protected final int a()
    {
        return 0x7f03001c;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.VerifyQQUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        d = ((NetSceneBindQQ)netscenebase).f();
        e = ((NetSceneBindQQ)netscenebase).g();
        if(d != null)
            Log.d("MicroMsg.VerifyQQUI", (new StringBuilder()).append("imgSid:").append(e).append(" img len").append(d.length).append(" ").append(CodeInfo.a()).toString());
        if(i != 0 || j != 0) goto _L2; else goto _L1
_L1:
        MMCore.g().b(new NetSceneSync(5));
        MMAlert.a(c(), 0x7f0a02f1, 0x7f0a02e9, new _cls3());
_L10:
        return;
_L2:
        if(i != 4) goto _L4; else goto _L3
_L3:
        j;
        JVM INSTR lookupswitch 5: default 244
    //                   -72: 329
    //                   -12: 311
    //                   -6: 347
    //                   -4: 293
    //                   -3: 293;
           goto _L4 _L5 _L6 _L7 _L8 _L8
_L7:
        break MISSING_BLOCK_LABEL_347;
_L8:
        break; /* Loop/switch isn't completed */
_L4:
        boolean flag = false;
_L11:
        if(!flag)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a007b, aobj), 0).show();
        }
        if(true) goto _L10; else goto _L9
_L9:
        MMAlert.a(c(), 0x7f0a02ea, 0x7f0a02ee);
        flag = true;
          goto _L11
_L6:
        MMAlert.a(c(), 0x7f0a02ef, 0x7f0a02ee);
        flag = true;
          goto _L11
_L5:
        MMAlert.a(c(), 0x7f0a02f0, 0x7f0a0010);
        flag = true;
          goto _L11
        Log.d("MicroMsg.VerifyQQUI", (new StringBuilder()).append("imgSid:").append(e).append(" img len").append(d.length).append(" ").append(CodeInfo.a()).toString());
        if(f == null)
        {
            f = com.tencent.mm.ui.SecurityImage.Builder.a(c(), 0x7f0a00f6, d, e, new _cls4(), new _cls5(), new BindQQModel());
        } else
        {
            Log.d("MicroMsg.VerifyQQUI", (new StringBuilder()).append("imgSid:").append(e).append(" img len").append(d.length).append(" ").append(CodeInfo.a()).toString());
            f.b(d, e);
        }
        flag = true;
          goto _L11
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(33, this);
    }

    public void onDestroy()
    {
        super.onDestroy();
        MMCore.g().b(33, this);
    }

    protected void onResume()
    {
        super.onResume();
        d(0x7f0a02e6);
        b(0x7f0a0015, new _cls1());
        a(0x7f0a001c, new _cls2((EditText)findViewById(0x7f070057), (EditText)findViewById(0x7f070058)));
    }

    private ProgressDialog a;
    private long b;
    private String c;
    private byte d[];
    private String e;
    private SecurityImage f;

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            VerifyQQUI.d(a);
        }

        private VerifyQQUI a;

        _cls3()
        {
            a = VerifyQQUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Log.d("MicroMsg.VerifyQQUI", (new StringBuilder()).append("imgSid:").append(VerifyQQUI.e(a)).append(" img len").append(VerifyQQUI.f(a).length).append(" ").append(CodeInfo.a()).toString());
            NetSceneBindQQ netscenebindqq = new NetSceneBindQQ(VerifyQQUI.b(a), VerifyQQUI.c(a), VerifyQQUI.g(a).a(), VerifyQQUI.g(a).b(), 1);
            MMCore.g().b(netscenebindqq);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface1)
                {
                    MMCore.g().a(a);
                }

                private NetSceneBindQQ a;
                private _cls4 b;

                _cls1(NetSceneBindQQ netscenebindqq)
                {
                    b = _cls4.this;
                    a = netscenebindqq;
                    super();
                }
            }

            VerifyQQUI.a(a, MMAlert.a(a.c(), a.getString(0x7f0a02e9), a.getString(0x7f0a02ed), true, new _cls1(netscenebindqq)));
        }

        private VerifyQQUI a;

        _cls4()
        {
            a = VerifyQQUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnDismissListener
    {

        public void onDismiss(DialogInterface dialoginterface)
        {
            VerifyQQUI.h(a);
        }

        private VerifyQQUI a;

        _cls5()
        {
            a = VerifyQQUI.this;
            super();
        }
    }


    private class BindQQModel extends com.tencent.mm.ui.SecurityImage.ISecurityModel
    {

        public final void a()
        {
            NetSceneBindQQ netscenebindqq = new NetSceneBindQQ(VerifyQQUI.b(a), VerifyQQUI.c(a), VerifyQQUI.e(a), "", 2);
            MMCore.g().b(netscenebindqq);
        }

        protected final void b()
        {
        }

        private VerifyQQUI a;

        BindQQModel()
        {
            a = VerifyQQUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            VerifyQQUI.a(a);
        }

        private VerifyQQUI a;

        _cls1()
        {
            a = VerifyQQUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
label0:
            {
                String s = a.getText().toString().trim();
                VerifyQQUI.a(c, b.getText().toString().trim());
                try
                {
                    VerifyQQUI.a(c, Long.parseLong(s));
                }
                catch(Exception exception)
                {
                    MMAlert.a(c.c(), 0x7f0a02eb, 0x7f0a02ee);
                    if(false)
                        ;
                    else
                        break label0;
                }
                if(VerifyQQUI.b(c) < 10000L)
                    MMAlert.a(c.c(), 0x7f0a02eb, 0x7f0a02ee);
                else
                if(VerifyQQUI.c(c).equals(""))
                {
                    MMAlert.a(c.c(), 0x7f0a02ec, 0x7f0a02ee);
                } else
                {
                    c.n();
                    NetSceneBindQQ netscenebindqq = new NetSceneBindQQ(VerifyQQUI.b(c), VerifyQQUI.c(c), "", "", 1);
                    MMCore.g().b(netscenebindqq);
                    class _cls1
                        implements android.content.DialogInterface.OnCancelListener
                    {

                        public void onCancel(DialogInterface dialoginterface)
                        {
                            MMCore.g().a(a);
                        }

                        private NetSceneBindQQ a;
                        private _cls2 b;

                _cls1(NetSceneBindQQ netscenebindqq)
                {
                    b = _cls2.this;
                    a = netscenebindqq;
                    super();
                }
                    }

                    VerifyQQUI.a(c, MMAlert.a(c.c(), c.getString(0x7f0a02e9), c.getString(0x7f0a02ed), true, new _cls1(netscenebindqq)));
                }
            }
        }

        private EditText a;
        private EditText b;
        private VerifyQQUI c;

        _cls2(EditText edittext, EditText edittext1)
        {
            c = VerifyQQUI.this;
            a = edittext;
            b = edittext1;
            super();
        }
    }

}

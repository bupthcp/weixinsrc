// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.qrcode;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class ShareToQQUI extends MMActivity
    implements IOnSceneEnd
{

    public ShareToQQUI()
    {
        a = null;
    }

    static int a(ShareToQQUI sharetoqqui)
    {
        return sharetoqqui.d;
    }

    static ProgressDialog a(ShareToQQUI sharetoqqui, ProgressDialog progressdialog)
    {
        sharetoqqui.a = progressdialog;
        return progressdialog;
    }

    static EditText b(ShareToQQUI sharetoqqui)
    {
        return sharetoqqui.b;
    }

    protected final int a()
    {
        return 0x7f03004b;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.EditMicroBlogUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 26) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        if(i == 4 && j == -68)
        {
            if(Util.i(s))
                s = "error";
            MMAlert.a(this, s, getString(0x7f0a0010), new _cls3(), null);
        } else
        if(i == 0 && j == 0)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(i);
            aobj1[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a02fc, aobj1), 0).show();
            finish();
        } else
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0))
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a02fb, aobj), 0).show();
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(26, this);
        d(0x7f0a033a);
        b = (EditText)findViewById(0x7f070117);
        c = (TextView)findViewById(0x7f070118);
        b.addTextChangedListener(new com.tencent.mm.ui.MMEditText.MixedWordCountTextWatcher(b, c, 280));
        d = getIntent().getIntExtra("show_to", 2);
        if(d == 4)
            b.setText(0x7f0a00c7);
        else
            b.setText(0x7f0a0348);
        b(new _cls1());
        ((Button)findViewById(0x7f070119)).setOnClickListener(new _cls2());
    }

    public void onDestroy()
    {
        MMCore.g().b(26, this);
        super.onDestroy();
    }

    private ProgressDialog a;
    private EditText b;
    private TextView c;
    private int d;

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Intent intent = new Intent(a.c(), com/tencent/mm/ui/facebook/FacebookAuthUI);
            intent.putExtra("is_force_unbind", true);
            a.c().startActivity(intent);
            a.finish();
        }

        private ShareToQQUI a;

        _cls3()
        {
            a = ShareToQQUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private ShareToQQUI a;

        _cls1()
        {
            a = ShareToQQUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            boolean flag = false;
            NetSceneSendCard netscenesendcard;
            if(ShareToQQUI.a(a) == 2 || ShareToQQUI.a(a) == 1)
            {
                String s = ShareToQQUI.b(a).getText().toString();
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneSendCard a;
                    private _cls2 b;

                _cls1(NetSceneSendCard netscenesendcard)
                {
                    b = _cls2.this;
                    a = netscenesendcard;
                    super();
                }
                }

                boolean flag1;
                if(ShareToQQUI.a(a) == 1)
                    flag1 = true;
                else
                    flag1 = flag;
                if(ShareToQQUI.a(a) == 2)
                    flag = true;
                netscenesendcard = new NetSceneSendCard(s, flag1, flag);
            } else
            {
label0:
                {
                    if(ShareToQQUI.a(a) != 4)
                        break label0;
                    netscenesendcard = new NetSceneSendCard(ShareToQQUI.b(a).getText().toString());
                }
            }
            MMCore.g().b(netscenesendcard);
            ShareToQQUI.a(a, MMAlert.a(a.c(), a.getString(0x7f0a0010), a.getString(0x7f0a012d), true, new _cls1(netscenesendcard)));
_L2:
            return;
            MMAlert.a(a.c(), 0x7f0a02f9, 0x7f0a0010);
            if(true) goto _L2; else goto _L1
_L1:
        }

        private ShareToQQUI a;

        _cls2()
        {
            a = ShareToQQUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneSendCard;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.RoleInfo;
import com.tencent.mm.storage.RoleStorage;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.tools.WebViewUI;

// Referenced classes of package com.tencent.mm.plugin.readerapp.ui:
//            ReaderAppImageViewUI

public class ReaderAppWebViewUI extends WebViewUI
    implements IOnSceneEnd
{

    public ReaderAppWebViewUI()
    {
        b = null;
        c = false;
        d = "";
        e = "";
    }

    static String a(ReaderAppWebViewUI readerappwebviewui)
    {
        return readerappwebviewui.e;
    }

    static String a(ReaderAppWebViewUI readerappwebviewui, String s)
    {
        readerappwebviewui.d = s;
        return s;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.ReaderAppWebViewUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
        if(i != 0 || j != 0) goto _L2; else goto _L1
_L1:
        Object aobj1[] = new Object[2];
        aobj1[0] = Integer.valueOf(i);
        aobj1[1] = Integer.valueOf(j);
        Toast.makeText(this, getString(0x7f0a02fc, aobj1), 0).show();
_L4:
        return;
_L2:
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 3))
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a02fb, aobj), 0).show();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    final void a(String s)
    {
        if(!c)
        {
            c = true;
            String s1 = s.substring("weixin://viewimage/".length());
            Log.d("MicroMsg.ReaderAppWebViewUI", (new StringBuilder()).append("get url :").append(s1).toString());
            Intent intent = new Intent();
            intent.setClass(this, com/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI);
            intent.putExtra("nowUrl", s1);
            intent.putExtra("tweetid", Util.h(getIntent().getStringExtra("tweetid")));
            intent.putExtra("htmlData", d);
            intent.putExtra("type", getIntent().getIntExtra("type", 0));
            startActivity(intent);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.b();
        super.onCreate(bundle);
        MMCore.g().a(26, this);
        d(getIntent().getStringExtra("title"));
        super.c(0x7f020249, new _cls1());
        super.a.addJavascriptInterface(new Handler(), "handler");
        super.a.setWebViewClient(new _cls2());
        super.o();
    }

    protected void onDestroy()
    {
        MMCore.g().b(26, this);
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        c = false;
    }

    final void p()
    {
        int i = d.indexOf("<a class=\"title\" href=\"");
        if(i > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = d.indexOf("\" target=\"_blank\">", i);
        if(i > 0)
        {
            e = d.substring(i + "<a class=\"title\" href=\"".length(), j);
            Log.d("MicroMsg.ReaderAppWebViewUI", (new StringBuilder()).append("SOURCE URL:").append(e).toString());
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    final void q()
    {
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        if(!ConfigStorageLogic.q())
            MMAlert.a(this, 0x7f0a0293, 0x7f0a0010, new _cls3(), null);
        else
        if(roleinfo == null || Util.i(roleinfo.a()))
        {
            MMAlert.a(this, 0x7f0a018d, 0x7f0a0010);
        } else
        {
            String s = Util.h(getIntent().getStringExtra("shortUrl"));
            NetSceneSendCard netscenesendcard = new NetSceneSendCard(getIntent().getIntExtra("type", 0), s);
            MMCore.g().b(netscenesendcard);
            b = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a012d), true, new _cls4(netscenesendcard));
        }
    }

    private ProgressDialog b;
    private boolean c;
    private String d;
    private String e;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ReaderAppWebViewUI readerappwebviewui = a;
            String as[] = new String[1];
            as[0] = readerappwebviewui.getString(0x7f0a033b);
            MMAlert.a(readerappwebviewui, "", as, "", readerappwebviewui. new _cls5(as));
        }

        private ReaderAppWebViewUI a;

        _cls1()
        {
            a = ReaderAppWebViewUI.this;
            super();
        }

        private class _cls5
            implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
        {

            public final void a(int i)
            {
                if(i == 0 && a[i].equals(b.getString(0x7f0a033b)))
                    b.q();
            }

            private String a[];
            private ReaderAppWebViewUI b;

            _cls5(String as[])
            {
                b = ReaderAppWebViewUI.this;
                a = as;
                super();
            }
        }

    }


    private class Handler
    {

        public void keep_show(String s)
        {
            Log.d("MicroMsg.ReaderAppWebViewUI", (new StringBuilder()).append("reader data:").append(s.length()).toString());
            ReaderAppWebViewUI.a(a, s);
            a.p();
        }

        private ReaderAppWebViewUI a;

        Handler()
        {
            a = ReaderAppWebViewUI.this;
            super();
        }
    }


    private class _cls2 extends WebViewClient
    {

        public void onPageFinished(WebView webview, String s)
        {
            Log.d("MicroMsg.ReaderAppWebViewUI", "readerapp onPageFinished");
            webview.loadUrl("javascript:window.handler.keep_show('<head>'+document.getElementsByTagName('html')[0].innerHTML+'</head>');");
            super.onPageFinished(webview, s);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            if(s.startsWith("weixin://viewimage/"))
            {
                a.a(s);
                webview.stopLoading();
            } else
            if(s.equals(ReaderAppWebViewUI.a(a)))
            {
                Util.b(a, s);
                webview.stopLoading();
            } else
            {
                super.onPageStarted(webview, s, bitmap);
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if(s.startsWith("weixin://viewimage/"))
            {
                a.a(s);
                webview.stopLoading();
            } else
            if(s.equals(ReaderAppWebViewUI.a(a)))
            {
                Util.b(a, s);
                webview.stopLoading();
            } else
            {
                webview.loadUrl(s);
            }
            return true;
        }

        private ReaderAppWebViewUI a;

        _cls2()
        {
            a = ReaderAppWebViewUI.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMWizardActivity.a(a, new Intent(a, com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private ReaderAppWebViewUI a;

        _cls3()
        {
            a = ReaderAppWebViewUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSendCard a;
        private ReaderAppWebViewUI b;

        _cls4(NetSceneSendCard netscenesendcard)
        {
            b = ReaderAppWebViewUI.this;
            a = netscenesendcard;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import b.a.ae;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.qqmail.model.MailAppService;
import com.tencent.mm.ui.MMActivity;
import java.util.HashMap;
import java.util.Map;

public class MailWebViewUI extends MMActivity
{

    public MailWebViewUI()
    {
    }

    static WebView a(MailWebViewUI mailwebviewui)
    {
        return mailwebviewui.a;
    }

    static void a(MailWebViewUI mailwebviewui, String s)
    {
        if(mailwebviewui.c == null)
            mailwebviewui.a.loadData(s, "text/html", "utf-8");
        else
            mailwebviewui.a.loadDataWithBaseURL(mailwebviewui.c, s, "text/html", "utf-8", null);
    }

    static ProgressBar b(MailWebViewUI mailwebviewui)
    {
        return mailwebviewui.b;
    }

    protected final int a()
    {
        return 0x7f030105;
    }

    protected final boolean i()
    {
        return true;
    }

    protected final int j()
    {
        return 0x7f030095;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = (ProgressBar)findViewById(0x7f07018c);
        b.setVisibility(0);
        a = new WebView(c());
        a.setBackgroundDrawable(a(0x7f08000c));
        ((FrameLayout)findViewById(0x7f0702ca)).addView(a);
        a.getSettings().setJavaScriptEnabled(true);
        ae.b(a);
        a.getSettings().setDefaultFontSize(8);
        a.getSettings().setSupportZoom(true);
        a.getSettings().setBuiltInZoomControls(true);
        a.setWebViewClient(new _cls1());
        ae.a(a);
        b(new _cls2());
        String s = getIntent().getStringExtra("uri");
        String as[] = getIntent().getStringArrayExtra("params");
        HashMap hashmap = new HashMap();
        for(int k = 0; k < as.length; k++)
        {
            int l = as[k].indexOf("=");
            hashmap.put(as[k].substring(0, l), as[k].substring(l + 1));
        }

        c = getIntent().getStringExtra("baseurl");
        String s1 = Util.a(getIntent().getStringExtra("method"), "get");
        String s2;
        if(s1 == null || s1.length() == 0 || s == null || s.length() == 0)
        {
            Log.a("MicroMsg.QQMail.WebViewUI", "doSend invalid argument.");
        } else
        {
            b.setVisibility(0);
            _cls3 _lcls3 = new _cls3();
            com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions = new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions();
            httpoptions.c();
            if(s1.equals("get"))
                MMCore.n().b(s, hashmap, httpoptions, _lcls3);
            else
                MMCore.n().a(s, hashmap, httpoptions, _lcls3);
        }
        s2 = getIntent().getStringExtra("title");
        if(s2 != null)
            d(s2);
    }

    protected void onDestroy()
    {
        a.setVisibility(8);
        a.destroy();
        a = null;
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        WebView.disablePlatformNotifications();
    }

    protected void onResume()
    {
        super.onResume();
        WebView.enablePlatformNotifications();
    }

    protected void onStop()
    {
        a.stopLoading();
        super.onStop();
    }

    private WebView a;
    private ProgressBar b;
    private String c;

    private class _cls1 extends WebViewClient
    {

        public void onScaleChanged(WebView webview, float f, float f1)
        {
            MailWebViewUI.a(a).getSettings().setLayoutAlgorithm(android.webkit.WebSettings.LayoutAlgorithm.NORMAL);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            webview.loadUrl(s);
            return true;
        }

        private MailWebViewUI a;

        _cls1()
        {
            a = MailWebViewUI.this;
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

        private MailWebViewUI a;

        _cls2()
        {
            a = MailWebViewUI.this;
            super();
        }
    }


    private class _cls3 extends com.tencent.mm.plugin.qqmail.model.MailAppService.CallBack
    {

        public final void a(int k, String s)
        {
            MailWebViewUI.b(a).setVisibility(4);
            Toast.makeText(a, (new StringBuilder()).append(s).append("(").append(k).append(")").toString(), 0).show();
        }

        public final void a(String s, Map map)
        {
            MailWebViewUI.b(a).setVisibility(4);
            MailWebViewUI.a(a, s);
        }

        private MailWebViewUI a;

        _cls3()
        {
            a = MailWebViewUI.this;
            super();
        }
    }

}

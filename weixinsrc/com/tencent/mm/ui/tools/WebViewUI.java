// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import b.a.ae;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMImageButton;

public class WebViewUI extends MMActivity
{

    public WebViewUI()
    {
        c = true;
        d = null;
        e = false;
    }

    static ProgressBar a(WebViewUI webviewui)
    {
        return webviewui.b;
    }

    protected final int a()
    {
        return 0x7f030105;
    }

    protected final void b()
    {
        e = true;
    }

    public final MMImageButton c(int k, android.view.View.OnClickListener onclicklistener)
    {
        return super.c(k, onclicklistener);
    }

    protected final boolean i()
    {
        return true;
    }

    protected final int j()
    {
        return 0x7f030095;
    }

    protected final void o()
    {
        String s = getIntent().getStringExtra("data");
        if(s != null && s.length() != 0)
            a.loadDataWithBaseURL(getIntent().getStringExtra("baseurl"), s, "text/html", "utf-8", null);
        else
            a.loadUrl(d);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Uri uri = getIntent().getData();
        String s;
        String s1;
        boolean flag;
        boolean flag1;
        boolean flag2;
        if(uri == null)
            s = Util.h(getIntent().getStringExtra("rawUrl"));
        else
            s = uri.toString();
        d = s;
        Log.c("MicroMsg.WebViewUI", (new StringBuilder()).append("loading uri=").append(d).toString());
        s1 = Util.h(getIntent().getStringExtra("title"));
        flag = Util.a(Boolean.valueOf(getIntent().getBooleanExtra("zoom", true)), true);
        flag1 = Util.a(Boolean.valueOf(getIntent().getBooleanExtra("vertical_scroll", true)), true);
        flag2 = Util.a(Boolean.valueOf(getIntent().getBooleanExtra("useJs", true)), true);
        if(s1.length() > 0)
            d(s1);
        b = (ProgressBar)findViewById(0x7f07018c);
        b.setVisibility(0);
        a = new WebView(c());
        a.getSettings().setJavaScriptEnabled(flag2);
        a.setBackgroundDrawable(a(0x7f08000c));
        ((FrameLayout)findViewById(0x7f0702ca)).addView(a);
        a.getSettings().setJavaScriptEnabled(true);
        if(flag)
            a.getSettings().setBuiltInZoomControls(true);
        if(!flag1)
            a.setVerticalScrollBarEnabled(false);
        a.setWebChromeClient(new _cls1());
        a.setWebViewClient(new _cls2());
        ae.a(a);
        if(!e)
        {
            String s2 = getIntent().getStringExtra("data");
            if(s2 != null)
                a.loadDataWithBaseURL(getIntent().getStringExtra("baseurl"), s2, "text/html", "utf-8", null);
            else
                a.loadUrl(d);
        }
        b(new _cls3());
    }

    protected void onDestroy()
    {
        a.setVisibility(8);
        a.destroy();
        a = null;
        super.onDestroy();
    }

    public boolean onKeyDown(int k, KeyEvent keyevent)
    {
        boolean flag;
        if(!c && k == 4 && a.canGoBack())
        {
            a.goBack();
            flag = true;
        } else
        {
            flag = super.onKeyDown(k, keyevent);
        }
        return flag;
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

    protected WebView a;
    private ProgressBar b;
    private boolean c;
    private String d;
    private boolean e;

    private class _cls1 extends WebChromeClient
    {

        public void onProgressChanged(WebView webview, int k)
        {
            if(k > 0) goto _L2; else goto _L1
_L1:
            WebViewUI.a(a).setVisibility(0);
_L4:
            return;
_L2:
            if(k >= 100)
                WebViewUI.a(a).setVisibility(4);
            if(true) goto _L4; else goto _L3
_L3:
        }

        private WebViewUI a;

        _cls1()
        {
            a = WebViewUI.this;
            super();
        }
    }


    private class _cls2 extends WebViewClient
    {

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            webview.loadUrl(s);
            return true;
        }

        private WebViewUI a;

        _cls2()
        {
            a = WebViewUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private WebViewUI a;

        _cls3()
        {
            a = WebViewUI.this;
            super();
        }
    }

}

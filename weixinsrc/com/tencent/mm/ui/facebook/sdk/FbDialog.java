// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook.sdk;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.*;

public class FbDialog extends Dialog
{

    public FbDialog(Context context, String s, Facebook.DialogListener dialoglistener)
    {
        super(context, 0x1030010);
        d = s;
        e = dialoglistener;
    }

    static Facebook.DialogListener a(FbDialog fbdialog)
    {
        return fbdialog.e;
    }

    static ProgressDialog b(FbDialog fbdialog)
    {
        return fbdialog.f;
    }

    static FrameLayout c(FbDialog fbdialog)
    {
        return fbdialog.i;
    }

    static WebView d(FbDialog fbdialog)
    {
        return fbdialog.h;
    }

    static ImageView e(FbDialog fbdialog)
    {
        return fbdialog.g;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = new ProgressDialog(getContext());
        f.requestWindowFeature(1);
        f.setMessage("Loading...");
        requestWindowFeature(1);
        i = new FrameLayout(getContext());
        g = new ImageView(getContext());
        g.setOnClickListener(new _cls1());
        Drawable drawable = getContext().getResources().getDrawable(0x7f0200ef);
        g.setImageDrawable(drawable);
        g.setVisibility(4);
        int j = g.getDrawable().getIntrinsicWidth() / 2;
        LinearLayout linearlayout = new LinearLayout(getContext());
        h = new WebView(getContext());
        h.setVerticalScrollBarEnabled(false);
        h.setHorizontalScrollBarEnabled(false);
        h.setWebViewClient(new FbWebViewClient());
        h.getSettings().setJavaScriptEnabled(true);
        h.loadUrl(d);
        h.setLayoutParams(c);
        h.setVisibility(4);
        linearlayout.setPadding(j, j, j, j);
        linearlayout.addView(h);
        i.addView(linearlayout);
        i.addView(g, new android.view.ViewGroup.LayoutParams(-2, -2));
        addContentView(i, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    private static float a[];
    private static float b[];
    private static android.widget.FrameLayout.LayoutParams c = new android.widget.FrameLayout.LayoutParams(-1, -1);
    private String d;
    private Facebook.DialogListener e;
    private ProgressDialog f;
    private ImageView g;
    private WebView h;
    private FrameLayout i;

    static 
    {
        float af[] = new float[2];
        af[0] = 20F;
        af[1] = 60F;
        a = af;
        float af1[] = new float[2];
        af1[0] = 40F;
        af1[1] = 60F;
        b = af1;
    }

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            FbDialog.a(a).a();
            a.dismiss();
        }

        private FbDialog a;

        _cls1()
        {
            a = FbDialog.this;
            super();
        }
    }


    private class FbWebViewClient extends WebViewClient
    {

        static boolean a(FbWebViewClient fbwebviewclient)
        {
            return fbwebviewclient.b;
        }

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            b = false;
            try
            {
                FbDialog.b(a).dismiss();
            }
            catch(Exception exception) { }
            FbDialog.c(a).setBackgroundColor(0);
            FbDialog.d(a).setVisibility(0);
            FbDialog.e(a).setVisibility(0);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            (new StringBuilder()).append("Webview loading URL: ").append(s).toString();
            super.onPageStarted(webview, s, bitmap);
            FbDialog.b(a).show();
            class _cls1
                implements android.content.DialogInterface.OnDismissListener
            {

                public void onDismiss(DialogInterface dialoginterface)
                {
                    if(FbWebViewClient.a(a) && a.a != null)
                        a.a.dismiss();
                }

                private FbWebViewClient a;

                _cls1()
                {
                    a = FbWebViewClient.this;
                    super();
                }
            }

            FbDialog.b(a).setOnDismissListener(new _cls1());
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        public void onReceivedError(WebView webview, int j, String s, String s1)
        {
            super.onReceivedError(webview, j, s, s1);
            b = false;
            FbDialog.a(a).a(new DialogError(s, j, s1));
            a.dismiss();
            FbDialog.b(a).dismiss();
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            boolean flag = true;
            (new StringBuilder()).append("Redirect URL: ").append(s).toString();
            if(s.startsWith("fbconnect://success"))
            {
                Bundle bundle = Util.a(s);
                String s1 = bundle.getString("error");
                if(s1 == null)
                    s1 = bundle.getString("error_type");
                if(s1 == null)
                    FbDialog.a(a).a(bundle);
                else
                if(s1.equals("access_denied") || s1.equals("OAuthAccessDeniedException"))
                    FbDialog.a(a).a();
                else
                    FbDialog.a(a).a(new FacebookError(s1));
                a.dismiss();
            } else
            if(s.startsWith("fbconnect://cancel"))
            {
                FbDialog.a(a).a();
                try
                {
                    a.dismiss();
                }
                catch(Exception exception) { }
            } else
            if(s.contains("touch"))
                flag = false;
            else
                a.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
            return flag;
        }

        final FbDialog a;
        private boolean b;

        FbWebViewClient()
        {
            this((byte)0);
        }

        private FbWebViewClient(byte byte0)
        {
            a = FbDialog.this;
            super();
            b = true;
        }
    }

}

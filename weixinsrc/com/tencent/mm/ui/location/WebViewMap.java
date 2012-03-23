// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.location;

import android.app.ActivityManager;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.LocaleUtil;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class WebViewMap extends MMActivity
{

    public WebViewMap()
    {
        c = 0D;
        d = 0D;
        e = 0;
        k = true;
        o = false;
        q = null;
        s = new _cls1();
    }

    static TextView a(WebViewMap webviewmap)
    {
        return webviewmap.f;
    }

    static String a(WebViewMap webviewmap, String s1)
    {
        webviewmap.h = s1;
        return s1;
    }

    static ProgressBar b(WebViewMap webviewmap)
    {
        return webviewmap.g;
    }

    private void b()
    {
        s.postDelayed(new _cls2(), 3000L);
    }

    static void c(WebViewMap webviewmap)
    {
        webviewmap.o();
    }

    static View d(WebViewMap webviewmap)
    {
        return webviewmap.i;
    }

    static String e(WebViewMap webviewmap)
    {
        return webviewmap.l;
    }

    static WebView f(WebViewMap webviewmap)
    {
        return webviewmap.b;
    }

    static double g(WebViewMap webviewmap)
    {
        return webviewmap.c;
    }

    static double h(WebViewMap webviewmap)
    {
        return webviewmap.d;
    }

    static int i(WebViewMap webviewmap)
    {
        return webviewmap.e;
    }

    static String j(WebViewMap webviewmap)
    {
        return webviewmap.m;
    }

    static ProgressDialog k(WebViewMap webviewmap)
    {
        return webviewmap.q;
    }

    static boolean l(WebViewMap webviewmap)
    {
        webviewmap.o = true;
        return true;
    }

    static void m(WebViewMap webviewmap)
    {
        for(; webviewmap.n != null && webviewmap.n.size() > 0; webviewmap.b())
            webviewmap.n.remove(0);

    }

    static boolean n(WebViewMap webviewmap)
    {
        return webviewmap.k;
    }

    private void o()
    {
        if(o)
            b();
        else
            n.add("");
    }

    static boolean o(WebViewMap webviewmap)
    {
        webviewmap.k = false;
        return false;
    }

    static Handler p(WebViewMap webviewmap)
    {
        return webviewmap.s;
    }

    private void p()
    {
        d(0x7f0a017f);
        String s1 = (new StringBuilder()).append("javascript:centerAt(").append(c).append(",").append(d).append(")").toString();
        (new StringBuilder()).append("url ").append(s1).toString();
        b(new _cls4());
        c(0x7f0201e8, new _cls5());
        b = (WebView)findViewById(0x7f070140);
        f = (TextView)findViewById(0x7f07013e);
        g = (ProgressBar)findViewById(0x7f07013d);
        i = findViewById(0x7f070139);
        i.setVisibility(4);
        b.getSettings().setJavaScriptEnabled(true);
        b.getSettings().setCacheMode(1);
        b.addJavascriptInterface(this, "MicroMsg");
        b.loadUrl(a);
        b.setWebViewClient(new _cls6(s1));
        List list;
        if(h == null || h.equals(""))
        {
            g.setVisibility(0);
            j = new AddressgeocodeThread(c, d, m);
            k = true;
            j.start();
        } else
        {
            f.setText((new StringBuilder()).append("").append(h).toString());
            String s2 = h;
            g.setVisibility(8);
            f.setVisibility(0);
            f.setText(s2);
        }
        o();
        r = (ActivityManager)getSystemService("activity");
        list = r.getRunningTasks(2);
        for(int i1 = 0; i1 < list.size(); i1++)
        {
            android.app.ActivityManager.RunningTaskInfo runningtaskinfo = (android.app.ActivityManager.RunningTaskInfo)list.get(i1);
            (new StringBuilder()).append("RunningTaskInfo i ").append(runningtaskinfo.description).append(" ").append(runningtaskinfo.id).append(" ").append(runningtaskinfo.topActivity).toString();
        }

    }

    protected final int a()
    {
        return 0x7f03005d;
    }

    protected final boolean i()
    {
        return true;
    }

    public double keep_getLatitude()
    {
        return c;
    }

    public double keep_getLongitude()
    {
        return d;
    }

    public int keep_getScale()
    {
        return e;
    }

    public void keep_logbyJs(String s1)
    {
        (new StringBuilder()).append("js ").append(s1).toString();
    }

    public void keep_setLocation(String s1)
    {
        (new StringBuilder()).append("info ").append(s1).toString();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = getIntent().getDoubleExtra("kwebmap_slat", 0D);
        d = getIntent().getDoubleExtra("kwebmap_lng", 0D);
        e = getIntent().getIntExtra("kwebmap_scale", 15);
        h = getIntent().getStringExtra("Kwebmap_locaion");
        l = (new StringBuilder()).append(getIntent().getStringExtra("kimg_path")).append("mmmap/").toString();
        m = LocaleUtil.a();
        a = getString(0x7f0a0183);
        n = new ArrayList();
        p = new File(l);
        if(!p.exists())
            p.mkdirs();
        q = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a0181), true, new _cls3());
        p();
    }

    public void onDestroy()
    {
        if(j != null)
            k = false;
        FileOperation.a(p);
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
    }

    public void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        List list = r.getRunningTasks(1);
        if(list != null && list.size() > 0)
        {
            String s1 = ((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.toString().toLowerCase();
            (new StringBuilder()).append("activityName").append(s1).toString();
            if((s1 == null || s1.indexOf("webviewmap") == -1) && s1 != null && s1.indexOf("map") != -1)
                if(s1 != null && s1.indexOf("google") != -1)
                {
                    int j1 = 1 + Util.a((Integer)MMCore.f().f().a(0x10801), 0);
                    MMCore.f().f().a(0x10801, Integer.valueOf(j1));
                } else
                {
                    int i1 = 1 + Util.a((Integer)MMCore.f().f().a(0x10802), 0);
                    MMCore.f().f().a(0x10802, Integer.valueOf(i1));
                }
        }
        super.onStop();
    }

    private static String a = "file:///android_asset/map/map_cn.html";
    private WebView b;
    private double c;
    private double d;
    private int e;
    private TextView f;
    private ProgressBar g;
    private String h;
    private View i;
    private Thread j;
    private boolean k;
    private String l;
    private String m;
    private List n;
    private boolean o;
    private File p;
    private ProgressDialog q;
    private ActivityManager r;
    private Handler s;


    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch -1 -1: default 24
        //                       -1 25;
               goto _L1 _L2
_L1:
            return;
_L2:
            String s1 = (String)message.obj;
            WebViewMap.a(a, s1);
            WebViewMap.a(a).setVisibility(0);
            WebViewMap.b(a).setVisibility(8);
            WebViewMap.a(a).setText((new StringBuilder()).append("").append(s1).toString());
            (new StringBuilder()).append("handler ").append(s1).toString();
            WebViewMap.c(a);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private WebViewMap a;

        _cls1()
        {
            a = WebViewMap.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            String s1 = (new StringBuilder()).append("map_").append(MD5.a((new StringBuilder()).append("").append(System.currentTimeMillis()).toString().getBytes())).toString();
            if(WebViewMap.d(a).getWidth() != 0 && WebViewMap.d(a).getHeight() != 0)
            {
                (new StringBuilder()).append("bitmapView w:").append(WebViewMap.d(a).getWidth()).append(" h:").append(WebViewMap.d(a).getHeight()).append("  left :").append(WebViewMap.d(a).getLeft()).toString();
                String s2 = MapUtil.a(WebViewMap.e(a), s1, WebViewMap.d(a));
                (new StringBuilder()).append("make path ").append(s2).toString();
                String s3 = (new StringBuilder()).append("javascript:updateImg(").append(MapUtil.a(s2)).append(")").toString();
                (new StringBuilder()).append("updateImg ").append(s3).toString();
                WebViewMap.f(a).loadUrl(s3);
            }
        }

        private WebViewMap a;

        _cls2()
        {
            a = WebViewMap.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private WebViewMap a;

        _cls4()
        {
            a = WebViewMap.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Context context = a.c();
            String as[] = new String[1];
            as[0] = a.c().getResources().getString(0x7f0a0182);
            class _cls1
                implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
            {

                public final void a(int i1)
                {
                    i1;
                    JVM INSTR tableswitch 0 0: default 20
                //                               0 21;
                       goto _L1 _L2
_L1:
                    return;
_L2:
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append("geo:").append(WebViewMap.g(a.a)).append(",").append(WebViewMap.h(a.a)).append("?z=").append(WebViewMap.i(a.a)).toString()));
                    if(Util.a(a.a, intent))
                    {
                        a.a.startActivity(intent);
                    } else
                    {
                        Intent intent1 = new Intent("android.intent.action.VIEW", MapUtil.a(WebViewMap.j(a.a), WebViewMap.g(a.a), WebViewMap.h(a.a)));
                        a.a.startActivity(intent1);
                    }
                    if(true) goto _L1; else goto _L3
_L3:
                }

                private _cls5 a;

                _cls1()
                {
                    a = _cls5.this;
                    super();
                }
            }

            MMAlert.a(context, null, as, null, new _cls1());
        }

        final WebViewMap a;

        _cls5()
        {
            a = WebViewMap.this;
            super();
        }
    }


    private class _cls6 extends WebViewClient
    {

        public void onPageFinished(WebView webview, String s1)
        {
            WebViewMap.f(b).loadUrl(a);
            if(WebViewMap.k(b) != null)
                WebViewMap.k(b).dismiss();
            WebViewMap.l(b);
            WebViewMap.m(b);
        }

        public void onReceivedError(WebView webview, int i1, String s1, String s2)
        {
            (new StringBuilder()).append("onReceivedError errorCode : ").append(i1).append(" description:").append(s1).append(" failingUrl:").append(s2).toString();
            super.onReceivedError(webview, i1, s1, s2);
        }

        public void onReceivedHttpAuthRequest(WebView webview, HttpAuthHandler httpauthhandler, String s1, String s2)
        {
            (new StringBuilder()).append("onReceivedHttpAuthRequest  host: ").append(s1).append(" realm:").append(s2).toString();
            super.onReceivedHttpAuthRequest(webview, httpauthhandler, s1, s2);
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            super.onReceivedSslError(webview, sslerrorhandler, sslerror);
        }

        private String a;
        private WebViewMap b;

        _cls6(String s1)
        {
            b = WebViewMap.this;
            a = s1;
            super();
        }
    }


    private class AddressgeocodeThread extends Thread
    {

        public void run()
        {
            String s1 = MapUtil.a(a, b, c);
            (new StringBuilder()).append("run  ").append(s1).toString();
            do
            {
                if(s1 != null || !WebViewMap.n(d))
                    break;
                Message message;
                try
                {
                    sleep(5000L);
                }
                catch(Exception exception) { }
                s1 = MapUtil.a(a, b, c);
                if(s1 == null)
                    continue;
                WebViewMap.o(d);
                break;
            } while(true);
            message = new Message();
            message.obj = s1;
            message.what = -1;
            WebViewMap.p(d).sendMessage(message);
        }

        private double a;
        private double b;
        private String c;
        private WebViewMap d;

        public AddressgeocodeThread(double d1, double d2, String s1)
        {
            d = WebViewMap.this;
            super();
            a = d1;
            b = d2;
            c = s1;
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            a.finish();
        }

        private WebViewMap a;

        _cls3()
        {
            a = WebViewMap.this;
            super();
        }
    }

}

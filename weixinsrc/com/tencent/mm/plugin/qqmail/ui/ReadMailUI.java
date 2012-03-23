// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.*;
import android.widget.*;
import b.a.ae;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.qqmail.model.MailAppService;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import com.tencent.mm.ui.MMActivity;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.plugin.qqmail.ui:
//            ProcessVerifyErr, MailAttachListLinearLayout, MailAddrsViewControl

public class ReadMailUI extends MMActivity
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public ReadMailUI()
    {
        a = -1L;
        w = new ProcessVerifyErr(this);
        x = -1L;
    }

    static long a(ReadMailUI readmailui, long l1)
    {
        readmailui.a = l1;
        return l1;
    }

    static View a(ReadMailUI readmailui)
    {
        return readmailui.m;
    }

    private void a(com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions)
    {
        if(b == null || b.length() == 0)
        {
            Log.a("MicroMsg.ReadMailUI", "doReadMail invalid argument");
        } else
        {
            f.setVisibility(8);
            e.setVisibility(0);
            s.setEnabled(false);
            HashMap hashmap = new HashMap();
            hashmap.put("mailid", b);
            hashmap.put("texttype", "html");
            if(x != -1L && x != -2L)
                MMCore.n().a(x);
            String s1 = b;
            x = MMCore.n().b("/cgi-bin/readmail", hashmap, httpoptions, new _cls12(s1));
        }
    }

    static void a(ReadMailUI readmailui, com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions)
    {
        readmailui.a(httpoptions);
    }

    static void a(ReadMailUI readmailui, Runnable runnable)
    {
        CookieSyncManager.createInstance(readmailui);
        CookieManager cookiemanager = CookieManager.getInstance();
        cookiemanager.removeSessionCookie();
        readmailui.d.postDelayed(readmailui. new _cls14(cookiemanager, runnable), 500L);
    }

    static void a(ReadMailUI readmailui, Map map)
    {
        int i1 = Integer.parseInt(Util.a((String)map.get(".Response.result.attachlen"), "0"));
        if(i1 == 0)
        {
            readmailui.r.setVisibility(8);
        } else
        {
            readmailui.r.setVisibility(0);
            MailAttachListLinearLayout mailattachlistlinearlayout = (MailAttachListLinearLayout)readmailui.findViewById(0x7f070206);
            TextView textview = (TextView)readmailui.findViewById(0x7f070205);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i1);
            textview.setText(readmailui.getString(0x7f0a043c, aobj));
            mailattachlistlinearlayout.removeAllViews();
            mailattachlistlinearlayout.a(map);
        }
    }

    static String[] a(Map map, String s1, int i1)
    {
        return b(map, s1, i1);
    }

    static TextView b(ReadMailUI readmailui)
    {
        return readmailui.l;
    }

    private void b()
    {
        if(x != -1L && x != -2L)
            MMCore.n().a(x);
        Map map = Util.b(MMCore.f().i().a(a).i(), "msg");
        o();
        b = (String)map.get(".msg.pushmail.mailid");
        c = (String)map.get(".msg.pushmail.content.subject");
        MailAddrsViewControl mailaddrsviewcontrol = i;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append((String)map.get(".msg.pushmail.content.fromlist.item.name")).append(" ").append((String)map.get(".msg.pushmail.content.fromlist.item.addr")).toString();
        mailaddrsviewcontrol.a(as, true);
        String as1[] = b(map, ".msg.pushmail.content.tolist", Integer.parseInt((String)map.get(".msg.pushmail.content.tolist.$count")));
        k.a(as1, true);
        String as2[] = b(map, ".msg.pushmail.content.cclist", Integer.parseInt((String)map.get(".msg.pushmail.content.cclist.$count")));
        LinearLayout linearlayout = n;
        byte byte0;
        String s1;
        if(as2 == null || as2.length == 0)
            byte0 = 8;
        else
            byte0 = 0;
        linearlayout.setVisibility(byte0);
        j.a(as2, true);
        o.setText(c);
        p.setText((CharSequence)map.get(".msg.pushmail.content.date"));
        q.setEnabled(true);
        q.setTextColor(0xff134ab5);
        q.setCompoundDrawablesWithIntrinsicBounds(a(0x7f020276), null, null, null);
        s1 = (String)map.get(".msg.pushmail.content.digest");
        d.loadDataWithBaseURL("https://qqmail.weixin.qq.com", s1, "text/html", "utf-8", null);
        a(new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions());
    }

    private static String[] b(Map map, String s1, int i1)
    {
        String as1[];
        if(map.get(s1) == null)
        {
            as1 = null;
        } else
        {
            String as[] = new String[i1];
            int j1 = 0;
            while(j1 < i1) 
            {
                StringBuilder stringbuilder = (new StringBuilder()).append(s1).append(".item");
                Object obj;
                String s2;
                if(j1 > 0)
                    obj = Integer.valueOf(j1);
                else
                    obj = "";
                s2 = stringbuilder.append(obj).toString();
                as[j1] = (new StringBuilder()).append((String)map.get((new StringBuilder()).append(s2).append(".name").toString())).append(" ").append((String)map.get((new StringBuilder()).append(s2).append(".addr").toString())).toString();
                j1++;
            }
            as1 = as;
        }
        return as1;
    }

    static MailAddrsViewControl c(ReadMailUI readmailui)
    {
        return readmailui.k;
    }

    static MailAddrsViewControl d(ReadMailUI readmailui)
    {
        return readmailui.j;
    }

    static void e(ReadMailUI readmailui)
    {
        if(readmailui.b == null || readmailui.b.length() == 0)
        {
            Log.a("MicroMsg.ReadMailUI", "doSetUnread invalid argument");
        } else
        {
            HashMap hashmap = new HashMap();
            hashmap.put("mailid", readmailui.b);
            com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions = new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions();
            httpoptions.b();
            MMCore.n().b("/cgi-bin/setmailunread", hashmap, httpoptions, readmailui. new _cls13());
        }
    }

    static ImageView f(ReadMailUI readmailui)
    {
        return readmailui.f;
    }

    static long g(ReadMailUI readmailui)
    {
        return readmailui.a;
    }

    static void h(ReadMailUI readmailui)
    {
        readmailui.b();
    }

    static void i(ReadMailUI readmailui)
    {
        MMCore.f().i().b(readmailui.a);
        readmailui.finish();
    }

    static String j(ReadMailUI readmailui)
    {
        return readmailui.b;
    }

    static String k(ReadMailUI readmailui)
    {
        return readmailui.c;
    }

    static MailAddrsViewControl l(ReadMailUI readmailui)
    {
        return readmailui.i;
    }

    static LinearLayout m(ReadMailUI readmailui)
    {
        return readmailui.n;
    }

    static WebView n(ReadMailUI readmailui)
    {
        return readmailui.d;
    }

    static ProcessVerifyErr o(ReadMailUI readmailui)
    {
        return readmailui.w;
    }

    private void o()
    {
        boolean flag = true;
        MsgInfoStorage msginfostorage = MMCore.f().i();
        int i1 = msginfostorage.g("qqmail", 35);
        int j1 = msginfostorage.d(a);
        d((new StringBuilder()).append(j1).append("/").append(i1).toString());
        View view = g;
        boolean flag1;
        View view1;
        if(j1 < i1)
            flag1 = flag;
        else
            flag1 = false;
        view.setEnabled(flag1);
        view1 = h;
        if(j1 <= flag)
            flag = false;
        view1.setEnabled(flag);
    }

    static ProgressBar p(ReadMailUI readmailui)
    {
        return readmailui.e;
    }

    static ImageView q(ReadMailUI readmailui)
    {
        return readmailui.s;
    }

    static long r(ReadMailUI readmailui)
    {
        readmailui.x = -2L;
        return -2L;
    }

    static TextView s(ReadMailUI readmailui)
    {
        return readmailui.q;
    }

    protected final int a()
    {
        return 0x7f0300bf;
    }

    public final void a_(String s1)
    {
        o();
    }

    protected final int j()
    {
        return -1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = getIntent().getLongExtra("msgid", -1L);
        g = findViewById(0x7f07018a);
        h = findViewById(0x7f07018b);
        i = (MailAddrsViewControl)findViewById(0x7f0701fb);
        k = (MailAddrsViewControl)findViewById(0x7f0701fe);
        j = (MailAddrsViewControl)findViewById(0x7f070200);
        l = (TextView)findViewById(0x7f0701fc);
        m = findViewById(0x7f0701fd);
        n = (LinearLayout)findViewById(0x7f0701ff);
        o = (TextView)findViewById(0x7f070201);
        p = (TextView)findViewById(0x7f070202);
        q = (TextView)findViewById(0x7f070203);
        r = (LinearLayout)findViewById(0x7f070204);
        e = (ProgressBar)findViewById(0x7f07020c);
        f = (ImageView)findViewById(0x7f07020d);
        d = (WebView)findViewById(0x7f070207);
        s = (ImageView)findViewById(0x7f070208);
        t = (ImageView)findViewById(0x7f070209);
        u = (ImageView)findViewById(0x7f07020a);
        v = (ImageView)findViewById(0x7f07020b);
        l.setOnClickListener(new _cls1());
        q.setOnClickListener(new _cls2());
        f.setOnClickListener(new _cls3());
        g.setOnClickListener(new _cls4());
        h.setOnClickListener(new _cls5());
        b(new _cls6());
        s.setOnClickListener(new _cls8());
        t.setOnClickListener(new _cls9());
        u.setOnClickListener(new _cls10());
        v.setOnClickListener(new _cls11());
        d.getSettings().setJavaScriptEnabled(true);
        d.getSettings().setDefaultTextEncodingName("utf-8");
        d.getSettings().setSupportZoom(true);
        d.getSettings().setBuiltInZoomControls(true);
        ae.a(d);
        d.setWebViewClient(new _cls7());
    }

    public void onDestroy()
    {
        super.onDestroy();
        w.a();
        d.setVisibility(8);
        d.destroy();
    }

    protected void onPause()
    {
        super.onPause();
        MMCore.f().i().b(this);
        if(x != -1L && x != -2L)
            MMCore.n().a(x);
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().i().a(this);
        if(x != -2L)
            b();
    }

    protected void onStop()
    {
        super.onStop();
        d.stopLoading();
    }

    private long a;
    private String b;
    private String c;
    private WebView d;
    private ProgressBar e;
    private ImageView f;
    private View g;
    private View h;
    private MailAddrsViewControl i;
    private MailAddrsViewControl j;
    private MailAddrsViewControl k;
    private TextView l;
    private View m;
    private LinearLayout n;
    private TextView o;
    private TextView p;
    private TextView q;
    private LinearLayout r;
    private ImageView s;
    private ImageView t;
    private ImageView u;
    private ImageView v;
    private ProcessVerifyErr w;
    private long x;

    private class _cls12 extends com.tencent.mm.plugin.qqmail.model.MailAppService.CallBack
    {

        public final void a(int i1, String s1)
        {
            ReadMailUI.f(b).setVisibility(0);
            class _cls2 extends ProcessVerifyErr.CallBack
            {

                public final void a()
                {
                    ReadMailUI.a(a.b, new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions());
                }

                private _cls12 a;

                _cls2()
                {
                    a = _cls12.this;
                    super();
                }
            }

            if(i1 == -5)
            {
                ReadMailUI.o(b).a(new _cls2());
            } else
            {
                if(i1 == -7)
                {
                    ReadMailUI.f(b).setVisibility(8);
                    MsgInfo msginfo = MMCore.f().i().a(ReadMailUI.g(b));
                    msginfo.b(msginfo.i().replaceFirst("<digest>.*</digest>", (new StringBuilder()).append("<digest>").append(s1).append("</digest>").toString()));
                    MMCore.f().i().a(ReadMailUI.g(b), msginfo);
                }
                ReadMailUI.n(b).loadDataWithBaseURL("https://qqmail.weixin.qq.com", (new StringBuilder()).append(s1).append("(").append(i1).append(")").toString(), "text/html", "utf-8", null);
            }
        }

        public final void a(String s1, Map map)
        {
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    if(b.a.equals(ReadMailUI.j(b.b)))
                    {
                        if(ReadMailUI.c(b.b).d() == 0)
                        {
                            int j1 = Integer.parseInt((String)a.get(".Response.result.tolistlen"));
                            String as1[] = ReadMailUI.a(a, ".Response.result.tolist", j1);
                            ReadMailUI.c(b.b).a(as1, true);
                        }
                        if(ReadMailUI.d(b.b).d() == 0)
                        {
                            int i1 = Integer.parseInt((String)a.get(".Response.result.cclistlen"));
                            String as[] = ReadMailUI.a(a, ".Response.result.cclist", i1);
                            LinearLayout linearlayout = ReadMailUI.m(b.b);
                            String s2;
                            byte byte0;
                            if(as == null || as.length == 0)
                                byte0 = 8;
                            else
                                byte0 = 0;
                            linearlayout.setVisibility(byte0);
                            ReadMailUI.d(b.b).a(as, true);
                        }
                        s2 = (String)a.get(".Response.result.content");
                        ReadMailUI.a(b.b, a);
                        ReadMailUI.n(b.b).loadDataWithBaseURL("https://qqmail.weixin.qq.com", s2, "text/html", "utf-8", null);
                    }
                }

                private Map a;
                private _cls12 b;

                _cls1(Map map)
                {
                    b = _cls12.this;
                    a = map;
                    super();
                }
            }

            ReadMailUI.a(b, new _cls1(map));
        }

        public final boolean a()
        {
            ReadMailUI.a(b, new HashMap());
            return true;
        }

        public final void b()
        {
            ReadMailUI.p(b).setVisibility(8);
            ReadMailUI.q(b).setEnabled(true);
            ReadMailUI.r(b);
        }

        final String a;
        final ReadMailUI b;

        _cls12(String s1)
        {
            b = ReadMailUI.this;
            a = s1;
            super();
        }
    }


    private class _cls14
        implements Runnable
    {

        public void run()
        {
            Map map = MMCore.n().d();
            a.setCookie("https://qqmail.weixin.qq.com", (new StringBuilder()).append("skey=").append((String)map.get("skey")).toString());
            a.setCookie("https://qqmail.weixin.qq.com", (new StringBuilder()).append("uin=").append((String)map.get("uin")).toString());
            a.setCookie("https://qqmail.weixin.qq.com", (new StringBuilder()).append("svrid=").append((String)map.get("svrid")).toString());
            CookieSyncManager.getInstance().sync();
            b.run();
        }

        private CookieManager a;
        private Runnable b;
        private ReadMailUI c;

        _cls14(CookieManager cookiemanager, Runnable runnable)
        {
            c = ReadMailUI.this;
            a = cookiemanager;
            b = runnable;
            super();
        }
    }


    private class _cls13 extends com.tencent.mm.plugin.qqmail.model.MailAppService.CallBack
    {

        public final void a(int i1, String s1)
        {
            class _cls1 extends ProcessVerifyErr.CallBack
            {

                public final void a()
                {
                    ReadMailUI.e(a.a);
                }

                private _cls13 a;

                _cls1()
                {
                    a = _cls13.this;
                    super();
                }
            }

            if(i1 == -5)
                ReadMailUI.o(a).a(new _cls1());
            else
                Toast.makeText(a, (new StringBuilder()).append(s1).append("(").append(i1).append(")").toString(), 2000).show();
        }

        public final void a(String s1, Map map)
        {
            ReadMailUI.s(a).setEnabled(false);
            ReadMailUI.s(a).setTextColor(0xff888888);
            ReadMailUI.s(a).setCompoundDrawablesWithIntrinsicBounds(a.a(0x7f020277), null, null, null);
        }

        final ReadMailUI a;

        _cls13()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ReadMailUI.a(a).getVisibility() == 8)
            {
                ReadMailUI.b(a).setText(0x7f0a043a);
                ReadMailUI.a(a).setVisibility(0);
                class _cls1
                    implements Runnable
                {

                    public void run()
                    {
                        ReadMailUI.c(a.a).f();
                        ReadMailUI.d(a.a).f();
                    }

                    private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
                }

                ReadMailUI.a(a).post(new _cls1());
            } else
            {
                ReadMailUI.b(a).setText(0x7f0a0439);
                ReadMailUI.a(a).setVisibility(8);
            }
        }

        final ReadMailUI a;

        _cls1()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ReadMailUI.e(a);
        }

        private ReadMailUI a;

        _cls2()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ReadMailUI.f(a).setVisibility(8);
            ReadMailUI.a(a, new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions());
        }

        private ReadMailUI a;

        _cls3()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ReadMailUI.g(a) == -1L)
            {
                Log.a("MicroMsg.ReadMailUI", "current msgid is -1");
            } else
            {
                long l1 = MMCore.f().i().c(ReadMailUI.g(a));
                if(l1 == -1L)
                {
                    Toast.makeText(a, 0x7f0a043e, 0).show();
                } else
                {
                    ReadMailUI.a(a, l1);
                    ReadMailUI.h(a);
                }
            }
        }

        private ReadMailUI a;

        _cls4()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ReadMailUI.g(a) == -1L)
            {
                Log.a("MicroMsg.ReadMailUI", "current msgid is -1");
            } else
            {
                long l1 = MMCore.f().i().e(ReadMailUI.g(a));
                if(l1 == -1L)
                {
                    Toast.makeText(a, 0x7f0a043f, 0).show();
                } else
                {
                    ReadMailUI.a(a, l1);
                    ReadMailUI.h(a);
                }
            }
        }

        private ReadMailUI a;

        _cls5()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private ReadMailUI a;

        _cls6()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions = new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions();
            httpoptions.a();
            ReadMailUI.a(a, httpoptions);
        }

        private ReadMailUI a;

        _cls8()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
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
                    ReadMailUI.i(a.a);
                    if(true) goto _L1; else goto _L3
_L3:
                }

                private _cls9 a;

                _cls1()
                {
                    a = _cls9.this;
                    super();
                }
            }

            MMAlert.a(a, null, null, a.getResources().getString(0x7f0a043d), new _cls1());
        }

        final ReadMailUI a;

        _cls9()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String as[] = a.getResources().getStringArray(0x7f060016);
            class _cls1
                implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
            {

                public final void a(int i1)
                {
                    boolean flag;
                    Intent intent;
                    String as1[];
                    String as2[];
                    String as3[];
                    flag = false;
                    intent = new Intent();
                    intent.setClass(a.a, com/tencent/mm/plugin/qqmail/ui/ComposeUI);
                    intent.putExtra("mailid", ReadMailUI.j(a.a));
                    intent.putExtra("subject", ReadMailUI.k(a.a));
                    as1 = ReadMailUI.l(a.a).a(flag);
                    as2 = ReadMailUI.c(a.a).a(true);
                    as3 = ReadMailUI.d(a.a).a(true);
                    i1;
                    JVM INSTR tableswitch 0 2: default 132
                //                               0 133
                //                               1 164
                //                               2 297;
                       goto _L1 _L2 _L3 _L4
_L4:
                    break MISSING_BLOCK_LABEL_297;
_L1:
                    return;
_L2:
                    intent.putExtra("composeType", 2);
                    intent.putExtra("toList", as1);
_L5:
                    a.a.startActivity(intent);
                    if(true) goto _L1; else goto _L3
_L3:
                    intent.putExtra("composeType", 2);
                    String as4[] = new String[as1.length + as2.length];
                    int j1 = as1.length;
                    int k1 = ((flag) ? 1 : 0);
                    int l1;
                    int k2;
                    for(l1 = ((flag) ? 1 : 0); k1 < j1; l1 = k2)
                    {
                        String s2 = as1[k1];
                        k2 = l1 + 1;
                        as4[l1] = s2;
                        k1++;
                    }

                    for(int i2 = as2.length; flag < i2;)
                    {
                        String s1 = as2[flag];
                        int j2 = l1 + 1;
                        as4[l1] = s1;
                        flag++;
                        l1 = j2;
                    }

                    intent.putExtra("toList", as4);
                    intent.putExtra("ccList", as3);
                      goto _L5
                    intent.putExtra("composeType", 3);
                      goto _L5
                }

                private _cls10 a;

                _cls1()
                {
                    a = _cls10.this;
                    super();
                }
            }

            MMAlert.a(a, null, as, null, new _cls1());
        }

        final ReadMailUI a;

        _cls10()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/plugin/qqmail/ui/ComposeUI);
            intent.putExtra("composeType", 1);
            a.startActivity(intent);
        }

        private ReadMailUI a;

        _cls11()
        {
            a = ReadMailUI.this;
            super();
        }
    }


    private class _cls7 extends WebViewClient
    {

        public boolean shouldOverrideUrlLoading(WebView webview, String s1)
        {
            if(s1 != null && s1.startsWith("mailto:"))
            {
                String s2 = s1.trim().replace("mailto:", "");
                Intent intent1 = new Intent(a, com/tencent/mm/plugin/qqmail/ui/ComposeUI);
                intent1.putExtra("composeType", 4);
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(s2).append(" ").append(s2).toString();
                intent1.putExtra("toList", as);
                a.startActivity(intent1);
            } else
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
                a.startActivity(intent);
            }
            return true;
        }

        private ReadMailUI a;

        _cls7()
        {
            a = ReadMailUI.this;
            super();
        }
    }

}

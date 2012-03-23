// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.DateFormat;
import android.text.util.Linkify;
import android.view.View;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.*;
import com.tencent.mm.modelstat.NetStatStorageLogic;
import com.tencent.mm.network.NetService;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.*;
import com.tencent.qqpim.model.LoginModel;
import com.tencent.qqpim.model.SyncModel;
import com.tencent.qqpim.utils.QQPimUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MMAlert

public class QQSyncUI extends MMActivity
{

    public QQSyncUI()
    {
        c = null;
        l = null;
        m = null;
        s = new _cls15();
        t = new _cls16();
    }

    protected static int a(String s1)
    {
        int i1;
        i1 = 1;
        if(s1 == null || s1.length() <= 0)
            break MISSING_BLOCK_LABEL_23;
        int j1 = Integer.valueOf(s1).intValue();
        i1 = j1;
_L2:
        return i1;
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static ILoginModel a(QQSyncUI qqsyncui, ILoginModel iloginmodel)
    {
        qqsyncui.e = iloginmodel;
        return iloginmodel;
    }

    static ISyncModel a(QQSyncUI qqsyncui, ISyncModel isyncmodel)
    {
        qqsyncui.d = isyncmodel;
        return isyncmodel;
    }

    static String a(Context context, boolean flag, ISyncModel isyncmodel)
    {
        String s1 = DateFormat.format(context.getString(0x7f0a0081), Util.d()).toString();
        int i1;
        Object aobj[];
        String s2;
        if(flag)
            i1 = 0x7f0a039d;
        else
            i1 = 0x7f0a039e;
        aobj = new Object[1];
        aobj[0] = s1;
        s2 = context.getString(i1, aobj);
        return (new StringBuilder()).append(s2).append("\n").append(b(context, flag, isyncmodel)).toString();
    }

    public static void a(Context context)
    {
        QQPimUtils.APPLICATION_CONTEXT = context.getApplicationContext();
        (new SyncModel(context.getApplicationContext(), null)).clearLoginInformation();
    }

    static void a(QQSyncUI qqsyncui)
    {
        qqsyncui.c(false);
    }

    static void a(QQSyncUI qqsyncui, String s1)
    {
        String s2 = (new UIN(ConfigStorageLogic.a())).toString();
        qqsyncui.o = true;
        (qqsyncui. new LoginThread(s2, s1)).start();
    }

    static boolean a(QQSyncUI qqsyncui, boolean flag)
    {
        qqsyncui.n = flag;
        return flag;
    }

    static ILoginModel b(QQSyncUI qqsyncui)
    {
        return qqsyncui.e;
    }

    private static String b(Context context, boolean flag, ISyncModel isyncmodel)
    {
        String s1 = context.getString(0x7f0a03a6);
        String s2 = context.getString(0x7f0a03a7);
        String s3 = "";
        String s4;
        if(flag)
        {
            if(isyncmodel.getServerAdddedNum() > 0)
            {
                StringBuilder stringbuilder7 = (new StringBuilder()).append(s3);
                Object aobj7[] = new Object[1];
                aobj7[0] = Integer.valueOf(isyncmodel.getServerAdddedNum());
                s3 = stringbuilder7.append(context.getString(0x7f0a03a1, aobj7)).toString();
            }
            if(isyncmodel.getServerModifiededNum() > 0)
            {
                if(s3.length() > 0)
                    s3 = (new StringBuilder()).append(s3).append(s1).toString();
                StringBuilder stringbuilder6 = (new StringBuilder()).append(s3);
                Object aobj6[] = new Object[1];
                aobj6[0] = Integer.valueOf(isyncmodel.getServerModifiededNum());
                s3 = stringbuilder6.append(context.getString(0x7f0a03a2, aobj6)).toString();
            }
            if(isyncmodel.getServerDeletedNum() > 0)
            {
                if(s3.length() > 0)
                    s3 = (new StringBuilder()).append(s3).append(s1).toString();
                StringBuilder stringbuilder5 = (new StringBuilder()).append(s3);
                Object aobj5[] = new Object[1];
                aobj5[0] = Integer.valueOf(isyncmodel.getServerDeletedNum());
                s3 = stringbuilder5.append(context.getString(0x7f0a03a3, aobj5)).toString();
            }
            if(s3.length() > 0)
            {
                String s6 = (new StringBuilder()).append(s3).append(s1).toString();
                StringBuilder stringbuilder4 = (new StringBuilder()).append(s6);
                Object aobj4[] = new Object[1];
                aobj4[0] = Util.b(isyncmodel.getUploadBytes() + isyncmodel.getDownloadBytes());
                s3 = stringbuilder4.append(context.getString(0x7f0a03a4, aobj4)).toString();
            }
            if(s3.length() <= 0)
                s3 = context.getString(0x7f0a03a5);
            s4 = (new StringBuilder()).append(s3).append(s2).toString();
        } else
        {
            if(isyncmodel.getClientAddedNum() > 0)
            {
                StringBuilder stringbuilder3 = (new StringBuilder()).append(s3);
                Object aobj3[] = new Object[1];
                aobj3[0] = Integer.valueOf(isyncmodel.getClientAddedNum());
                s3 = stringbuilder3.append(context.getString(0x7f0a03a1, aobj3)).toString();
            }
            if(isyncmodel.getClientModifiededNum() > 0)
            {
                if(s3.length() > 0)
                    s3 = (new StringBuilder()).append(s3).append(s1).toString();
                StringBuilder stringbuilder2 = (new StringBuilder()).append(s3);
                Object aobj2[] = new Object[1];
                aobj2[0] = Integer.valueOf(isyncmodel.getClientModifiededNum());
                s3 = stringbuilder2.append(context.getString(0x7f0a03a2, aobj2)).toString();
            }
            if(isyncmodel.getClientDeletedNum() > 0)
            {
                if(s3.length() > 0)
                    s3 = (new StringBuilder()).append(s3).append(s1).toString();
                StringBuilder stringbuilder1 = (new StringBuilder()).append(s3);
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(isyncmodel.getClientDeletedNum());
                s3 = stringbuilder1.append(context.getString(0x7f0a03a3, aobj1)).toString();
            }
            if(s3.length() > 0)
            {
                String s5 = (new StringBuilder()).append(s3).append(s1).toString();
                StringBuilder stringbuilder = (new StringBuilder()).append(s5);
                Object aobj[] = new Object[1];
                aobj[0] = Util.b(isyncmodel.getUploadBytes() + isyncmodel.getDownloadBytes());
                s3 = stringbuilder.append(context.getString(0x7f0a03a4, aobj)).toString();
            }
            if(s3.length() <= 0)
                s3 = context.getString(0x7f0a03a5);
            s4 = (new StringBuilder()).append(s3).append(s2).toString();
        }
        return s4;
    }

    private void b()
    {
        String s1 = getString(0x7f0a0010);
        int i1;
        Object aobj[];
        if(n)
            i1 = 0x7f0a038d;
        else
            i1 = 0x7f0a038e;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(0);
        c = MMAlert.a(this, s1, getString(i1, aobj), true, new _cls9());
        (new SyncThread()).start();
    }

    static void b(ISyncModel isyncmodel)
    {
        String s1 = (new StringBuilder()).append("dump sync model:\n").append("total backup/restore = ").append(isyncmodel.getTotalBackupNum()).append("/").append(isyncmodel.getTotalRestoreNum()).append("\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("from server add/del/mod = ").append(isyncmodel.getServerAdddedNum()).append("/").append(isyncmodel.getServerDeletedNum()).append("/").append(isyncmodel.getServerModifiededNum()).append("\n").toString();
        Log.d("MicroMsg.QQSyncUI", (new StringBuilder()).append(s2).append("from client add/del/mod = ").append(isyncmodel.getClientAddedNum()).append("/").append(isyncmodel.getClientDeletedNum()).append("/").append(isyncmodel.getClientModifiededNum()).append("\n").toString());
    }

    static void c(QQSyncUI qqsyncui)
    {
        if(ConfigStorageLogic.a() == 0)
            MMAlert.a(qqsyncui, qqsyncui.getString(0x7f0a038f), qqsyncui.getString(0x7f0a0010), qqsyncui. new _cls8(), null);
        else
        if(Util.a((Boolean)MMCore.f().f().a(0x10104)))
            qqsyncui.c(true);
        else
        if(qqsyncui.d.isLogined())
            qqsyncui.b();
        else
            qqsyncui.o();
    }

    private void c(boolean flag)
    {
        if(flag)
        {
            String s3 = getString(0x7f0a0397);
            String s4 = getString(0x7f0a0002);
            String s5 = getString(0x7f0a03ae);
            String s6 = getString(0x7f0a03af);
            _cls10 _lcls10 = new _cls10();
            View view1 = View.inflate(this, 0x7f030104, null);
            AlertDialog alertdialog1 = MMAlert.a(this, s3, view1, s5, s6, _lcls10);
            alertdialog1.setOnDismissListener(new MMAlert._cls7());
            WebView webview1 = (WebView)view1.findViewById(0x7f0702c9);
            webview1.loadUrl(s4);
            webview1.setWebViewClient(new MMAlert._cls8(alertdialog1, this));
        } else
        {
            String s1 = getString(0x7f0a0397);
            String s2 = getString(0x7f0a0002);
            View view = View.inflate(this, 0x7f030104, null);
            AlertDialog alertdialog = MMAlert.a(this, s1, view, null);
            alertdialog.setOnDismissListener(new MMAlert._cls5());
            WebView webview = (WebView)view.findViewById(0x7f0702c9);
            webview.loadUrl(s2);
            webview.setWebViewClient(new MMAlert._cls6(alertdialog, this));
        }
    }

    static Contact d(QQSyncUI qqsyncui)
    {
        return qqsyncui.r;
    }

    static ISyncModel e(QQSyncUI qqsyncui)
    {
        return qqsyncui.d;
    }

    static EditText f(QQSyncUI qqsyncui)
    {
        return qqsyncui.i;
    }

    static void g(QQSyncUI qqsyncui)
    {
        qqsyncui.o();
    }

    static AlertDialog h(QQSyncUI qqsyncui)
    {
        return qqsyncui.l;
    }

    static EditText i(QQSyncUI qqsyncui)
    {
        return qqsyncui.j;
    }

    static void j(QQSyncUI qqsyncui)
    {
        _cls13 _lcls13 = qqsyncui. new _cls13();
        _cls14 _lcls14 = qqsyncui. new _cls14();
        if(qqsyncui.m == null)
            qqsyncui.m = MMAlert.a(qqsyncui, qqsyncui.getString(0x7f0a0396), qqsyncui.g, _lcls13, _lcls14);
        else
            qqsyncui.m.show();
    }

    static Handler k(QQSyncUI qqsyncui)
    {
        return qqsyncui.s;
    }

    static AlertDialog l(QQSyncUI qqsyncui)
    {
        return qqsyncui.m;
    }

    static boolean m(QQSyncUI qqsyncui)
    {
        return qqsyncui.o;
    }

    static void n(QQSyncUI qqsyncui)
    {
        qqsyncui.b();
    }

    static ProgressDialog o(QQSyncUI qqsyncui)
    {
        return qqsyncui.c;
    }

    private void o()
    {
        _cls11 _lcls11 = new _cls11();
        _cls12 _lcls12 = new _cls12();
        if(l == null)
            l = MMAlert.a(this, getString(0x7f0a0396), f, _lcls11, _lcls12);
        else
            l.show();
    }

    static boolean p(QQSyncUI qqsyncui)
    {
        return qqsyncui.n;
    }

    static ProgressDialog q(QQSyncUI qqsyncui)
    {
        qqsyncui.c = null;
        return null;
    }

    static TextView r(QQSyncUI qqsyncui)
    {
        return qqsyncui.q;
    }

    static void s(QQSyncUI qqsyncui)
    {
        boolean flag = qqsyncui.n;
        ISyncModel isyncmodel = qqsyncui.d;
        int i1;
        String s1;
        String s2;
        int j1;
        if(flag)
            i1 = 0x7f0a039f;
        else
            i1 = 0x7f0a03a0;
        s1 = qqsyncui.getString(i1);
        s2 = (new StringBuilder()).append(s1).append("\n").append(b(qqsyncui, flag, isyncmodel)).toString();
        if(qqsyncui.n)
            j1 = 0x7f0a0391;
        else
            j1 = 0x7f0a0393;
        MMAlert.a(qqsyncui, s2, qqsyncui.getString(j1));
    }

    static Handler t(QQSyncUI qqsyncui)
    {
        return qqsyncui.t;
    }

    protected final int a()
    {
        return 0x7f0300a9;
    }

    protected final void a(ISyncModel isyncmodel)
    {
        int i1 = (int)isyncmodel.getUploadBytes();
        int j1 = (int)isyncmodel.getDownloadBytes();
        if(NetService.b(this))
            NetStatStorageLogic.a(j1, i1, 0);
        else
            NetStatStorageLogic.b(j1, i1, 0);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        QQPimUtils.APPLICATION_CONTEXT = getApplicationContext();
        d = new SyncModel(getApplicationContext(), null);
        d.addContactAdapter(this);
        p = ConfigDao.getInstance(getApplicationContext());
        e = LoginModel.getInstance(getApplicationContext());
        r = MMCore.f().h().c("qqsync");
        d(r.z());
        Boolean boolean1 = (Boolean)MMCore.f().f().a(0x10105);
        if(boolean1 == null || boolean1.booleanValue())
        {
            MMCore.f().f().a(0x10105, Boolean.valueOf(false));
            MMAlert.a(this, 0x7f0a03ad, 0x7f0a03ac);
        }
        a = findViewById(0x7f0701bd);
        b = findViewById(0x7f0701be);
        f = View.inflate(this, 0x7f0300d7, null);
        h = (TextView)f.findViewById(0x7f070240);
        h.setText(getString(0x7f0a0395));
        i = (EditText)f.findViewById(0x7f070241);
        i.setInputType(129);
        g = View.inflate(this, 0x7f0300d7, null);
        k = (TextView)g.findViewById(0x7f070240);
        k.setText(getString(0x7f0a03b0));
        j = (EditText)g.findViewById(0x7f070241);
        j.setInputType(129);
        q = (TextView)findViewById(0x7f0701bc);
        ((TextView)findViewById(0x7f0701bf)).setOnClickListener(new _cls1());
        ((TextView)findViewById(0x7f0701c0)).setOnClickListener(new _cls2());
        Linkify.addLinks((TextView)findViewById(0x7f0701c1), Pattern.compile("http://ic.qq.com"), "http://pt.3g.qq.com/i/h/", null, new _cls3());
        Conversation conversation = MMCore.f().j().d(r.s());
        ArrayList arraylist;
        if(conversation != null)
            q.setText(MsgInfoStorageLogic.a(conversation.d(), conversation.g(), conversation.h(), a(conversation.i()), this));
        else
            q.setText(0x7f0a009a);
        a.setOnClickListener(new _cls4());
        b.setOnClickListener(new _cls5());
        a(getString(0x7f0a0013), new _cls6());
        b(new _cls7());
        arraylist = new ArrayList();
        arraylist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(6, "5"));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(arraylist));
    }

    protected void onDestroy()
    {
        if(d != null)
            d.stop();
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().j().e(r.s());
        if(!ConfigStorageLogic.j())
            finish();
    }

    private View a;
    private View b;
    private ProgressDialog c;
    private ISyncModel d;
    private ILoginModel e;
    private View f;
    private View g;
    private TextView h;
    private EditText i;
    private EditText j;
    private TextView k;
    private AlertDialog l;
    private AlertDialog m;
    private boolean n;
    private boolean o;
    private IConfigDao p;
    private TextView q;
    private Contact r;
    private Handler s;
    private Handler t;

    static 
    {
        System.loadLibrary("Sync");
    }

    private class _cls15 extends Handler
    {

        static SecurityImage a(_cls15 _pcls15)
        {
            return _pcls15.b;
        }

        static void a(_cls15 _pcls15, String s1)
        {
            _pcls15.a(s1);
        }

        private void a(String s1)
        {
            Log.d("MicroMsg.QQSyncUI", (new StringBuilder()).append("get qqsync verify image url:").append(s1).toString());
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    String s2 = _cls15.a(b).b();
                    if(s2 == null || s2.length() <= 0)
                    {
                        class _cls1
                            implements android.content.DialogInterface.OnClickListener
                        {

                            public void onClick(DialogInterface dialoginterface1, int k1)
                            {
                                _cls15.a(a.b, a.a);
                            }

                            private _cls1 a;

                            _cls1()
                            {
                                a = _cls1.this;
                                super();
                            }
                        }

                        MMAlert.a(b.a, 0x7f0a00be, 0x7f0a0010, new _cls1());
                        _cls15.a(b).c();
                    } else
                    {
                        int j1 = QQSyncUI.b(b.a).inputVerifyCode(_cls15.a(b).b());
                        Bundle bundle = new Bundle();
                        bundle.putInt("result", j1);
                        bundle.putBoolean("autologin", false);
                        Message message = QQSyncUI.k(b.a).obtainMessage();
                        message.setData(bundle);
                        QQSyncUI.k(b.a).sendMessage(message);
                    }
                }

                final String a;
                final _cls15 b;

                _cls1(String s1)
                {
                    b = _cls15.this;
                    a = s1;
                    super();
                }
            }

            class _cls2
                implements android.content.DialogInterface.OnDismissListener
            {

                public void onDismiss(DialogInterface dialoginterface)
                {
                    if(QQSyncUI.e(a.a) != null)
                        QQSyncUI.e(a.a).clearLoginInformation();
                }

                private _cls15 a;

                _cls2()
                {
                    a = _cls15.this;
                    super();
                }
            }

            b = SecurityImage.Builder.a(a, 0x7f0a0010, null, null, new _cls1(s1), new _cls2(), new SecurityImage.HttpModel(s1));
        }

        public void handleMessage(Message message)
        {
            int i1;
            super.handleMessage(message);
            i1 = message.getData().getInt("result", -1);
            Log.d("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync result=").append(i1).toString());
            i1;
            JVM INSTR lookupswitch 16: default 180
        //                       -1000: 240
        //                       -100: 469
        //                       0: 250
        //                       101: 309
        //                       201: 409
        //                       202: 439
        //                       203: 499
        //                       204: 529
        //                       205: 529
        //                       206: 529
        //                       207: 623
        //                       209: 277
        //                       254: 668
        //                       255: 668
        //                       1003: 375
        //                       1004: 328;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L9 _L9 _L10 _L11 _L12 _L12 _L13 _L14
_L1:
            Log.a("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync failed, err=").append(i1).toString());
            Toast.makeText(a, 0x7f0a0399, 0).show();
            if(QQSyncUI.e(a) != null)
                QQSyncUI.e(a).clearLoginInformation();
_L16:
            return;
_L2:
            Log.d("MicroMsg.QQSyncUI", "qqsync user canceled");
            continue; /* Loop/switch isn't completed */
_L4:
            Log.d("MicroMsg.QQSyncUI", "qqsync login ok");
            if(QQSyncUI.m(a))
                QQSyncUI.n(a);
            continue; /* Loop/switch isn't completed */
_L11:
            Toast.makeText(a, 0x7f0a00bf, 0).show();
            a(QQSyncUI.b(a).getVerifyImageURL());
            continue; /* Loop/switch isn't completed */
_L5:
            a(QQSyncUI.b(a).getVerifyImageURL());
            continue; /* Loop/switch isn't completed */
_L14:
            Log.a("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync failed, wrong pim pass, err=").append(i1).toString());
            Toast.makeText(a, 0x7f0a03b1, 0).show();
            QQSyncUI.j(a);
            continue; /* Loop/switch isn't completed */
_L13:
            Log.a("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync failed, need pim pass, err=").append(i1).toString());
            QQSyncUI.j(a);
            continue; /* Loop/switch isn't completed */
_L6:
            Log.a("MicroMsg.QQSyncUI", "qqsync unknown failed");
            Toast.makeText(a, a.getString(0x7f0a0399), 0).show();
            continue; /* Loop/switch isn't completed */
_L7:
            Log.a("MicroMsg.QQSyncUI", "qqsync freq limited");
            Toast.makeText(a, a.getString(0x7f0a039a), 0).show();
            continue; /* Loop/switch isn't completed */
_L3:
            Log.a("MicroMsg.QQSyncUI", "qqsync network fail");
            Toast.makeText(a, a.getString(0x7f0a007a), 0).show();
            continue; /* Loop/switch isn't completed */
_L8:
            Toast.makeText(a, a.getString(0x7f0a039b), 0).show();
            QQSyncUI.g(a);
            continue; /* Loop/switch isn't completed */
_L9:
            if(message.getData().getBoolean("autologin", false))
            {
                Log.a("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync auto login failed, account expired, err=").append(i1).toString());
            } else
            {
                Toast.makeText(a, a.getString(0x7f0a039b), 0).show();
                Log.a("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync login failed, account expired, err=").append(i1).toString());
            }
            QQSyncUI.g(a);
            continue; /* Loop/switch isn't completed */
_L10:
            Log.a("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync client error param, err=").append(i1).toString());
            QQSyncUI.a(a, LoginModel.getInstance(a.getApplicationContext()));
            continue; /* Loop/switch isn't completed */
_L12:
            Toast.makeText(a, 0x7f0a039c, 0).show();
            if(true) goto _L16; else goto _L15
_L15:
        }

        final QQSyncUI a;
        private SecurityImage b;

        _cls15()
        {
            a = QQSyncUI.this;
            super();
            b = null;
        }
    }


    private class _cls16 extends Handler
    {

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            String s1 = message.getData().getString("progress");
            if(QQSyncUI.o(a) != null)
            {
                ProgressDialog progressdialog = QQSyncUI.o(a);
                QQSyncUI qqsyncui = a;
                int i1;
                Conversation conversation;
                int j1;
                Object aobj[];
                if(QQSyncUI.p(a))
                    j1 = 0x7f0a038d;
                else
                    j1 = 0x7f0a038e;
                aobj = new Object[1];
                aobj[0] = s1;
                progressdialog.setMessage(qqsyncui.getString(j1, aobj));
            }
            i1 = message.getData().getInt("status", -1);
            if(i1 != -1 && QQSyncUI.o(a) != null)
            {
                QQSyncUI.o(a).dismiss();
                QQSyncUI.q(a);
            }
            if(i1 == 0)
            {
                MsgInfoStorageLogic.a(false, QQSyncUI.a(a, QQSyncUI.p(a), QQSyncUI.e(a)));
                MMCore.f().f().a(0x10101, Long.valueOf(Util.c()));
                MMCore.f().f().a(0x10102, Long.valueOf(Util.c()));
                a.a(QQSyncUI.e(a));
                conversation = MMCore.f().j().d(QQSyncUI.d(a).s());
                if(conversation != null)
                    QQSyncUI.r(a).setText(MsgInfoStorageLogic.a(conversation.d(), conversation.g(), conversation.h(), QQSyncUI.a(conversation.i()), a));
                QQSyncUI.s(a);
                QQSyncUI.b(QQSyncUI.e(a));
            }
            if(i1 == 1)
                MMAlert.a(a, 0x7f0a0390, 0x7f0a0010);
        }

        private QQSyncUI a;

        _cls16()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class LoginThread extends Thread
    {

        public void run()
        {
            Log.d("MicroMsg.QQSyncUI", (new StringBuilder()).append("qqsync login with binduin=").append(a).toString());
            int i1 = QQSyncUI.b(d).loginByMd5(a, Util.o(b));
            Bundle bundle = new Bundle();
            bundle.putInt("result", i1);
            bundle.putBoolean("autologin", c);
            Message message = QQSyncUI.k(d).obtainMessage();
            message.setData(bundle);
            QQSyncUI.k(d).sendMessage(message);
            if(QQSyncUI.h(d) != null)
                QQSyncUI.h(d).dismiss();
        }

        private String a;
        private String b;
        private boolean c;
        private QQSyncUI d;

        public LoginThread(String s1, String s2)
        {
            d = QQSyncUI.this;
            super();
            a = s1;
            b = s2;
            c = false;
        }
    }


    private class _cls9
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            QQSyncUI.e(a).stop();
        }

        private QQSyncUI a;

        _cls9()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class SyncThread extends Thread
    {

        static boolean a(SyncThread syncthread)
        {
            return syncthread.b;
        }

        public void run()
        {
            class _cls1 extends Thread
            {

                public void run()
                {
                    while(!SyncThread.a(a)) 
                        try
                        {
                            Thread.sleep(1000L);
                            Message message1 = QQSyncUI.t(a.a).obtainMessage();
                            Bundle bundle1 = new Bundle();
                            bundle1.putString("progress", (new StringBuilder()).append(QQSyncUI.e(a.a).getProgressPrecent()).append("").toString());
                            message1.setData(bundle1);
                            QQSyncUI.t(a.a).sendMessage(message1);
                        }
                        catch(InterruptedException interruptedexception) { }
                }

                private SyncThread a;

                _cls1()
                {
                    a = SyncThread.this;
                    super();
                }
            }

            (new _cls1()).start();
            QQSyncUI.a(a, new SyncModel(a.getApplicationContext(), null));
            QQSyncUI.e(a).addContactAdapter(a.getApplicationContext());
            com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult;
            Message message;
            Bundle bundle;
            if(QQSyncUI.p(a))
                syncresult = QQSyncUI.e(a).safeBackupAll();
            else
                syncresult = QQSyncUI.e(a).safeRestoreAll();
            b = true;
            message = QQSyncUI.t(a).obtainMessage();
            bundle = new Bundle();
            bundle.putString("progress", (new StringBuilder()).append("").append(QQSyncUI.e(a).getProgressPrecent()).toString());
            if(syncresult == com.tencent.qqpim.interfaces.ISyncModel.SyncResult.SUCCEED)
                bundle.putInt("status", 0);
            else
            if(syncresult == com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL)
                bundle.putInt("status", 1);
            else
                bundle.putInt("status", 2);
            message.setData(bundle);
            QQSyncUI.t(a).sendMessage(message);
        }

        final QQSyncUI a;
        private boolean b;

        SyncThread()
        {
            a = QQSyncUI.this;
            super();
            b = false;
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            MMWizardActivity.a(a, new Intent(a, com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private QQSyncUI a;

        _cls8()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls10
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            MMCore.f().f().a(0x10104, Boolean.valueOf(false));
            QQSyncUI.c(a);
        }

        private QQSyncUI a;

        _cls10()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls13
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            String s1 = QQSyncUI.i(a).getText().toString();
            QQSyncUI.i(a).setText("");
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface1, int k1)
                {
                    QQSyncUI.j(a.a);
                }

                private _cls13 a;

                _cls1()
                {
                    a = _cls13.this;
                    super();
                }
            }

            if(s1 == null || s1.equals(""))
            {
                MMAlert.a(a, 0x7f0a00b9, 0x7f0a0010, new _cls1());
            } else
            {
                int j1 = QQSyncUI.b(a).inputPimPassword(s1);
                Message message = QQSyncUI.k(a).obtainMessage();
                Bundle bundle = new Bundle();
                bundle.putInt("result", j1);
                message.setData(bundle);
                QQSyncUI.k(a).sendMessage(message);
                QQSyncUI.l(a).dismiss();
            }
        }

        final QQSyncUI a;

        _cls13()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls14
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            QQSyncUI.i(a).setText("");
            QQSyncUI.l(a).dismiss();
        }

        private QQSyncUI a;

        _cls14()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls11
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            String s1 = QQSyncUI.f(a).getText().toString();
            QQSyncUI.f(a).setText("");
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface1, int j1)
                {
                    QQSyncUI.g(a.a);
                }

                private _cls11 a;

                _cls1()
                {
                    a = _cls11.this;
                    super();
                }
            }

            if(s1 == null || s1.equals(""))
            {
                MMAlert.a(a, 0x7f0a00b9, 0x7f0a0010, new _cls1());
            } else
            {
                String s2 = Util.m(s1);
                QQSyncUI.a(a, s2);
            }
        }

        final QQSyncUI a;

        _cls11()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls12
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            QQSyncUI.f(a).setText("");
            QQSyncUI.h(a).dismiss();
        }

        private QQSyncUI a;

        _cls12()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
            intent.putExtra("title", a.getString(0x7f0a0280));
            intent.putExtra("rawUrl", a.getString(0x7f0a0001));
            a.startActivity(intent);
        }

        private QQSyncUI a;

        _cls1()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            QQSyncUI.a(a);
        }

        private QQSyncUI a;

        _cls2()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls3
        implements android.text.util.Linkify.TransformFilter
    {

        public String transformUrl(Matcher matcher, String s1)
        {
            String s2;
            if(QQSyncUI.b(a).getLoginKey() == null)
                s2 = "";
            else
                s2 = (new StringBuilder()).append(QQSyncUI.b(a).getLoginKey()).append(a.getString(0x7f0a0004)).toString();
            return s2;
        }

        private QQSyncUI a;

        _cls3()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            QQSyncUI.a(a, true);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(6, "6"));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(arraylist));
            QQSyncUI.c(a);
        }

        private QQSyncUI a;

        _cls4()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            QQSyncUI.a(a, false);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(6, "7"));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(arraylist));
            QQSyncUI.c(a);
        }

        private QQSyncUI a;

        _cls5()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/contact/ContactInfoUI);
            intent.putExtra("Contact_User", QQSyncUI.d(a).s());
            intent.putExtra("Chat_Readonly", true);
            a.startActivity(intent);
        }

        private QQSyncUI a;

        _cls6()
        {
            a = QQSyncUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private QQSyncUI a;

        _cls7()
        {
            a = QQSyncUI.this;
            super();
        }
    }

}

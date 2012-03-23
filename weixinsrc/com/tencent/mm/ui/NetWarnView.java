// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.*;
import com.tencent.mm.model.ConfigStorageLogic;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.network.INetworkEvent_AIDL;
import com.tencent.mm.platformtools.LocaleUtil;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.ui.tools.WebViewUI;

public class NetWarnView extends LinearLayout
    implements com.tencent.mm.network.NetworkHttpCheck.IOnHttpConnectFinish
{

    public NetWarnView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = null;
        h = false;
    }

    static ProgressDialog a(NetWarnView netwarnview, ProgressDialog progressdialog)
    {
        netwarnview.g = progressdialog;
        return progressdialog;
    }

    static String a(NetWarnView netwarnview)
    {
        return netwarnview.i;
    }

    static boolean a(NetWarnView netwarnview, boolean flag)
    {
        netwarnview.h = flag;
        return flag;
    }

    public final void a()
    {
        a = null;
    }

    public final void a(int j)
    {
        if(!h) goto _L2; else goto _L1
_L1:
        return;
_L2:
        g.cancel();
        if(j != 0 || !Util.b(a, i))
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
            intent.putExtra("title", a.getString(0x7f0a0137));
            intent.putExtra("rawUrl", a.getString(0x7f0a0000));
            a.startActivity(intent);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(Context context)
    {
        int j;
        boolean flag;
        j = 1;
        flag = false;
        if(MMCore.q() != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int k;
        a = context;
        k = -1;
        int i1 = MMCore.q().g().a();
        k = i1;
_L9:
        String s = MMCore.q().a();
        Object aobj[] = new Object[5];
        aobj[flag] = (new StringBuilder()).append("0x").append(Integer.toHexString(ConstantsProtocal.b)).toString();
        aobj[j] = ConstantsProtocal.a;
        aobj[2] = ConfigStorageLogic.b();
        aobj[3] = s;
        aobj[4] = LocaleUtil.a();
        i = String.format("http://w.mail.qq.com/cgi-bin/report_mm?failuretype=1&devicetype=2&clientversion=%s&os=%s&username=%s&iport=%s&t=weixin_bulletin&f=xhtml&lang=%s", aobj);
        k;
        JVM INSTR tableswitch 0 6: default 168
    //                   0 188
    //                   1 168
    //                   2 168
    //                   3 293
    //                   4 247
    //                   5 168
    //                   6 352;
           goto _L3 _L4 _L3 _L3 _L5 _L6 _L3 _L7
_L7:
        break MISSING_BLOCK_LABEL_352;
_L3:
        j = ((flag) ? 1 : 0);
_L8:
        int l;
        if(j != 0)
            l = ((flag) ? 1 : 0);
        else
            l = 8;
        setVisibility(l);
        flag = j;
          goto _L1
_L4:
        b.setText(0x7f0a0136);
        c.setVisibility(8);
        d.setVisibility(flag);
        f.setVisibility(8);
        e.setVisibility(flag);
        setOnClickListener(new _cls1(context));
          goto _L8
_L6:
        b.setText(0x7f0a0135);
        c.setVisibility(8);
        d.setVisibility(8);
        f.setVisibility(flag);
        e.setVisibility(flag);
          goto _L8
_L5:
        b.setText(0x7f0a0137);
        c.setVisibility(8);
        d.setVisibility(flag);
        f.setVisibility(8);
        e.setVisibility(flag);
        setOnClickListener(new _cls2(context));
          goto _L8
        b.setText(0x7f0a0138);
        c.setText(getContext().getString(0x7f0a0139));
        c.setVisibility(flag);
        d.setVisibility(flag);
        f.setVisibility(8);
        e.setVisibility(flag);
        setOnClickListener(new _cls3(context));
          goto _L8
        RemoteException remoteexception;
        remoteexception;
          goto _L9
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        b = (TextView)findViewById(0x7f0701aa);
        c = (TextView)findViewById(0x7f0701ab);
        d = (TextView)findViewById(0x7f0701ad);
        f = (ProgressBar)findViewById(0x7f0701ac);
        e = (ImageView)findViewById(0x7f0701a9);
    }

    private Context a;
    private TextView b;
    private TextView c;
    private TextView d;
    private ImageView e;
    private ProgressBar f;
    private ProgressDialog g;
    private boolean h;
    private String i;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
            intent.putExtra("title", a.getString(0x7f0a0136));
            intent.putExtra("rawUrl", a.getString(0x7f0a0000));
            a.startActivity(intent);
        }

        private Context a;
        private NetWarnView b;

        _cls1(Context context)
        {
            b = NetWarnView.this;
            a = context;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            NetWarnView.a(a, false);
            (new NetworkHttpCheck()).a(NetWarnView.a(a), a);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    NetWarnView.a(a.a, true);
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            NetWarnView.a(a, MMAlert.a(b, b.getString(0x7f0a0010), b.getString(0x7f0a0027), true, new _cls1()));
        }

        final NetWarnView a;
        private Context b;

        _cls2(Context context)
        {
            a = NetWarnView.this;
            b = context;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(!Util.b(a, NetWarnView.a(b)))
            {
                Intent intent = new Intent();
                intent.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
                intent.putExtra("title", a.getString(0x7f0a0137));
                intent.putExtra("rawUrl", a.getString(0x7f0a0000));
                a.startActivity(intent);
            }
        }

        private Context a;
        private NetWarnView b;

        _cls3(Context context)
        {
            b = NetWarnView.this;
            a = context;
            super();
        }
    }

}

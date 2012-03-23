// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bindmobile;

import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.friend.SmsBindMobileObserver;

public class BindMContactUI extends MMWizardActivity
{

    public BindMContactUI()
    {
        g = null;
        h = null;
        i = null;
    }

    static String a(BindMContactUI bindmcontactui, String s)
    {
        bindmcontactui.e = s;
        return s;
    }

    static void a(BindMContactUI bindmcontactui)
    {
        bindmcontactui.o();
    }

    static TextView b(BindMContactUI bindmcontactui)
    {
        return bindmcontactui.d;
    }

    private void b()
    {
        MMAlert.a(this, 0x7f0a02de, 0x7f0a02dd, new _cls1(), null);
    }

    static void b(BindMContactUI bindmcontactui, String s)
    {
        if(bindmcontactui.f == null)
        {
            bindmcontactui.f = new SmsBindMobileObserver(com.tencent.mm.ui.friend.SmsBindMobileObserver.SmsSceneType.b, new Handler(), bindmcontactui, bindmcontactui. new _cls5(s));
            bindmcontactui.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, bindmcontactui.f);
        }
        bindmcontactui.f.a(s);
    }

    static EditText c(BindMContactUI bindmcontactui)
    {
        return bindmcontactui.a;
    }

    static String d(BindMContactUI bindmcontactui)
    {
        return bindmcontactui.e;
    }

    static void e(BindMContactUI bindmcontactui)
    {
        bindmcontactui.b();
    }

    static String f(BindMContactUI bindmcontactui)
    {
        return bindmcontactui.g;
    }

    static String g(BindMContactUI bindmcontactui)
    {
        return bindmcontactui.h;
    }

    protected final int a()
    {
        return 0x7f030017;
    }

    protected void onActivityResult(int j, int k, Intent intent)
    {
        super.onActivityResult(j, k, intent);
        k;
        JVM INSTR tableswitch 100 100: default 28
    //                   100 29;
           goto _L1 _L2
_L1:
        return;
_L2:
        g = Util.a(intent.getStringExtra("country_name"), "");
        h = Util.a(intent.getStringExtra("couttry_code"), "");
        if(!g.equals(""))
            c.setText(g);
        if(!h.equals(""))
            d.setText((new StringBuilder()).append("+").append(h).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a02b3);
        g = Util.a(getIntent().getStringExtra("country_name"), "");
        h = Util.a(getIntent().getStringExtra("couttry_code"), "");
        i = Util.a(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
        a = (EditText)findViewById(0x7f070044);
        b = (LinearLayout)findViewById(0x7f070041);
        c = (TextView)findViewById(0x7f070043);
        d = (TextView)findViewById(0x7f070042);
        if(g != null && !g.equals(""))
            c.setText(g);
        if(h != null && !h.equals(""))
            d.setText((new StringBuilder()).append("+").append(h).toString());
        if(i != null && !i.equals(""))
            a.setText(i);
        a(0x7f0a001a, new _cls2());
        a.requestFocus();
        b(0x7f0a0015, new _cls3());
        b.setOnClickListener(new _cls4());
    }

    public void onDestroy()
    {
        super.onDestroy();
        if(f != null)
        {
            getContentResolver().unregisterContentObserver(f);
            f.a();
        }
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        boolean flag;
        if(j == 4)
        {
            b();
            flag = true;
        } else
        {
            flag = super.onKeyDown(j, keyevent);
        }
        return flag;
    }

    private EditText a;
    private LinearLayout b;
    private TextView c;
    private TextView d;
    private String e;
    private SmsBindMobileObserver f;
    private String g;
    private String h;
    private String i;

    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int j)
        {
            BindMContactUI.a(a);
        }

        private BindMContactUI a;

        _cls1()
        {
            a = BindMContactUI.this;
            super();
        }
    }


    private class _cls5
        implements com.tencent.mm.ui.friend.SmsBindMobileObserver.OnMobileBindedListener
    {

        public final void a(int j)
        {
            if(j != 1) goto _L2; else goto _L1
_L1:
            MMWizardActivity.a(b, new Intent(b, com/tencent/mm/ui/bindmobile/BindMContactStatusUI));
_L4:
            return;
_L2:
            if(j == 2)
            {
                Intent intent = new Intent(b, com/tencent/mm/ui/bindmobile/BindMContactVerifyUI);
                intent.putExtra("bindmcontact_mobile", a);
                MMWizardActivity.a(b, intent);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private String a;
        private BindMContactUI b;

        _cls5(String s)
        {
            b = BindMContactUI.this;
            a = s;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BindMContactUI.a(a, (new StringBuilder()).append(BindMContactUI.b(a).getText().toString().trim()).append(BindMContactUI.c(a).getText().toString().trim()).toString());
            if(!o.a(BindMContactUI.d(a)) || BindMContactUI.c(a).getText().toString().trim().length() <= 0)
                MMAlert.a(a, 0x7f0a02b4, 0x7f0a0010);
            else
                BindMContactUI.b(a, BindMContactUI.d(a));
        }

        private BindMContactUI a;

        _cls2()
        {
            a = BindMContactUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BindMContactUI.e(a);
        }

        private BindMContactUI a;

        _cls3()
        {
            a = BindMContactUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/tools/CountryCodeUI);
            intent.putExtra("country_name", BindMContactUI.f(a));
            intent.putExtra("couttry_code", BindMContactUI.g(a));
            a.startActivityForResult(intent, 100);
        }

        private BindMContactUI a;

        _cls4()
        {
            a = BindMContactUI.this;
            super();
        }
    }

}

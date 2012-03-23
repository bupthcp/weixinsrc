// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.friend.SmsBindMobileObserver;

// Referenced classes of package com.tencent.mm.ui.login:
//            RegByMobileSetPwdUI, RegByMobileVerifyUI, ForgetPassMenuSelector

public class RegByMobileRegUI extends MMActivity
{

    public RegByMobileRegUI()
    {
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
    }

    static Button a(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.l;
    }

    static SmsBindMobileObserver a(RegByMobileRegUI regbymobileregui, SmsBindMobileObserver smsbindmobileobserver)
    {
        regbymobileregui.h = smsbindmobileobserver;
        return smsbindmobileobserver;
    }

    static String a(RegByMobileRegUI regbymobileregui, String s)
    {
        regbymobileregui.f = s;
        return s;
    }

    static void a(RegByMobileRegUI regbymobileregui, Class class1, Intent intent)
    {
        regbymobileregui.a(class1, intent);
    }

    static void a(RegByMobileRegUI regbymobileregui, String s, String s1, boolean flag)
    {
        Intent intent = new Intent();
        intent.putExtra("bindmcontact_mobile", s);
        intent.putExtra("is_sync_addr", flag);
        intent.putExtra("regbymobile_ticket", s1);
        regbymobileregui.a(com/tencent/mm/ui/login/RegByMobileSetPwdUI, intent);
    }

    static String b(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.i;
    }

    static String c(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.j;
    }

    static int d(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.m;
    }

    static TextView e(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.d;
    }

    static EditText f(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.a;
    }

    static String g(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.f;
    }

    static SmsBindMobileObserver h(RegByMobileRegUI regbymobileregui)
    {
        return regbymobileregui.h;
    }

    static void i(RegByMobileRegUI regbymobileregui)
    {
        Intent intent = new Intent();
        intent.putExtra("bindmcontact_mobile", regbymobileregui.f);
        intent.putExtra("bindmcontact_shortmobile", regbymobileregui.a.getText().toString().trim());
        intent.putExtra("country_name", regbymobileregui.i);
        intent.putExtra("couttry_code", regbymobileregui.j);
        regbymobileregui.a(com/tencent/mm/ui/login/RegByMobileVerifyUI, intent);
    }

    protected final int a()
    {
        return 0x7f0300c1;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        j1;
        JVM INSTR tableswitch 100 100: default 28
    //                   100 29;
           goto _L1 _L2
_L1:
        return;
_L2:
        i = Util.a(intent.getStringExtra("country_name"), "");
        j = Util.a(intent.getStringExtra("couttry_code"), "");
        if(!i.equals(""))
            c.setText(i);
        if(!j.equals(""))
            d.setText((new StringBuilder()).append("+").append(j).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        i = Util.a(getIntent().getStringExtra("country_name"), "");
        j = Util.a(getIntent().getStringExtra("couttry_code"), "");
        g = Util.a(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
        m = getIntent().getIntExtra("login_type", 0);
        a = (EditText)findViewById(0x7f070212);
        b = (LinearLayout)findViewById(0x7f070041);
        c = (TextView)findViewById(0x7f070043);
        d = (TextView)findViewById(0x7f070042);
        e = (CheckBox)findViewById(0x7f070213);
        k = (Button)findViewById(0x7f070215);
        l = (Button)findViewById(0x7f070144);
        d(0x7f0a00fb);
        if(i != null && !i.equals(""))
            c.setText(i);
        if(j != null && !j.equals(""))
            d.setText((new StringBuilder()).append("+").append(j).toString());
        if(g != null && !g.equals(""))
            a.setText(g);
        findViewById(0x7f070214).setOnClickListener(new _cls1());
        e.setOnCheckedChangeListener(new _cls2());
        b.setOnClickListener(new _cls3());
        if(m != 0) goto _L2; else goto _L1
_L1:
        k.setText(getString(0x7f0a00e3));
_L4:
        ForgetPassMenuSelector forgetpassmenuselector = new ForgetPassMenuSelector(c());
        k.setOnClickListener(new _cls4(forgetpassmenuselector));
        l.setOnClickListener(new _cls5());
        b(0x7f0a0014, new _cls6());
        return;
_L2:
        if(m == 1)
            k.setText(getString(0x7f0a00e3));
        else
        if(m == 2)
            k.setText(getString(0x7f0a011e));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onDestroy()
    {
        super.onDestroy();
        if(h != null)
            h.a();
    }

    private EditText a;
    private LinearLayout b;
    private TextView c;
    private TextView d;
    private CheckBox e;
    private String f;
    private String g;
    private SmsBindMobileObserver h;
    private String i;
    private String j;
    private Button k;
    private Button l;
    private int m;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Util.b(a.c(), a.getString(0x7f0a0006));
        }

        private RegByMobileRegUI a;

        _cls1()
        {
            a = RegByMobileRegUI.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            a.b(flag);
            RegByMobileRegUI.a(a).setEnabled(flag);
        }

        private RegByMobileRegUI a;

        _cls2()
        {
            a = RegByMobileRegUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/tools/CountryCodeUI);
            intent.putExtra("country_name", RegByMobileRegUI.b(a));
            intent.putExtra("couttry_code", RegByMobileRegUI.c(a));
            a.startActivityForResult(intent, 100);
        }

        private RegByMobileRegUI a;

        _cls3()
        {
            a = RegByMobileRegUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            RegByMobileRegUI.d(b);
            JVM INSTR tableswitch 0 2: default 40
        //                       0 41
        //                       1 41
        //                       2 63;
               goto _L1 _L2 _L2 _L3
_L1:
            return;
_L2:
            intent.setClass(b, com/tencent/mm/ui/login/LoginUI);
            b.startActivity(intent);
            continue; /* Loop/switch isn't completed */
_L3:
            String as[] = new String[3];
            as[0] = b.getResources().getString(0x7f0a0109);
            as[1] = b.getResources().getString(0x7f0a010a);
            as[2] = b.getResources().getString(0x7f0a010b);
            MMAlert.a(b, null, as, null, a);
            if(true) goto _L1; else goto _L4
_L4:
        }

        private ForgetPassMenuSelector a;
        private RegByMobileRegUI b;

        _cls4(ForgetPassMenuSelector forgetpassmenuselector)
        {
            b = RegByMobileRegUI.this;
            a = forgetpassmenuselector;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            RegByMobileRegUI.a(a, (new StringBuilder()).append(RegByMobileRegUI.e(a).getText().toString().trim()).append(RegByMobileRegUI.f(a).getText().toString().trim()).toString());
            if(!o.a(RegByMobileRegUI.g(a)) || RegByMobileRegUI.f(a).getText().toString().trim().length() <= 0)
            {
                MMAlert.a(a, 0x7f0a02b4, 0x7f0a0010);
            } else
            {
                a.n();
                if(RegByMobileRegUI.h(a) == null)
                {
                    class _cls1
                        implements com.tencent.mm.ui.friend.SmsBindMobileObserver.OnMobileBindedListener
                    {

                        public final void a(int i1)
                        {
                            class _cls1
                                implements android.content.DialogInterface.OnClickListener
                            {

                                public void onClick(DialogInterface dialoginterface, int j1)
                                {
                                    RegByMobileRegUI.a(a.a.a, RegByMobileRegUI.g(a.a.a), RegByMobileRegUI.h(a.a.a).b(), true);
                                }

                                private _cls1 a;

                                    _cls1()
                                    {
                                        a = _cls1.this;
                                        super();
                                    }
                            }

                            class _cls2
                                implements android.content.DialogInterface.OnClickListener
                            {

                                public void onClick(DialogInterface dialoginterface, int j1)
                                {
                                    RegByMobileRegUI.a(a.a.a, RegByMobileRegUI.g(a.a.a), RegByMobileRegUI.h(a.a.a).b(), false);
                                }

                                private _cls1 a;

                                    _cls2()
                                    {
                                        a = _cls1.this;
                                        super();
                                    }
                            }

                            if(i1 == 1)
                                MMAlert.a(a.a, 0x7f0a02c9, 0x7f0a0010, 0x7f0a0016, 0x7f0a0015, new _cls1(), new _cls2());
                            else
                            if(i1 == 2)
                                RegByMobileRegUI.i(a.a);
                            else
                            if(i1 == 3)
                            {
                                Intent intent = new Intent();
                                intent.putExtra("login_mobilephone", RegByMobileRegUI.g(a.a));
                                RegByMobileRegUI.a(a.a, com/tencent/mm/ui/login/LoginInputPwdUI, intent);
                            } else
                            {
                                Toast.makeText(a.a, a.a.getString(0x7f0a007a), 0).show();
                            }
                        }

                        final _cls5 a;

                _cls1()
                {
                    a = _cls5.this;
                    super();
                }
                    }

                    RegByMobileRegUI.a(a, new SmsBindMobileObserver(com.tencent.mm.ui.friend.SmsBindMobileObserver.SmsSceneType.a, new Handler(), a, new _cls1()));
                    a.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, RegByMobileRegUI.h(a));
                }
                RegByMobileRegUI.h(a).a(RegByMobileRegUI.g(a));
            }
        }

        final RegByMobileRegUI a;

        _cls5()
        {
            a = RegByMobileRegUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private RegByMobileRegUI a;

        _cls6()
        {
            a = RegByMobileRegUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.ui.MMActivity;

public class RegByMobileSetPwdUI extends MMActivity
{

    public RegByMobileSetPwdUI()
    {
    }

    static EditText a(RegByMobileSetPwdUI regbymobilesetpwdui)
    {
        return regbymobilesetpwdui.a;
    }

    static void a(RegByMobileSetPwdUI regbymobilesetpwdui, Class class1, Intent intent)
    {
        regbymobilesetpwdui.a(class1, intent);
    }

    static EditText b(RegByMobileSetPwdUI regbymobilesetpwdui)
    {
        return regbymobilesetpwdui.b;
    }

    protected final int a()
    {
        return 0x7f0300c3;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a00fe);
        a = (EditText)findViewById(0x7f070217);
        b = (EditText)findViewById(0x7f070218);
        a(0x7f0a001a, new _cls1());
        b(0x7f0a001b, new _cls2());
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    private EditText a;
    private EditText b;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = RegByMobileSetPwdUI.a(a).getText().toString();
            if(!s.equals(RegByMobileSetPwdUI.b(a).getText().toString()))
                MMAlert.a(a, 0x7f0a0103, 0x7f0a0102);
            else
            if(s.length() > 16)
                MMAlert.a(a, 0x7f0a0104, 0x7f0a0102);
            else
            if(!Util.e(s))
            {
                if(s.length() >= 4 && s.length() < 9)
                    MMAlert.a(a, 0x7f0a00bc, 0x7f0a00ae);
                else
                    MMAlert.a(a, 0x7f0a00bd, 0x7f0a00ae);
            } else
            {
                a.n();
                Intent intent = new Intent();
                String s1 = a.getIntent().getExtras().getString("bindmcontact_mobile");
                String s2 = a.getIntent().getExtras().getString("regbymobile_ticket");
                boolean flag = a.getIntent().getBooleanExtra("is_sync_addr", false);
                Log.d("MicroMsg.RegByMobileSetPwdUI", (new StringBuilder()).append("ticket:").append(s2).toString());
                Log.d("MicroMsg.RegByMobileSetPwdUI", (new StringBuilder()).append("isSync ").append(flag).toString());
                intent.putExtra("regbymobile_pwd", s);
                intent.putExtra("bindmcontact_mobile", s1);
                intent.putExtra("is_sync_addr", flag);
                intent.putExtra("regbymobile_ticket", s2);
                RegByMobileSetPwdUI.a(a, com/tencent/mm/ui/login/RegByMobileSetNickUI, intent);
                a.finish();
            }
        }

        private RegByMobileSetPwdUI a;

        _cls1()
        {
            a = RegByMobileSetPwdUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private RegByMobileSetPwdUI a;

        _cls2()
        {
            a = RegByMobileSetPwdUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.plugin.qqmail.ui:
//            ComposeUI

public class MailAddrProfileUI extends MMPreference
{

    public MailAddrProfileUI()
    {
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        if(preference.getKey().equals("mail_compose_btn"))
        {
            Intent intent = new Intent(this, com/tencent/mm/plugin/qqmail/ui/ComposeUI);
            intent.putExtra("composeType", 4);
            String as[] = new String[1];
            as[0] = (new StringBuilder()).append(b).append(" ").append(c).toString();
            intent.putExtra("toList", as);
            startActivity(intent);
            finish();
        }
        return false;
    }

    public final int d_()
    {
        return 0x7f05001b;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = getIntent().getStringExtra("name");
        c = getIntent().getStringExtra("addr");
        d = getIntent().getBooleanExtra("can_compose", false);
        d(0x7f0a030a);
        a = q();
        ((KeyValuePreference)a.a("mail_receiver_info_name")).setSummary(b);
        ((KeyValuePreference)a.a("mail_receiver_info_addr")).setSummary(getIntent().getStringExtra("addr"));
        Preference preference = a.a("mail_compose_btn");
        if(!d)
            a.b(preference);
        b(new _cls1());
    }

    private IPreferenceScreen a;
    private String b;
    private String c;
    private boolean d;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private MailAddrProfileUI a;

        _cls1()
        {
            a = MailAddrProfileUI.this;
            super();
        }
    }

}

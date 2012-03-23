// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.preference.Preference;
import android.text.format.DateFormat;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelstat.NetStatInfo;
import com.tencent.mm.modelstat.NetStatStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMPreference;

// Referenced classes of package com.tencent.mm.ui.setting:
//            NetStatPreference

public class SettingsNetStatUI extends MMPreference
{

    public SettingsNetStatUI()
    {
    }

    static void a(SettingsNetStatUI settingsnetstatui)
    {
        settingsnetstatui.o();
    }

    private void o()
    {
        NetStatInfo netstatinfo = MMCore.f().G().c((int)(b / 0x5265c00L));
        if(netstatinfo == null)
            netstatinfo = new NetStatInfo();
        b = MMCore.f().G().b();
        Preference preference = a.a("settings_netstat_info");
        Object aobj[] = new Object[1];
        aobj[0] = "";
        String s = DateFormat.format(getString(0x7f0a0081, aobj), b).toString();
        Object aobj1[] = new Object[1];
        aobj1[0] = s;
        preference.setTitle(getString(0x7f0a01eb, aobj1));
        a.a("settings_netstat_mobile").setSummary(Util.a(this, netstatinfo.z() + netstatinfo.n()));
        a.a("settings_netstat_wifi").setSummary(Util.a(this, netstatinfo.A() + netstatinfo.o()));
        ((NetStatPreference)a.a("settings_netstat_mobile_detail")).a(false);
        ((NetStatPreference)a.a("settings_netstat_wifi_detail")).a(true);
        a.notifyDataSetChanged();
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        return false;
    }

    protected final boolean b()
    {
        return false;
    }

    public final int d_()
    {
        return 0x7f050025;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a01ee);
        MMCore.f().G().a();
        a = q();
        b = MMCore.f().G().b();
        Preference preference = a.a("settings_netstat_info");
        Object aobj[] = new Object[1];
        aobj[0] = "";
        String s = DateFormat.format(getString(0x7f0a0081, aobj), b).toString();
        Object aobj1[] = new Object[1];
        aobj1[0] = s;
        preference.setTitle(getString(0x7f0a01eb, aobj1));
        b(new _cls1());
        a(getString(0x7f0a01ef), new _cls2());
    }

    public void onResume()
    {
        super.onResume();
        o();
    }

    private IPreferenceScreen a;
    private long b;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsNetStatUI a;

        _cls1()
        {
            a = SettingsNetStatUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SettingsNetStatUI settingsnetstatui = a;
            MMAlert.a(settingsnetstatui.getParent(), 0x7f0a01f0, 0x7f0a01ed, settingsnetstatui. new _cls3(), settingsnetstatui. new _cls4());
        }

        private SettingsNetStatUI a;

        _cls2()
        {
            a = SettingsNetStatUI.this;
            super();
        }

        private class _cls3
            implements android.content.DialogInterface.OnClickListener
        {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MMCore.f().G().b((int)(Util.f() / 0x5265c00L));
                SettingsNetStatUI.a(a);
            }

            private SettingsNetStatUI a;

            _cls3()
            {
                a = SettingsNetStatUI.this;
                super();
            }
        }


        private class _cls4
            implements android.content.DialogInterface.OnClickListener
        {

            public void onClick(DialogInterface dialoginterface, int i)
            {
            }

            private SettingsNetStatUI a;

            _cls4()
            {
                a = SettingsNetStatUI.this;
                super();
            }
        }

    }

}

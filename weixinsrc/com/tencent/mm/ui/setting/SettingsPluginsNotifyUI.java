// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMPreference;

public class SettingsPluginsNotifyUI extends MMPreference
{

    public SettingsPluginsNotifyUI()
    {
    }

    private void h(int i)
    {
        b = i;
        if(b == 1 || b == 0)
        {
            MMCore.f().f().a(8200, Boolean.valueOf(true));
            if(b == 1)
            {
                MMCore.f().f().a(8201, Integer.valueOf(22));
                MMCore.f().f().a(8208, Integer.valueOf(8));
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModDisturbSetting(true, 22, 8));
            } else
            {
                MMCore.f().f().a(8201, Integer.valueOf(0));
                MMCore.f().f().a(8208, Integer.valueOf(0));
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModDisturbSetting(true, 0, 0));
            }
        } else
        {
            MMCore.f().f().a(8200, Boolean.valueOf(false));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModDisturbSetting());
        }
        MMCore.g().b(new NetSceneSync(5));
        o();
    }

    private void o()
    {
        a.a();
        Preference preference = new Preference(this);
        preference.setTitle(0x7f0a01df);
        preference.setKey("settings_plugings_disturb_on");
        preference.setLayoutResource(0x7f030076);
        Preference preference1;
        Preference preference2;
        Preference preference3;
        if(b == 0)
            preference.setWidgetLayoutResource(0x7f03008d);
        else
            preference.setWidgetLayoutResource(0x7f03008e);
        a.a(preference);
        preference1 = new Preference(this);
        preference1.setTitle(0x7f0a01e0);
        preference1.setKey("settings_plugings_disturb_on_night");
        preference1.setLayoutResource(0x7f030076);
        if(b == 1)
            preference1.setWidgetLayoutResource(0x7f03008d);
        else
            preference1.setWidgetLayoutResource(0x7f03008e);
        a.a(preference1);
        preference2 = new Preference(this);
        preference2.setTitle(0x7f0a01e1);
        preference2.setKey("settings_plugings_disturb_off");
        preference2.setLayoutResource(0x7f030076);
        if(b == 2)
            preference2.setWidgetLayoutResource(0x7f03008d);
        else
            preference2.setWidgetLayoutResource(0x7f03008e);
        a.a(preference2);
        preference3 = new Preference(this);
        preference3.setTitle(0x7f0a01e2);
        preference3.setLayoutResource(0x7f030089);
        a.a(preference3);
        a.notifyDataSetChanged();
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        if(s.equals("settings_plugings_disturb_on"))
            h(0);
        if(s.equals("settings_plugings_disturb_on_night"))
            h(1);
        if(s.equals("settings_plugings_disturb_off"))
            h(2);
        return false;
    }

    public final int d_()
    {
        return -1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Boolean boolean1 = Boolean.valueOf(ConfigStorageLogic.k());
        int i = ConfigStorageLogic.o();
        int j = ConfigStorageLogic.p();
        if(boolean1.booleanValue())
        {
            int k;
            if(i == j)
                k = 0;
            else
                k = 1;
            b = k;
        } else
        {
            b = 2;
        }
        Log.d("ui.settings.SettingsPlugingsNotify", (new StringBuilder()).append(boolean1).append("st ").append(i).append(" ed ").append(j).append("  state ").append(b).toString());
        b = b;
        a = q();
        d(0x7f0a01de);
        b(new _cls1());
    }

    public void onResume()
    {
        super.onResume();
        o();
    }

    private IPreferenceScreen a;
    private int b;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsPluginsNotifyUI a;

        _cls1()
        {
            a = SettingsPluginsNotifyUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMPreference;

// Referenced classes of package com.tencent.mm.ui.setting:
//            SettingsUIGroup, SettingsActiveTimeUI, SettingsPluginsNotifyUI

public class SettingsNotificationUI extends MMPreference
{

    public SettingsNotificationUI()
    {
    }

    private boolean c(boolean flag)
    {
        a.a("settings_sound").setEnabled(flag);
        a.a("settings_shake").setEnabled(flag);
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = true;
        s = preference.getKey();
        Log.c("MicroMsg.SettingsNotificationUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        if(!s.equals("settings_new_msg_notification")) goto _L2; else goto _L1
_L1:
        flag = c(((CheckBoxPreference)preference).isChecked());
_L4:
        return flag;
_L2:
        if(!s.equals("settings_sound"))
            if(s.equals("settings_shake"))
                Util.a(this, b.getBoolean("settings_shake", false));
            else
            if(!s.equals("settings_fully_exit"))
                if(s.equals("settings_active_time"))
                {
                    SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsActiveTimeUI));
                } else
                {
                    if(s.equals("settings_plugings_notify"))
                        SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsPluginsNotifyUI));
                    flag = false;
                }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int d_()
    {
        return 0x7f050026;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a01d7);
        a = q();
        b = getSharedPreferences("com.tencent.mm_preferences", 0);
        CheckBoxPreference checkboxpreference = (CheckBoxPreference)a.a("settings_new_msg_notification");
        if(b.getBoolean(checkboxpreference.getKey(), true))
        {
            b.edit().putBoolean(checkboxpreference.getKey(), true).commit();
            checkboxpreference.setChecked(true);
        }
        c(checkboxpreference.isChecked());
        CheckBoxPreference checkboxpreference1 = (CheckBoxPreference)a.a("settings_sound");
        if(b.getBoolean(checkboxpreference1.getKey(), true))
        {
            b.edit().putBoolean(checkboxpreference1.getKey(), true).commit();
            checkboxpreference1.setChecked(true);
        }
        CheckBoxPreference checkboxpreference2 = (CheckBoxPreference)a.a("settings_shake");
        if(b.getBoolean(checkboxpreference2.getKey(), true))
        {
            b.edit().putBoolean(checkboxpreference2.getKey(), true).commit();
            checkboxpreference2.setChecked(true);
        }
        b(new _cls1());
    }

    public void onResume()
    {
        super.onResume();
        int i = b.getInt("settings_active_begin_time_hour", 8);
        int j = b.getInt("settings_active_begin_time_min", 0);
        int k = b.getInt("settings_active_end_time_hour", 0);
        int l = b.getInt("settings_active_end_time_min", 0);
        if(i == k && j == l)
            b.edit().putBoolean("settings_active_time_full", true).commit();
        a.notifyDataSetChanged();
    }

    private IPreferenceScreen a;
    private SharedPreferences b;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsNotificationUI a;

        _cls1()
        {
            a = SettingsNotificationUI.this;
            super();
        }
    }

}

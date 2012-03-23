// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.*;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.LocalAccInfo;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;
import java.util.Locale;

// Referenced classes of package com.tencent.mm.ui.setting:
//            SettingsUIGroup, SettingsNotificationUI

public class SettingsAboutSystemUI extends MMPreference
{

    public SettingsAboutSystemUI()
    {
    }

    static IPreferenceScreen a(SettingsAboutSystemUI settingsaboutsystemui)
    {
        return settingsaboutsystemui.a;
    }

    static void a(SettingsAboutSystemUI settingsaboutsystemui, String s, Locale locale)
    {
        Intent intent;
        if(settingsaboutsystemui.getSharedPreferences("com.tencent.mm_preferences", 0).edit().putString("language_key", s).commit())
        {
            SystemProperty.a("language_key", s);
            Log.b("MicroMsg.LocaleUtil", (new StringBuilder()).append("save application lang as:").append(s).toString());
        } else
        {
            Log.a("MicroMsg.LocaleUtil", "saving application lang failed");
        }
        LocaleUtil.a(settingsaboutsystemui, locale);
        if(AddressUIGroup.a != null)
            AddressUIGroup.a.finish();
        if(SettingsUIGroup.a != null)
            SettingsUIGroup.a.finish();
        if(FindFriendUIGroup.a != null)
            FindFriendUIGroup.a.finish();
        if(MainTabUI.a() != null)
            MainTabUI.a().finish();
        MMCore.o().a("", MMCore.o().a());
        intent = new Intent(settingsaboutsystemui, com/tencent/mm/ui/MainTabUI);
        intent.addFlags(0x4000000);
        settingsaboutsystemui.c().startActivity(intent);
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = true;
        s = preference.getKey();
        if(!s.equals("settings_notification_preference")) goto _L2; else goto _L1
_L1:
        SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsNotificationUI));
_L4:
        return flag;
_L2:
        if(s.equals("settings_landscape_mode"))
        {
            if(r().getBoolean("settings_landscape_mode", false))
                setRequestedOrientation(-1);
            else
                setRequestedOrientation(flag);
        } else
        if(s.equals("settings_voicerecorder_mode"))
        {
            if(!r().getBoolean("settings_voicerecorder_mode", flag))
                MMAlert.a(getParent(), 0x7f0a01ea, 0x7f0a0010, new _cls3(), new _cls4());
        } else
        if(s.equals("settings_voice_play_mode"))
        {
            boolean flag1 = r().getBoolean("settings_voice_play_mode", false);
            MMCore.f().f().a(26, Boolean.valueOf(flag1));
        } else
        if(s.equals("settings_language"))
        {
            String as[] = getResources().getStringArray(0x7f060006);
            MMAlert.a(getParent(), getString(0x7f0a01e6), as, "", new _cls2());
        } else
        {
            flag = false;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int d_()
    {
        return 0x7f05002a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a01b6);
        a = q();
        b(new _cls1());
    }

    protected void onResume()
    {
        super.onResume();
        CheckBoxPreference checkboxpreference = (CheckBoxPreference)a.a("settings_voice_play_mode");
        Boolean boolean1 = (Boolean)MMCore.f().f().a(26);
        if(boolean1 == null)
            boolean1 = Boolean.valueOf(false);
        checkboxpreference.setChecked(boolean1.booleanValue());
    }

    private IPreferenceScreen a;

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private SettingsAboutSystemUI a;

        _cls3()
        {
            a = SettingsAboutSystemUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.r().edit().putBoolean("settings_voicerecorder_mode", true).commit();
            ((CheckBoxPreference)SettingsAboutSystemUI.a(a).a("settings_voicerecorder_mode")).setChecked(true);
            SettingsAboutSystemUI.a(a).notifyDataSetChanged();
        }

        private SettingsAboutSystemUI a;

        _cls4()
        {
            a = SettingsAboutSystemUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int i)
        {
            i;
            JVM INSTR tableswitch 0 3: default 32
        //                       0 33
        //                       1 48
        //                       2 63
        //                       3 78;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return;
_L2:
            SettingsAboutSystemUI.a(a, "zh_CN", Locale.CHINA);
            continue; /* Loop/switch isn't completed */
_L3:
            SettingsAboutSystemUI.a(a, "zh_TW", Locale.TAIWAN);
            continue; /* Loop/switch isn't completed */
_L4:
            SettingsAboutSystemUI.a(a, "en", Locale.ENGLISH);
            continue; /* Loop/switch isn't completed */
_L5:
            SettingsAboutSystemUI.a(a, "language_default", Locale.getDefault());
            if(true) goto _L1; else goto _L6
_L6:
        }

        private SettingsAboutSystemUI a;

        _cls2()
        {
            a = SettingsAboutSystemUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsAboutSystemUI a;

        _cls1()
        {
            a = SettingsAboutSystemUI.this;
            super();
        }
    }

}

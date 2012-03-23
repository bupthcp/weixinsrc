// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMPreference;

public class SettingsActiveTimeUI extends MMPreference
{

    public SettingsActiveTimeUI()
    {
        g = false;
    }

    static int a(SettingsActiveTimeUI settingsactivetimeui, int k)
    {
        settingsactivetimeui.c = k;
        return k;
    }

    static boolean a(SettingsActiveTimeUI settingsactivetimeui)
    {
        return settingsactivetimeui.g;
    }

    static int b(SettingsActiveTimeUI settingsactivetimeui)
    {
        return settingsactivetimeui.c;
    }

    static int b(SettingsActiveTimeUI settingsactivetimeui, int k)
    {
        settingsactivetimeui.d = k;
        return k;
    }

    static int c(SettingsActiveTimeUI settingsactivetimeui, int k)
    {
        settingsactivetimeui.e = k;
        return k;
    }

    static SharedPreferences c(SettingsActiveTimeUI settingsactivetimeui)
    {
        return settingsactivetimeui.b;
    }

    static int d(SettingsActiveTimeUI settingsactivetimeui)
    {
        return settingsactivetimeui.d;
    }

    static int d(SettingsActiveTimeUI settingsactivetimeui, int k)
    {
        settingsactivetimeui.f = k;
        return k;
    }

    static int e(SettingsActiveTimeUI settingsactivetimeui)
    {
        return settingsactivetimeui.e;
    }

    static int f(SettingsActiveTimeUI settingsactivetimeui)
    {
        return settingsactivetimeui.f;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag = true;
        if(preference.getKey().equals("settings_active_begin_time"))
        {
            g = flag;
            showDialog(flag);
        } else
        if(preference.getKey().equals("settings_active_end_time"))
        {
            g = false;
            showDialog(flag);
        } else
        {
            if(preference.getKey().equals("settings_active_time_full"))
                if(Boolean.valueOf(b.getBoolean("settings_active_time_full", flag)).booleanValue())
                {
                    i.setEnabled(false);
                    h.setEnabled(false);
                } else
                {
                    i.setEnabled(flag);
                    h.setEnabled(flag);
                }
            flag = false;
        }
        return flag;
    }

    public final int d_()
    {
        return 0x7f050024;
    }

    protected final void o()
    {
        d(0x7f0a01db);
        a = q();
        b = getSharedPreferences("com.tencent.mm_preferences", 0);
        i = a.a("settings_active_begin_time");
        c = b.getInt("settings_active_begin_time_hour", 8);
        d = b.getInt("settings_active_begin_time_min", 0);
        i.setSummary(Util.a(this, c, d));
        h = a.a("settings_active_end_time");
        e = b.getInt("settings_active_end_time_hour", 23);
        f = b.getInt("settings_active_end_time_min", 0);
        h.setSummary(Util.a(this, e, f));
        CheckBoxPreference checkboxpreference = (CheckBoxPreference)a.a("settings_active_time_full");
        boolean flag = b.getBoolean("settings_active_time_full", true);
        if(c == e && d == f)
            flag = true;
        checkboxpreference.setChecked(flag);
        if(flag)
        {
            i.setEnabled(false);
            h.setEnabled(false);
        } else
        {
            i.setEnabled(true);
            h.setEnabled(true);
        }
        a.notifyDataSetChanged();
        b(new _cls1());
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        o();
    }

    protected Dialog onCreateDialog(int k)
    {
        k;
        JVM INSTR tableswitch 1 1: default 20
    //                   1 24;
           goto _L1 _L2
_L1:
        Object obj = null;
_L4:
        return ((Dialog) (obj));
_L2:
        if(g)
            obj = new TimePickerDialog(getParent(), j, c, d, false);
        else
            obj = new TimePickerDialog(getParent(), j, e, f, false);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private IPreferenceScreen a;
    private SharedPreferences b;
    private int c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private Preference h;
    private Preference i;
    private final android.app.TimePickerDialog.OnTimeSetListener j = new _cls2();

    private class _cls2
        implements android.app.TimePickerDialog.OnTimeSetListener
    {

        public void onTimeSet(TimePicker timepicker, int k, int l)
        {
            if(SettingsActiveTimeUI.a(a))
            {
                SettingsActiveTimeUI.a(a, k);
                SettingsActiveTimeUI.b(a, l);
                SettingsActiveTimeUI.c(a).edit().putInt("settings_active_begin_time_hour", SettingsActiveTimeUI.b(a)).commit();
                SettingsActiveTimeUI.c(a).edit().putInt("settings_active_begin_time_min", SettingsActiveTimeUI.d(a)).commit();
            } else
            {
                SettingsActiveTimeUI.c(a, k);
                SettingsActiveTimeUI.d(a, l);
                SettingsActiveTimeUI.c(a).edit().putInt("settings_active_end_time_hour", SettingsActiveTimeUI.e(a)).commit();
                SettingsActiveTimeUI.c(a).edit().putInt("settings_active_end_time_min", SettingsActiveTimeUI.f(a)).commit();
                SettingsActiveTimeUI.c(a).edit().commit();
            }
            a.o();
        }

        private SettingsActiveTimeUI a;

        _cls2()
        {
            a = SettingsActiveTimeUI.this;
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

        private SettingsActiveTimeUI a;

        _cls1()
        {
            a = SettingsActiveTimeUI.this;
            super();
        }
    }

}

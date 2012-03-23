// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.*;
import java.util.*;

public class SettingsAboutPrivacyUI extends MMPreference
{

    public SettingsAboutPrivacyUI()
    {
        d = new HashMap();
    }

    static boolean a(SettingsAboutPrivacyUI settingsaboutprivacyui, int i, int j)
    {
        return settingsaboutprivacyui.a(true, i, j);
    }

    private boolean a(boolean flag, int i, int j)
    {
        Log.d("MicroMsg.SettingsAboutPrivacyUI", (new StringBuilder()).append("switch change : open = ").append(flag).append(" item value = ").append(i).append(" functionId = ").append(j).toString());
        int k;
        if(flag)
            c = i | c;
        else
            c = c & ~i;
        if(flag)
            k = 1;
        else
            k = 2;
        d.put(Integer.valueOf(j), Integer.valueOf(k));
        return true;
    }

    private boolean h(int i)
    {
        boolean flag;
        if((i & c) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private static void o()
    {
        MMCore.g().b(new NetSceneSync(5));
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag = true;
        String s = preference.getKey();
        Log.c("MicroMsg.SettingsAboutPrivacyUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        if(s.equals("settings_need_verify"))
            flag = a(b.getBoolean("settings_need_verify", false), 32, 4);
        else
        if(s.equals("settings_recommend_to_QQfriends"))
        {
            if(b.getBoolean("settings_recommend_to_QQfriends", false))
                flag = false;
            flag = a(flag, 16, 3);
        } else
        if(s.equals("settings_find_me_by_QQ"))
        {
            if(b.getBoolean("settings_find_me_by_QQ", false))
                flag = false;
            flag = a(flag, 8, 2);
        } else
        if(s.equals("settings_find_me_by_mobile"))
        {
            if(b.getBoolean("settings_find_me_by_mobile", false))
                flag = false;
            flag = a(flag, 512, 8);
        } else
        if(s.equals("settings_add_friend_by_reply"))
        {
            if(b.getBoolean("settings_add_friend_by_reply", false))
                flag = false;
            flag = a(flag, 1024, 9);
        } else
        if(s.equals("settings_weixin_qq_online"))
        {
            CheckBoxPreference checkboxpreference = (CheckBoxPreference)preference;
            if(checkboxpreference.isChecked())
            {
                if(h(64))
                    a(flag, 8192, 12);
                else
                    MMAlert.a(c(), 0x7f0a0277, 0x7f0a0010, new _cls2(), new _cls3(checkboxpreference));
            } else
            {
                a(false, 8192, 12);
            }
        } else
        {
            flag = false;
        }
        return flag;
    }

    public final int d_()
    {
        return 0x7f050022;
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag = true;
        super.onCreate(bundle);
        d(0x7f0a01ae);
        a = q();
        b = getSharedPreferences("com.tencent.mm_preferences", 0);
        c = ConfigStorageLogic.d();
        Log.e("MicroMsg.SettingsAboutPrivacyUI", (new StringBuilder()).append("init function status: ").append(Integer.toBinaryString(c)).toString());
        ((CheckBoxPreference)a.a("settings_need_verify")).setChecked(h(32));
        Integer integer = (Integer)MMCore.f().f().a(9);
        CheckBoxPreference checkboxpreference = (CheckBoxPreference)a.a("settings_recommend_to_QQfriends");
        CheckBoxPreference checkboxpreference1 = (CheckBoxPreference)a.a("settings_find_me_by_QQ");
        CheckBoxPreference checkboxpreference2 = (CheckBoxPreference)a.a("settings_weixin_qq_online");
        CheckBoxPreference checkboxpreference3;
        if(integer != null && integer.intValue() != 0)
        {
            String s;
            CheckBoxPreference checkboxpreference4;
            boolean flag2;
            boolean flag3;
            if(!h(16))
                flag2 = flag;
            else
                flag2 = false;
            checkboxpreference.setChecked(flag2);
            if(!h(8))
                flag3 = flag;
            else
                flag3 = false;
            checkboxpreference1.setChecked(flag3);
            checkboxpreference2.setChecked(h(8192));
        } else
        {
            a.b(checkboxpreference);
            a.b(checkboxpreference1);
            a.b(checkboxpreference2);
        }
        s = (String)MMCore.f().f().a(6);
        checkboxpreference3 = (CheckBoxPreference)a.a("settings_find_me_by_mobile");
        if(s != null && s.length() > 0)
        {
            boolean flag1;
            if(!h(512))
                flag1 = flag;
            else
                flag1 = false;
            checkboxpreference3.setChecked(flag1);
        } else
        {
            a.b(checkboxpreference3);
        }
        checkboxpreference4 = (CheckBoxPreference)a.a("settings_add_friend_by_reply");
        if(h(1024))
            flag = false;
        checkboxpreference4.setChecked(flag);
        b(new _cls1());
    }

    public void onDestroy()
    {
        o();
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        MMCore.f().f().a(7, Integer.valueOf(c));
        int i;
        int j;
        for(Iterator iterator = d.entrySet().iterator(); iterator.hasNext(); Log.d("MicroMsg.SettingsAboutPrivacyUI", (new StringBuilder()).append("switch  ").append(i).append(" ").append(j).toString()))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            i = ((Integer)entry.getKey()).intValue();
            j = ((Integer)entry.getValue()).intValue();
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(i, j));
        }

        o();
        d.clear();
    }

    private IPreferenceScreen a;
    private SharedPreferences b;
    private int c;
    private HashMap d;

    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            SettingsAboutPrivacyUI.a(a, 8192, 12);
            SettingsAboutPrivacyUI.a(a, 64, 5);
        }

        private SettingsAboutPrivacyUI a;

        _cls2()
        {
            a = SettingsAboutPrivacyUI.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.setChecked(false);
            b.q().notifyDataSetChanged();
        }

        private CheckBoxPreference a;
        private SettingsAboutPrivacyUI b;

        _cls3(CheckBoxPreference checkboxpreference)
        {
            b = SettingsAboutPrivacyUI.this;
            a = checkboxpreference;
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

        private SettingsAboutPrivacyUI a;

        _cls1()
        {
            a = SettingsAboutPrivacyUI.this;
            super();
        }
    }

}

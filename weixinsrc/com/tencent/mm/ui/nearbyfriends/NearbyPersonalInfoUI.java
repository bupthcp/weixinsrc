// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.nearbyfriends;

import android.os.Bundle;
import android.preference.Preference;
import android.text.Html;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.setting.EditSignatureUI;
import com.tencent.mm.ui.tools.CitySelectUI;

public class NearbyPersonalInfoUI extends MMPreference
{

    public NearbyPersonalInfoUI()
    {
        b = -1;
    }

    static int a(NearbyPersonalInfoUI nearbypersonalinfoui)
    {
        return nearbypersonalinfoui.b;
    }

    static int a(NearbyPersonalInfoUI nearbypersonalinfoui, int i)
    {
        nearbypersonalinfoui.b = i;
        return i;
    }

    static void b(NearbyPersonalInfoUI nearbypersonalinfoui)
    {
        MMAlert.a(nearbypersonalinfoui.c(), 0x7f0a03bb, 0x7f0a0010, nearbypersonalinfoui. new _cls4());
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag = true;
        String s = preference.getKey();
        if("settings_district".equals(s))
            a(com/tencent/mm/ui/tools/CitySelectUI);
        else
        if("settings_signature".equals(s))
            a(com/tencent/mm/ui/setting/EditSignatureUI);
        else
            flag = false;
        return flag;
    }

    public final int d_()
    {
        return 0x7f05001c;
    }

    public void onCreate(Bundle bundle)
    {
        int i;
        ChoicePreference choicepreference;
        super.onCreate(bundle);
        d(0x7f0a03b9);
        a = q();
        ((KeyValuePreference)a.a("settings_signature")).a(false);
        b(new _cls1());
        a(getString(0x7f0a001a), new _cls2());
        ((ChoicePreference)a.a("settings_sex")).setOnPreferenceChangeListener(new _cls3());
        i = Util.a((Integer)MMCore.f().f().a(12290), 0);
        choicepreference = (ChoicePreference)a.a("settings_sex");
        choicepreference.setTitle(Html.fromHtml((new StringBuilder()).append(getString(0x7f0a01c9)).append("<font color='red'>*</font>").toString()));
        i;
        JVM INSTR tableswitch 1 2: default 188
    //                   1 196
    //                   2 206;
           goto _L1 _L2 _L3
_L1:
        choicepreference.a("unknown");
_L5:
        return;
_L2:
        choicepreference.a("male");
        continue; /* Loop/switch isn't completed */
_L3:
        choicepreference.a("female");
        if(true) goto _L5; else goto _L4
_L4:
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onResume()
    {
        String s = Util.h((String)MMCore.f().f().a(12293));
        String s1 = Util.h((String)MMCore.f().f().a(12292));
        Preference preference = a.a("settings_district");
        preference.setSummary((new StringBuilder()).append(ContactStorageLogic.L(s)).append(" ").append(s1).toString());
        preference.setTitle(Html.fromHtml((new StringBuilder()).append(getString(0x7f0a01ca)).append("<font color='red'>*</font>").toString()));
        Preference preference1 = a.a("settings_signature");
        String s2 = Util.h((String)MMCore.f().f().a(12291));
        if(s2.length() <= 0)
            s2 = getString(0x7f0a0195);
        preference1.setSummary(SpanUtil.a(this, s2, -2));
        super.onResume();
    }

    private IPreferenceScreen a;
    private int b;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private NearbyPersonalInfoUI a;

        _cls4()
        {
            a = NearbyPersonalInfoUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private NearbyPersonalInfoUI a;

        _cls1()
        {
            a = NearbyPersonalInfoUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(NearbyPersonalInfoUI.a(a) != -1)
            {
                SelfPersonCard selfpersoncard2 = SelfPersonCard.a();
                selfpersoncard2.a(NearbyPersonalInfoUI.a(a));
                SelfPersonCard.a(selfpersoncard2);
            }
            SelfPersonCard selfpersoncard = SelfPersonCard.b();
            if(selfpersoncard == null)
            {
                NearbyPersonalInfoUI.b(a);
            } else
            {
                String s = Util.h(selfpersoncard.f());
                String s1 = Util.h(selfpersoncard.e());
                int i = selfpersoncard.d();
                if(s.equals("") || s1.equals("") || i == 0)
                {
                    NearbyPersonalInfoUI.b(a);
                } else
                {
                    a.startActivity(new Intent(a, com/tencent/mm/ui/nearbyfriends/NearbyFriendsUI));
                    SelfPersonCard selfpersoncard1 = SelfPersonCard.a();
                    if(i != -1)
                        selfpersoncard1.a(i);
                    MMCore.f().g().a(SelfPersonCard.a(selfpersoncard1));
                    MMCore.g().b(new NetSceneSync(5));
                    a.finish();
                }
            }
        }

        private NearbyPersonalInfoUI a;

        _cls2()
        {
            a = NearbyPersonalInfoUI.this;
            super();
        }
    }


    private class _cls3
        implements android.preference.Preference.OnPreferenceChangeListener
    {

        public boolean onPreferenceChange(Preference preference, Object obj)
        {
            String s = (String)obj;
            if(!"male".equalsIgnoreCase(s)) goto _L2; else goto _L1
_L1:
            NearbyPersonalInfoUI.a(a, 1);
_L4:
            return false;
_L2:
            if("female".equalsIgnoreCase(s))
                NearbyPersonalInfoUI.a(a, 2);
            if(true) goto _L4; else goto _L3
_L3:
        }

        private NearbyPersonalInfoUI a;

        _cls3()
        {
            a = NearbyPersonalInfoUI.this;
            super();
        }
    }

}

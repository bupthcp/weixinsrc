// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Intent;
import android.preference.Preference;
import android.text.Html;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.setting.EditSignatureUI;
import com.tencent.mm.ui.tools.CitySelectUI;

public class BottleSettingLogic
{

    public BottleSettingLogic(MMActivity mmactivity, IPreferenceScreen ipreferencescreen)
    {
        a = mmactivity;
        b = ipreferencescreen;
        ChoicePreference choicepreference = (ChoicePreference)b.a("settings_sex");
        choicepreference.setOnPreferenceChangeListener(new _cls1());
        choicepreference.setTitle(Html.fromHtml((new StringBuilder()).append(a.getString(0x7f0a01c9)).append("<font color='red'>*</font>").toString()));
        ((KeyValuePreference)b.a("settings_district")).setTitle(Html.fromHtml((new StringBuilder()).append(a.getString(0x7f0a01ca)).append("<font color='red'>*</font>").toString()));
    }

    public static void a()
    {
        SelfPersonCard selfpersoncard = SelfPersonCard.a();
        MMCore.f().g().a(SelfPersonCard.a(selfpersoncard));
        MMCore.g().b(new NetSceneSync(5));
    }

    public final void b()
    {
        int i;
        ChoicePreference choicepreference;
        i = Util.a((Integer)MMCore.f().f().a(12290), 0);
        choicepreference = (ChoicePreference)b.a("settings_sex");
        i;
        JVM INSTR tableswitch 1 2: default 60
    //                   1 237
    //                   2 246;
           goto _L1 _L2 _L3
_L1:
        choicepreference.a("unknown");
_L5:
        String s = Util.h((String)MMCore.f().f().a(12293));
        String s1 = Util.h((String)MMCore.f().f().a(12292));
        b.a("settings_district").setSummary((new StringBuilder()).append(ContactStorageLogic.L(s)).append(" ").append(s1).toString());
        KeyValuePreference keyvaluepreference = (KeyValuePreference)b.a("settings_signature");
        keyvaluepreference.a(false);
        String s2 = Util.h((String)MMCore.f().f().a(12291));
        MMActivity mmactivity = a;
        if(s2.length() <= 0)
            s2 = a.getString(0x7f0a0195);
        keyvaluepreference.setSummary(SpanUtil.a(mmactivity, s2, -2));
        b.notifyDataSetChanged();
        return;
_L2:
        choicepreference.a("male");
        continue; /* Loop/switch isn't completed */
_L3:
        choicepreference.a("female");
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final boolean c()
    {
        Intent intent = new Intent(a, com/tencent/mm/ui/setting/EditSignatureUI);
        intent.putExtra("persist_signature", false);
        a.startActivity(intent);
        return true;
    }

    public final boolean d()
    {
        a.startActivity(new Intent(a, com/tencent/mm/ui/tools/CitySelectUI));
        return true;
    }

    private MMActivity a;
    private IPreferenceScreen b;

    private class _cls1
        implements android.preference.Preference.OnPreferenceChangeListener
    {

        public boolean onPreferenceChange(Preference preference, Object obj)
        {
            String s;
            byte byte0;
            s = (String)obj;
            byte0 = -1;
            if(!"male".equalsIgnoreCase(s)) goto _L2; else goto _L1
_L1:
            byte0 = 1;
_L4:
            if(byte0 > 0)
                MMCore.f().f().a(12290, Integer.valueOf(byte0));
            return false;
_L2:
            if("female".equalsIgnoreCase(s))
                byte0 = 2;
            if(true) goto _L4; else goto _L3
_L3:
        }

        private BottleSettingLogic a;

        _cls1()
        {
            a = BottleSettingLogic.this;
            super();
        }
    }

}

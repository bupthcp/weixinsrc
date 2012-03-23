// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.preference.Preference;
import b.a.e;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.*;
import com.tencent.mm.modelgetvuserinfo.SceneGetVUserInfo;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindqq.BindQQUI;
import com.tencent.mm.ui.facebook.FacebookAuthUI;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.setting:
//            SettingsAliasUI, SettingsModifyEmailAddrUI, SelfVuserPreference

public class SettingsAccountInfoUI extends MMPreference
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public SettingsAccountInfoUI()
    {
    }

    private void o()
    {
        Preference preference = a.a("settings_email_addr");
        Assert.assertNotNull(preference);
        Integer integer = (Integer)MMCore.f().f().a(7);
        if(integer != null && (2 & integer.intValue()) != 0)
            preference.setSummary(0x7f0a01d2);
        else
            preference.setSummary(0x7f0a01d1);
    }

    private void t()
    {
        Preference preference = a.a("settings_username");
        String s = ConfigStorageLogic.c();
        if(Util.i(s))
            preference.setSummary(ConfigStorageLogic.b());
        else
            preference.setSummary(s);
    }

    private void u()
    {
        Preference preference = a.a("settings_facebook");
        if(preference == null)
            Log.a("MicroMsg.SettingsAccountInfoUI", "updateFacebook Preference null");
        else
        if(!ConfigStorageLogic.l())
            a.b(preference);
        else
        if(!ConfigStorageLogic.m())
            preference.setSummary(getString(0x7f0a01cd));
        else
            preference.setSummary((String)MMCore.f().f().a(0x10122));
    }

    private void v()
    {
        Preference preference = a.a("settings_mobile");
        if(preference == null)
        {
            Log.a("MicroMsg.SettingsAccountInfoUI", "updateMobile Preference null");
        } else
        {
            String s = (String)MMCore.f().f().a(6);
            Log.d("MicroMsg.SettingsAccountInfoUI", (new StringBuilder()).append("mobile :").append(s).toString());
            if(s == null || s.length() <= 0)
                preference.setSummary(getString(0x7f0a01cd));
            else
                preference.setSummary(s);
        }
    }

    private void w()
    {
        Preference preference = a.a("settings_uin");
        if(preference == null)
        {
            Log.a("MicroMsg.SettingsAccountInfoUI", "updateUin Preference null");
        } else
        {
            int i = ((Integer)MMCore.f().f().a(9)).intValue();
            if(i == 0)
                preference.setSummary(0x7f0a01cd);
            else
                preference.setSummary((new StringBuilder()).append("").append(new UIN(i)).toString());
        }
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = false;
        s = preference.getKey();
        Log.c("MicroMsg.SettingsAccountInfoUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(s.equals("settings_facebook"))
            a(com/tencent/mm/ui/facebook/FacebookAuthUI);
        if(s.equals("settings_username") && Util.i(ConfigStorageLogic.c()))
            a(com/tencent/mm/ui/setting/SettingsAliasUI);
        if(s.equals("settings_email_addr"))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/setting/SettingsModifyEmailAddrUI));
            flag = true;
        } else
        if(s.equals("settings_mobile"))
        {
            MMWizardActivity.a(this, new Intent(this, com/tencent/mm/ui/bindmobile/BindMContactIntroUI));
            flag = true;
        } else
        if(s.equals("settings_uin"))
        {
            MMWizardActivity.a(this, new Intent(this, com/tencent/mm/ui/bindqq/BindQQUI));
            flag = true;
        } else
        if(s.equals("settings_about_vuser_about"))
        {
            Object aobj[] = new Object[1];
            aobj[flag] = LocaleUtil.a();
            String s1 = String.format("http://weixin.qq.com/cgi-bin/readtemplate?check=false&t=weixin_faq_verifyaccount&platform=android&lang=%s", aobj);
            Util.b(c(), s1);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a_(String s)
    {
        t();
        o();
        v();
        w();
        u();
    }

    public final boolean b()
    {
        return true;
    }

    public final int d_()
    {
        return 0x7f050023;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0188);
        a = q();
        b(new _cls1());
        MMCore.f().f().a(this);
    }

    public void onDestroy()
    {
        MMCore.f().f().b(this);
        super.onDestroy();
    }

    protected void onResume()
    {
        t();
        v();
        w();
        o();
        u();
        PluginTextPreference plugintextpreference = (PluginTextPreference)a.a("settings_about_vusertitle");
        SelfVuserPreference selfvuserpreference = (SelfVuserPreference)a.a("settings_about_vuserinfo");
        Preference preference = a.a("settings_about_vuser_about");
        int i = Util.a((Integer)MMCore.f().f().a(0x10201));
        Preference preference1;
        if(i > 0)
        {
            plugintextpreference.a();
            plugintextpreference.b(0x7f0a0265);
            android.graphics.Bitmap bitmap = e.a(SceneGetVUserInfo.a(i), 1.5F);
            selfvuserpreference.a(new BitmapDrawable(getResources(), bitmap));
            selfvuserpreference.a((String)MMCore.f().f().a(0x10202));
        } else
        {
            a.b(plugintextpreference);
            a.b(selfvuserpreference);
            a.b(preference);
        }
        preference1 = a.a("settings_about_domainmail");
        a.b(preference1);
        if(Util.i(ConfigStorageLogic.c()))
            a.a("settings_username").setWidgetLayoutResource(0x7f03008f);
        super.onResume();
    }

    private IPreferenceScreen a;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SettingsAccountInfoUI a;

        _cls1()
        {
            a = SettingsAccountInfoUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.AlertDialog;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.text.Html;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui.setting:
//            DomainMailPreference, SettingsUIGroup, SettingsModifyDomainMailUI, SettingsAddDomainMailUI

public class SettingsAboutDomainMailUI extends MMPreference
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public SettingsAboutDomainMailUI()
    {
        c = null;
    }

    static GroupInfo a(SettingsAboutDomainMailUI settingsaboutdomainmailui)
    {
        return settingsaboutdomainmailui.c;
    }

    static GroupInfo b(SettingsAboutDomainMailUI settingsaboutdomainmailui)
    {
        settingsaboutdomainmailui.c = null;
        return null;
    }

    static AlertDialog c(SettingsAboutDomainMailUI settingsaboutdomainmailui)
    {
        return settingsaboutdomainmailui.d;
    }

    private void o()
    {
        b = GroupInfoLogic.c(getString(0x7f0a0047));
        a.a();
        if(b != null)
        {
            int i = 0;
            while(i < b.size()) 
            {
                DomainMailPreference domainmailpreference = new DomainMailPreference(this);
                GroupInfo groupinfo = (GroupInfo)b.get(i);
                domainmailpreference.setKey((new StringBuilder()).append("settings_domain_list_#").append(i).toString());
                domainmailpreference.setTitle(groupinfo.b());
                domainmailpreference.setLayoutResource(0x7f030076);
                if(groupinfo.e())
                {
                    int j = MMCore.f().h().a(groupinfo.a(), groupinfo.d(), null).getCount();
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(j);
                    domainmailpreference.setSummary(getString(0x7f0a01c3, aobj));
                } else
                {
                    domainmailpreference.setSummary(Html.fromHtml((new StringBuilder()).append("<font color='red'>").append(getString(0x7f0a01d1)).append("</font>").toString()));
                }
                a.a(domainmailpreference);
                i++;
            }
        }
        PreferenceCategory preferencecategory = new PreferenceCategory(this);
        a.a(preferencecategory);
        Preference preference = new Preference(this);
        preference.setKey("settings_add_domainmail");
        preference.setTitle(getString(0x7f0a01c1));
        preference.setLayoutResource(0x7f030001);
        if(b != null && b.size() >= 3)
        {
            preference.setTitle(0x7f0a01c2);
            preference.setEnabled(false);
        }
        a.a(preference);
        if(b == null || b.size() < 3)
        {
            Preference preference1 = new Preference(this);
            preference1.setKey("settings_info_domainmail");
            preference1.setLayoutResource(0x7f030089);
            preference1.setTitle(0x7f0a020d);
            a.a(preference1);
        }
    }

    public final boolean a(Preference preference)
    {
        String s = preference.getKey();
        if(!s.startsWith("settings_domain_list_#")) goto _L2; else goto _L1
_L1:
        int i = Util.a(Integer.valueOf(s.replace("settings_domain_list_#", "")));
        c = (GroupInfo)b.get(i);
        if(c == null || c.a() == null || c.d() == null || !c.e()) goto _L2; else goto _L3
_L3:
        boolean flag;
        if(d == null)
            d = (new android.app.AlertDialog.Builder(getParent())).setTitle(0x7f0a01c4).setItems(0x7f060003, new _cls3()).setNegativeButton(0x7f0a0015, new _cls2()).create();
        d.show();
        flag = true;
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        Log.c("MicroMsg.SettingsDomainMailUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        boolean flag;
        if(s.startsWith("settings_domain_list_#"))
        {
            int i = Util.a(Integer.valueOf(s.replace("settings_domain_list_#", "")));
            Log.c("MicroMsg.SettingsDomainMailUI", (new StringBuilder()).append(" i ").append(i).toString());
            GroupInfo groupinfo = (GroupInfo)b.get(i);
            if(groupinfo != null && groupinfo.a() != null && groupinfo.d() != null)
                if(groupinfo.e())
                {
                    Intent intent = new Intent(this, com/tencent/mm/ui/AddressUI);
                    intent.putExtra("Contact_GroupFilter_Type", groupinfo.a());
                    intent.putExtra("Contact_GroupFilter_Str", groupinfo.d());
                    intent.putExtra("Contact_GroupFilter_DisplayName", groupinfo.c());
                    SettingsUIGroup.a.a(intent);
                } else
                {
                    Intent intent1 = new Intent(this, com/tencent/mm/ui/setting/SettingsModifyDomainMailUI);
                    intent1.putExtra("Settings_DomainMail", groupinfo.b());
                    SettingsUIGroup.a.a(intent1);
                }
            flag = true;
        } else
        if(s.equals("settings_add_domainmail"))
        {
            SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsAddDomainMailUI));
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public final void a_(String s)
    {
        o();
    }

    public final int d_()
    {
        return -1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0199);
        a = q();
        o();
        b(new _cls1());
        MMCore.f().m().a(this);
    }

    public void onDestroy()
    {
        if(MMCore.f().b())
            MMCore.f().m().b(this);
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        o();
    }

    private IPreferenceScreen a;
    private List b;
    private GroupInfo c;
    private AlertDialog d;

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            Intent intent = new Intent(a, com/tencent/mm/ui/AddressUI);
            intent.putExtra("Contact_GroupFilter_Type", SettingsAboutDomainMailUI.a(a).a());
            intent.putExtra("Contact_GroupFilter_Str", SettingsAboutDomainMailUI.a(a).d());
            intent.putExtra("Contact_GroupFilter_DisplayName", SettingsAboutDomainMailUI.a(a).c());
            SettingsAboutDomainMailUI.b(a);
            SettingsUIGroup.a.a(intent);
            SettingsAboutDomainMailUI.c(a).dismiss();
_L4:
            return;
_L2:
            if(i == 1 && SettingsAboutDomainMailUI.a(a) != null)
            {
                DomainEmailLogic.b(SettingsAboutDomainMailUI.a(a).b());
                MMCore.g().b(new NetSceneSync(5));
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private SettingsAboutDomainMailUI a;

        _cls3()
        {
            a = SettingsAboutDomainMailUI.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private SettingsAboutDomainMailUI a;

        _cls2()
        {
            a = SettingsAboutDomainMailUI.this;
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

        private SettingsAboutDomainMailUI a;

        _cls1()
        {
            a = SettingsAboutDomainMailUI.this;
            super();
        }
    }

}

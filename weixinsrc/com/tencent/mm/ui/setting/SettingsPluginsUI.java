// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.contact.ContactInfoUI;
import java.util.*;

public class SettingsPluginsUI extends MMPreference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public SettingsPluginsUI()
    {
        b = false;
        c = false;
        d = false;
        e = false;
        f = false;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = false;
        s = preference.getKey();
        if(s == null || !s.equals("display_in_addr_book")) goto _L2; else goto _L1
_L1:
        boolean flag1 = ((CheckBoxPreference)ipreferencescreen.a(s)).isChecked();
        MMCore.f().f().a(35, Boolean.valueOf(flag1));
        flag = true;
_L4:
        return flag;
_L2:
        if(preference instanceof PluginPreference)
        {
            String s1 = ((PluginPreference)preference).b();
            if("qqmail".equals(s1) && b)
                MMCore.f().f().a(0x85ffec60, Boolean.valueOf(flag));
            if("readerapp".equals(s1) && c)
                MMCore.f().f().a(0x85ffec61, Boolean.valueOf(flag));
            if("blogapp".equals(s1) && d)
                MMCore.f().f().a(0x85ffec62, Boolean.valueOf(flag));
            if("masssendapp".equals(s1) && e)
                MMCore.f().f().a(0x85ffec63, Boolean.valueOf(flag));
            if("facebookapp".equals(s1) && f)
                MMCore.f().f().a(0x85ffec64, Boolean.valueOf(flag));
            c().startActivity((new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", s1));
            flag = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void b(String s)
    {
        if(a != null && s != null)
        {
            PluginPreference pluginpreference = (PluginPreference)a.a((new StringBuilder()).append("settings_plugins_list_#").append(s).toString());
            if(pluginpreference != null)
                pluginpreference.c();
        }
    }

    public final int d_()
    {
        return 0x7f050029;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.f().y().a(this);
        a = q();
        d(0x7f0a019b);
        b(new _cls1());
    }

    public void onDestroy()
    {
        if(MMCore.f().b())
            MMCore.f().y().b(this);
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        Log.e("MicroMsg.SettingsPluginsUI", "on pause");
    }

    public void onResume()
    {
        super.onResume();
        a.a();
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        PluginPreference pluginpreference = new PluginPreference(this);
        PluginPreference pluginpreference3;
        PluginPreference pluginpreference4;
        PluginPreference pluginpreference5;
        PluginPreference pluginpreference6;
        PluginPreference pluginpreference7;
        PluginPreference pluginpreference8;
        PluginPreference pluginpreference9;
        PluginPreference pluginpreference10;
        PluginPreference pluginpreference11;
        PluginPreference pluginpreference12;
        PluginPreference pluginpreference13;
        if(pluginpreference.a("qqmail"))
        {
            pluginpreference.setTitle(pluginpreference.a());
            PluginPreference pluginpreference1;
            PluginTextPreference plugintextpreference;
            Iterator iterator;
            PluginPreference pluginpreference15;
            boolean flag11;
            if((1 & ConfigStorageLogic.f()) == 0)
                flag11 = true;
            else
                flag11 = false;
            if(flag11)
                arraylist.add(pluginpreference);
            else
                arraylist1.add(pluginpreference);
            b = Util.a((Boolean)MMCore.f().f().a(0x85ffec60), false);
            if(b)
            {
                pluginpreference.b(0);
                pluginpreference.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
            } else
            {
                pluginpreference.b(8);
                pluginpreference.a("", -1);
            }
        }
        pluginpreference1 = new PluginPreference(this);
        if(pluginpreference1.a("fmessage"))
        {
            pluginpreference1.setTitle(pluginpreference1.a());
            arraylist.add(pluginpreference1);
        }
        if(ContactStorageLogic.e())
        {
            PluginPreference pluginpreference2 = new PluginPreference(this);
            if(pluginpreference2.a("tmessage"))
            {
                pluginpreference2.setTitle(pluginpreference2.a());
                boolean flag10;
                if((2 & ConfigStorageLogic.f()) == 0)
                    flag10 = true;
                else
                    flag10 = false;
                if(flag10)
                    arraylist.add(pluginpreference2);
                else
                    arraylist1.add(pluginpreference2);
            }
        }
        pluginpreference3 = new PluginPreference(this);
        if(pluginpreference3.a("qmessage"))
        {
            pluginpreference3.setTitle(pluginpreference3.a());
            boolean flag9;
            if((0x20 & ConfigStorageLogic.f()) == 0)
                flag9 = true;
            else
                flag9 = false;
            if(flag9)
                arraylist.add(pluginpreference3);
            else
                arraylist1.add(pluginpreference3);
        }
        pluginpreference4 = new PluginPreference(this);
        if(pluginpreference4.a("qqsync"))
        {
            pluginpreference4.setTitle(pluginpreference4.a());
            if(ConfigStorageLogic.j())
                arraylist.add(pluginpreference4);
            else
                arraylist1.add(pluginpreference4);
        }
        pluginpreference5 = new PluginPreference(this);
        if(pluginpreference5.a("floatbottle"))
        {
            pluginpreference5.setTitle(pluginpreference5.a());
            boolean flag8;
            if((0x40 & ConfigStorageLogic.f()) == 0)
                flag8 = true;
            else
                flag8 = false;
            if(flag8)
                arraylist.add(pluginpreference5);
            else
                arraylist1.add(pluginpreference5);
        }
        pluginpreference6 = new PluginPreference(this);
        if(pluginpreference6.a("lbsapp"))
        {
            pluginpreference6.setTitle(pluginpreference6.a());
            boolean flag7;
            if((0x200 & ConfigStorageLogic.f()) == 0)
                flag7 = true;
            else
                flag7 = false;
            if(flag7)
                arraylist.add(pluginpreference6);
            else
                arraylist1.add(pluginpreference6);
        }
        pluginpreference7 = new PluginPreference(this);
        if(pluginpreference7.a("shakeapp"))
        {
            pluginpreference7.setTitle(pluginpreference7.a());
            boolean flag6;
            if((0x100 & ConfigStorageLogic.f()) == 0)
                flag6 = true;
            else
                flag6 = false;
            if(flag6)
                arraylist.add(pluginpreference7);
            else
                arraylist1.add(pluginpreference7);
        }
        pluginpreference8 = new PluginPreference(this);
        if(pluginpreference8.a("medianote"))
        {
            pluginpreference8.setTitle(pluginpreference8.a());
            boolean flag5;
            if((0x10 & ConfigStorageLogic.f()) == 0)
                flag5 = true;
            else
                flag5 = false;
            if(flag5)
                arraylist.add(pluginpreference8);
            else
                arraylist1.add(pluginpreference8);
        }
        pluginpreference9 = new PluginPreference(this);
        if(pluginpreference9.a("readerapp"))
        {
            pluginpreference9.setTitle(pluginpreference9.a());
            boolean flag4;
            if((0x4000 & ConfigStorageLogic.f()) == 0)
                flag4 = true;
            else
                flag4 = false;
            if(flag4)
                arraylist.add(pluginpreference9);
            else
                arraylist1.add(pluginpreference9);
            c = Util.a((Boolean)MMCore.f().f().a(0x85ffec61), false);
            if(c)
            {
                pluginpreference9.b(0);
                pluginpreference9.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
            } else
            {
                pluginpreference9.b(8);
                pluginpreference9.a("", -1);
            }
        }
        pluginpreference10 = new PluginPreference(this);
        if(pluginpreference10.a("blogapp"))
        {
            pluginpreference10.setTitle(pluginpreference10.a());
            boolean flag3;
            if((0x40000 & ConfigStorageLogic.f()) == 0 && ContactStorageLogic.d())
                flag3 = true;
            else
                flag3 = false;
            if(flag3)
                arraylist.add(pluginpreference10);
            else
                arraylist1.add(pluginpreference10);
            d = Util.a((Boolean)MMCore.f().f().a(0x85ffec62), false);
            if(d)
            {
                pluginpreference10.b(0);
                pluginpreference10.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
            } else
            {
                pluginpreference10.b(8);
                pluginpreference10.a("", -1);
            }
        }
        pluginpreference11 = new PluginPreference(this);
        if(pluginpreference11.a("facebookapp"))
        {
            pluginpreference11.setTitle(pluginpreference11.a());
            boolean flag2;
            if((0x2000 & ConfigStorageLogic.f()) == 0)
                flag2 = true;
            else
                flag2 = false;
            if(flag2)
                arraylist.add(pluginpreference11);
            else
                arraylist1.add(pluginpreference11);
            f = Util.a((Boolean)MMCore.f().f().a(0x85ffec64), false);
            if(f)
            {
                pluginpreference11.b(0);
                pluginpreference11.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
            } else
            {
                pluginpreference11.b(8);
                pluginpreference11.a("", -1);
            }
        }
        pluginpreference12 = new PluginPreference(this);
        if(pluginpreference12.a("qqfriend"))
        {
            pluginpreference12.setTitle(pluginpreference12.a());
            boolean flag1;
            if((0x1000 & ConfigStorageLogic.f()) == 0)
                flag1 = true;
            else
                flag1 = false;
            if(flag1)
                arraylist.add(pluginpreference12);
            else
                arraylist1.add(pluginpreference12);
        }
        pluginpreference13 = new PluginPreference(this);
        if(pluginpreference13.a("masssendapp"))
        {
            pluginpreference13.setTitle(pluginpreference13.a());
            boolean flag;
            if((0x10000 & ConfigStorageLogic.f()) == 0)
                flag = true;
            else
                flag = false;
            if(flag)
                arraylist.add(pluginpreference13);
            else
                arraylist1.add(pluginpreference13);
            e = Util.a((Boolean)MMCore.f().f().a(0x85ffec63), false);
            if(e)
            {
                pluginpreference13.b(0);
                pluginpreference13.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
            } else
            {
                pluginpreference13.b(8);
                pluginpreference13.a("", -1);
            }
        }
        if(!arraylist.isEmpty())
        {
            plugintextpreference = new PluginTextPreference(this);
            plugintextpreference.a(0x7f020278);
            plugintextpreference.b(0x7f0a01a2);
            a.a(plugintextpreference);
        }
        for(iterator = arraylist.iterator(); iterator.hasNext(); a.a(pluginpreference15))
        {
            pluginpreference15 = (PluginPreference)iterator.next();
            pluginpreference15.a(255);
        }

        if(!arraylist1.isEmpty())
        {
            PluginTextPreference plugintextpreference1 = new PluginTextPreference(this);
            plugintextpreference1.a(0x7f020279);
            plugintextpreference1.b(0x7f0a01a3);
            a.a(plugintextpreference1);
        }
        PluginPreference pluginpreference14;
        for(Iterator iterator1 = arraylist1.iterator(); iterator1.hasNext(); a.a(pluginpreference14))
        {
            pluginpreference14 = (PluginPreference)iterator1.next();
            pluginpreference14.a(136);
        }

        PluginTextPreference plugintextpreference2 = new PluginTextPreference(this);
        plugintextpreference2.a();
        plugintextpreference2.b(0x7f0a01a4);
        a.a(plugintextpreference2);
        CheckBoxPreference checkboxpreference = new CheckBoxPreference(this);
        checkboxpreference.setLayoutResource(0x7f030076);
        checkboxpreference.setTitle(0x7f0a025a);
        checkboxpreference.setKey("display_in_addr_book");
        checkboxpreference.setChecked(Util.a((Boolean)MMCore.f().f().a(35)));
        a.a(checkboxpreference);
        PreferenceCategory preferencecategory = new PreferenceCategory(this);
        a.a(preferencecategory);
        Log.e("MicroMsg.SettingsPluginsUI", "on resume");
    }

    private IPreferenceScreen a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsPluginsUI a;

        _cls1()
        {
            a = SettingsPluginsUI.this;
            super();
        }
    }

}

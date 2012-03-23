// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.ChattingUI;

public class SettingsAboutMicroMsgUI extends MMPreference
{

    public SettingsAboutMicroMsgUI()
    {
        b = false;
    }

    private void o()
    {
        IconPreference iconpreference = (IconPreference)a.a("settings_update");
        iconpreference.c((int)(45F * MMActivity.k()));
        if(b)
        {
            iconpreference.a(0);
            iconpreference.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
        } else
        {
            iconpreference.a("", -1);
            iconpreference.a(8);
        }
        a.notifyDataSetChanged();
    }

    public final int a()
    {
        return 0x7f030000;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        Log.c("MicroMsg.SettingsAboutMicroMsgUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        boolean flag;
        if(s.equals("settings_update"))
        {
            Updater.a(16);
            if((1 & ChannelUtil.b) != 0)
            {
                Log.a("MicroMsg.SettingsAboutMicroMsgUI", "package has set external update mode");
                Uri uri = Uri.parse("market://details?id=com.tencent.mm");
                Intent intent1 = (new Intent("android.intent.action.VIEW", uri)).addFlags(0x10000000);
                if(uri == null || intent1 == null || !Util.a(c(), intent1))
                {
                    Log.a("MicroMsg.SettingsAboutMicroMsgUI", "parse market uri failed, jump to weixin.qq.com");
                    startActivity((new Intent("android.intent.action.VIEW", Uri.parse("http://weixin.qq.com"))).addFlags(0x10000000));
                } else
                {
                    Log.c("MicroMsg.SettingsAboutMicroMsgUI", "parse market uri ok");
                    startActivity(intent1);
                }
                flag = true;
            } else
            {
                Updater.a(this, new _cls2()).a(3, new _cls3());
                flag = true;
            }
        } else
        if(s.equals("settings_report"))
        {
            String s1 = (String)MMCore.f().f().a(21);
            String s2 = (String)MMCore.f().f().a(22);
            if(s1 == null)
                s1 = "weixin";
            if(s2 == null)
                s2 = getString(0x7f0a0049);
            Contact contact = MMCore.f().h().c(s1);
            if(contact.o() == 0)
            {
                contact.a(s1);
                contact.b(s2);
                contact.a(-2L);
                MMCore.f().h().c(contact);
            }
            Intent intent = new Intent(this, com/tencent/mm/ui/chatting/ChattingUI);
            if(s1 == null)
                s1 = "weixin";
            intent.putExtra("Chat_User", s1);
            intent.addFlags(0x4000000);
            c().startActivity(intent);
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public final int d_()
    {
        return 0x7f050021;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = Util.a((Boolean)MMCore.f().f().a(31), false);
        d(0x7f0a01b8);
        a = q();
        a.a("settings_about_version").setSummary(Util.b(this, ConstantsProtocal.b));
        b(new _cls1());
        o();
    }

    public void onResume()
    {
        super.onResume();
        o();
    }

    private IPreferenceScreen a;
    private boolean b;

    private class _cls2
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
        }

        private SettingsAboutMicroMsgUI a;

        _cls2()
        {
            a = SettingsAboutMicroMsgUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.ui.Updater.IOnUpdateEnd
    {

        public final void a()
        {
        }

        public final void a(Intent intent)
        {
            a.finish();
            MMAppMgr.a(a, intent);
        }

        private SettingsAboutMicroMsgUI a;

        _cls3()
        {
            a = SettingsAboutMicroMsgUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SettingsAboutMicroMsgUI a;

        _cls1()
        {
            a = SettingsAboutMicroMsgUI.this;
            super();
        }
    }

}

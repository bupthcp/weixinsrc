// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.view.View;
import android.widget.CheckBox;
import com.tencent.mm.model.*;
import com.tencent.mm.modelsimple.NetSceneLbsFind;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.album.ui.AlbumphotoUI;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.ConversationStorage;
import com.tencent.mm.ui.bottle.BottleBeachUI;
import com.tencent.mm.ui.bottle.BottleWizardStep1;
import com.tencent.mm.ui.facebook.FacebookFriendUI;
import com.tencent.mm.ui.friend.MobileFriendUI;
import com.tencent.mm.ui.friend.QQGroupUI;
import com.tencent.mm.ui.nearbyfriends.NearbyFriendsIntroUI;
import com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI;
import com.tencent.mm.ui.nearbyfriends.NearbyPersonalInfoUI;
import com.tencent.mm.ui.qrcode.GetFriendQRCodeUI;
import com.tencent.mm.ui.qrcode.ShareMicroMsgChoiceUI;
import com.tencent.mm.ui.shake.ShakeReportUI;

// Referenced classes of package com.tencent.mm.ui:
//            MMPreference, IPreferenceScreen, IconPreference, ContactSearchUI, 
//            MainTabUI, MMAlert

public class FindMoreFriendsUI extends MMPreference
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public FindMoreFriendsUI()
    {
        b = null;
        e = false;
        f = false;
    }

    static CheckBox a(FindMoreFriendsUI findmorefriendsui)
    {
        return findmorefriendsui.c;
    }

    private void o()
    {
        boolean flag = true;
        a.a();
        a.a(0x7f050018);
        e = Util.b((Boolean)MMCore.f().f().a(44));
        boolean flag1;
        IconPreference iconpreference;
        IconPreference iconpreference1;
        IconPreference iconpreference3;
        IconPreference iconpreference5;
        boolean flag2;
        IconPreference iconpreference6;
        IconPreference iconpreference8;
        if((0x200 & ConfigStorageLogic.f()) == 0)
            flag1 = flag;
        else
            flag1 = false;
        iconpreference = (IconPreference)a.a("find_friends_by_near");
        if(iconpreference != null)
        {
            IconPreference iconpreference2;
            IconPreference iconpreference4;
            IconPreference iconpreference7;
            IconPreference iconpreference9;
            if(NetSceneLbsFind.g())
            {
                iconpreference.b(8);
            } else
            {
                iconpreference.b(0);
                iconpreference.a("");
            }
            if(!flag1)
                a.b(iconpreference);
            else
                iconpreference.a(a(0x7f020123));
        }
        iconpreference1 = (IconPreference)a.a("find_friends_by_qrcode");
        if(iconpreference1 != null)
        {
            iconpreference1.a(a(0x7f02011f));
            if(e)
            {
                iconpreference1.a(0);
                iconpreference1.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
            } else
            {
                iconpreference1.a(8);
            }
        }
        iconpreference2 = (IconPreference)a.a("find_friends_by_micromsg");
        if(iconpreference2 != null)
            iconpreference2.a(a(0x7f02011e));
        iconpreference3 = (IconPreference)a.a("find_friends_by_qq");
        if(iconpreference3 != null)
            if((0x1000 & ConfigStorageLogic.f()) != 0)
                a.b(iconpreference3);
            else
                iconpreference3.a(a(0x7f020124));
        iconpreference4 = (IconPreference)a.a("find_friends_by_mobile");
        if(iconpreference4 != null)
            iconpreference4.a(a(0x7f020122));
        iconpreference5 = (IconPreference)a.a("find_friends_by_facebook");
        if(iconpreference5 != null)
            if(ConfigStorageLogic.l())
                iconpreference5.a(a(0x7f020121));
            else
                a.b(iconpreference5);
        if((0x100 & ConfigStorageLogic.f()) == 0)
            flag2 = flag;
        else
            flag2 = false;
        iconpreference6 = (IconPreference)a.a("find_friends_by_shake");
        if(iconpreference6 != null)
            if(!flag2)
                a.b(iconpreference6);
            else
                iconpreference6.a(a(0x7f020125));
        iconpreference7 = (IconPreference)a.a("send_card_to_microblog");
        if(iconpreference7 != null)
            iconpreference7.a(a(0x7f020271));
        if((0x40 & ConfigStorageLogic.f()) != 0)
            flag = false;
        f = flag;
        iconpreference8 = (IconPreference)a.a("voice_bottle");
        if(iconpreference8 != null)
            if(!f)
            {
                a.b(iconpreference8);
            } else
            {
                if(f)
                {
                    IconPreference iconpreference10 = (IconPreference)a.a("voice_bottle");
                    if(iconpreference10 != null)
                    {
                        int i = MMCore.f().j().e();
                        if(i > 0)
                            iconpreference10.a((new StringBuilder()).append("").append(i).toString(), 0x7f0202c1);
                        int j = ConfigStorageLogic.d();
                        if(i > 0 && (0x8000 & j) == 0)
                            iconpreference10.a(0);
                        else
                            iconpreference10.a(8);
                    }
                }
                iconpreference8.a(a(0x7f020120));
            }
        if(!flag1 && !flag2 && !f)
            a.b(a.a("find_friends_cat"));
        iconpreference9 = (IconPreference)a.a("album_dyna_photo_ui_title");
        if(iconpreference9 != null)
            iconpreference9.a(a(0x7f020120));
        a.b(iconpreference9);
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        if("find_friends_by_qrcode".equals(preference.getKey()))
        {
            if(e)
                MMCore.f().f().a(44, Boolean.valueOf(false));
            startActivity(new Intent(this, com/tencent/mm/ui/qrcode/GetFriendQRCodeUI));
            flag = true;
        } else
        if("find_friends_by_micromsg".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/ContactSearchUI));
            flag = true;
        } else
        if("find_friends_by_qq".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/friend/QQGroupUI));
            flag = true;
        } else
        if("find_friends_by_mobile".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/friend/MobileFriendUI));
            flag = true;
        } else
        if("find_friends_by_facebook".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/facebook/FacebookFriendUI));
            flag = true;
        } else
        if("find_friends_by_near".equals(preference.getKey()))
        {
            if(!Util.b((Boolean)MMCore.f().f().a(4103)))
            {
                startActivity(new Intent(this, com/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI));
            } else
            {
                SelfPersonCard selfpersoncard = SelfPersonCard.b();
                if(selfpersoncard == null)
                {
                    startActivity(new Intent(this, com/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI));
                } else
                {
                    String s = Util.h(selfpersoncard.f());
                    String s1 = Util.h(selfpersoncard.e());
                    int i = selfpersoncard.d();
                    if(s.equals("") || s1.equals("") || i == 0)
                    {
                        startActivity(new Intent(this, com/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI));
                    } else
                    {
                        Boolean boolean1 = (Boolean)MMCore.f().f().a(4104);
                        if(boolean1 == null || !boolean1.booleanValue())
                        {
                            MainTabUI.a().b("tab_find_friend");
                            startActivity(new Intent(this, com/tencent/mm/ui/nearbyfriends/NearbyFriendsUI));
                        } else
                        if(b == null)
                            b = MMAlert.a(c(), getString(0x7f0a0010), d, new _cls1(), new _cls2());
                        else
                            b.show();
                    }
                }
            }
            flag = true;
        } else
        if("voice_bottle".equals(preference.getKey()))
        {
            if(Util.a((Integer)MMCore.f().f().a(12290), 0) <= 0 || Util.h((String)MMCore.f().f().a(12293)).equals("") || Util.h((String)MMCore.f().f().a(12292)).equals(""))
                startActivity(new Intent(this, com/tencent/mm/ui/bottle/BottleWizardStep1));
            else
                startActivity(new Intent(this, com/tencent/mm/ui/bottle/BottleBeachUI));
            flag = true;
        } else
        if("find_friends_by_shake".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/shake/ShakeReportUI));
            flag = true;
        } else
        if("album_dyna_photo_ui_title".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/plugin/album/ui/AlbumphotoUI));
            flag = true;
        } else
        if("send_card_to_microblog".equals(preference.getKey()))
        {
            startActivity(new Intent(this, com/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI));
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
        d(0x7f0a02a2);
        a = q();
        d = View.inflate(this, 0x7f03005a, null);
        c = (CheckBox)d.findViewById(0x7f070137);
        c.setChecked(false);
    }

    public void onPause()
    {
        if(MMCore.f().b())
            MMCore.f().j().b(this);
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        MMCore.f().j().a(this);
        o();
    }

    private IPreferenceScreen a;
    private AlertDialog b;
    private CheckBox c;
    private View d;
    private boolean e;
    private boolean f;

    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(FindMoreFriendsUI.a(a) != null)
            {
                ConfigStorage configstorage = MMCore.f().f();
                boolean flag;
                if(!FindMoreFriendsUI.a(a).isChecked())
                    flag = true;
                else
                    flag = false;
                configstorage.a(4104, Boolean.valueOf(flag));
            }
            MainTabUI.a().b("tab_find_friend");
            a.startActivity(new Intent(a, com/tencent/mm/ui/nearbyfriends/NearbyFriendsUI));
        }

        private FindMoreFriendsUI a;

        _cls1()
        {
            a = FindMoreFriendsUI.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private FindMoreFriendsUI a;

        _cls2()
        {
            a = FindMoreFriendsUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.AlertDialog;
import android.content.*;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.album.ui.AlbumphotoUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.skin.SkinSelectUI;
import com.tencent.mm.ui.tools.CropImageUI;
import com.tencent.mm.ui.tools.WebViewUI;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.setting:
//            PersonalPreference, SettingsUIGroup, ProcessUploadHDHeadImg, SettingsPersonalInfoUI, 
//            EditSignatureUI, SettingsAccountInfoUI, SettingsAboutPrivacyUI, SettingsChattingBackgroundUI, 
//            SettingsPluginsUI, SettingsAboutSystemUI, SettingsNetStatUI, SettingsAboutMicroMsgUI, 
//            SendFeedBackUI

public class SettingsUI extends MMPreference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public SettingsUI()
    {
        b = null;
        d = null;
        f = false;
    }

    static boolean a(SettingsUI settingsui)
    {
        boolean flag = true;
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(settingsui, flag);
            flag = false;
        } else
        {
            if(settingsui.c == null)
                settingsui.c = (new android.app.AlertDialog.Builder(settingsui.getParent())).setTitle(0x7f0a01c5).setItems(0x7f060000, settingsui. new _cls5()).setNegativeButton(0x7f0a0015, settingsui. new _cls4()).create();
            settingsui.c.show();
        }
        return flag;
    }

    static AlertDialog b(SettingsUI settingsui)
    {
        return settingsui.c;
    }

    static IPreferenceScreen c(SettingsUI settingsui)
    {
        return settingsui.a;
    }

    private void e(String s)
    {
        String s1 = (String)MMCore.f().f().a(4);
        PersonalPreference personalpreference = b;
        if(s1 == null || s1.length() <= 0)
            s1 = s;
        personalpreference.a(s1);
    }

    private void o()
    {
        IconPreference iconpreference = (IconPreference)a.a("settings_about_micromsg");
        float f1 = 45F * MMActivity.k();
        iconpreference.c((int)f1);
        e = Util.a((Boolean)MMCore.f().f().a(31), false);
        IconPreference iconpreference1;
        if(e)
        {
            iconpreference.a(0);
            iconpreference.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
        } else
        {
            iconpreference.a("", -1);
            iconpreference.a(8);
        }
        f = Util.a((Boolean)MMCore.f().f().a(0x85ffec5f), false);
        iconpreference1 = (IconPreference)a.a("settings_plugins");
        iconpreference1.c((int)f1);
        if(f)
        {
            iconpreference1.a(0);
            iconpreference1.a((new StringBuilder()).append(" ").append(getString(0x7f0a0029)).append(" ").toString(), 0x7f0202c1);
        } else
        {
            iconpreference1.a(8);
            iconpreference1.a("", -1);
        }
        a.notifyDataSetChanged();
    }

    private void t()
    {
        com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState bindopmobilestate = FriendLogic.b();
        SwitchKeyValuePreference switchkeyvaluepreference = (SwitchKeyValuePreference)a.a("settings_bind_mobile");
        boolean flag;
        int i;
        if(bindopmobilestate == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c || bindopmobilestate == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.d)
            flag = true;
        else
            flag = false;
        switchkeyvaluepreference.a(flag);
        if(bindopmobilestate == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c || bindopmobilestate == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.d)
            i = 0x7f0a019e;
        else
            i = 0x7f0a019f;
        switchkeyvaluepreference.setSummary(i);
    }

    private void u()
    {
        Preference preference = a.a("settings_signature");
        String s = Util.h((String)MMCore.f().f().a(12291));
        if(s.length() <= 0)
            s = getString(0x7f0a0195);
        preference.setSummary(SpanUtil.a(this, s, -2));
    }

    private boolean v()
    {
        try
        {
            c().startActivity(d);
        }
        catch(Exception exception)
        {
            Log.a("MicroMsg.SettingsUI", "start market activity.");
        }
        return true;
    }

    public final void a(int i, Intent intent)
    {
        Log.e("MicroMsg.SettingsUI", "settings handle");
        i;
        JVM INSTR tableswitch 2 4: default 36
    //                   2 114
    //                   3 37
    //                   4 211;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        String s3 = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
        if(s3 != null)
        {
            Intent intent2 = new Intent();
            intent2.setClass(c(), com/tencent/mm/ui/tools/CropImageUI);
            intent2.putExtra("CropImage_OutputPath", s3);
            intent2.putExtra("CropImage_ImgPath", s3);
            SettingsUIGroup.a.startActivityForResult(intent2, 4);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(intent != null)
        {
            String s2 = Util.a(this, intent, MMCore.f().M());
            if(s2 != null && s2.length() > 0)
            {
                Intent intent1 = new Intent();
                intent1.setClass(c(), com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_OutputPath", MMCore.f().y().a(ConfigStorageLogic.b(), true));
                intent1.putExtra("CropImage_ImgPath", s2);
                SettingsUIGroup.a.startActivityForResult(intent1, 4);
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(intent != null)
        {
            String s = intent.getStringExtra("CropImage_OutputPath");
            if(s == null)
            {
                Log.a("MicroMsg.SettingsUI", "crop picture failed");
            } else
            {
                (new ProcessUploadHDHeadImg(c(), s)).a(1);
                String s1 = ConfigStorageLogic.b();
                MMCore.f().y().a(s1, BitmapFactory.decodeFile(s));
                if(b != null)
                    b.a(AvatarLogic.i(s1));
            }
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        {
            byte byte0 = 2;
            boolean flag = true;
            String s = preference.getKey();
            Log.c("MicroMsg.SettingsUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
            CheckBoxPreference checkboxpreference;
            RoleInfo roleinfo;
            int k;
            CheckBoxPreference checkboxpreference1;
            int l;
            OpLogStorage oplogstorage;
            int i1;
            OpLogStorage oplogstorage1;
            String s3;
            int j1;
            String s4;
            SelfPersonCard selfpersoncard;
            if("settings_account".equals(s))
                c().startActivity(new Intent(this, com/tencent/mm/ui/setting/SettingsPersonalInfoUI));
            else
            if(s.equals("settings_signature"))
                c().startActivity(new Intent(this, com/tencent/mm/ui/setting/EditSignatureUI));
            else
            if(s.equals("settings_my_album"))
            {
                String s5 = (String)MMCore.f().f().a(byte0);
                c().startActivity((new Intent(this, com/tencent/mm/plugin/album/ui/AlbumphotoUI)).putExtra("album_userName", s5));
            } else
            if(s.equals("settings_account_info"))
                a(com/tencent/mm/ui/setting/SettingsAccountInfoUI);
            else
            if(s.equals("settings_bind_mobile"))
                MMWizardActivity.a(this, new Intent(this, com/tencent/mm/ui/bindmobile/BindMContactIntroUI));
            else
            if(s.equals("settings_tweibo_open"))
            {
label0:
                {
                    checkboxpreference = (CheckBoxPreference)a.a("settings_tweibo_open");
                    if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
                        break label0;
                    MMAlert.a(c(), 0x7f0a018f, 0x7f0a0010, new _cls8(checkboxpreference), new _cls9(checkboxpreference));
                }
            } else
            if(s.equals("settings_about_privacy"))
                SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsAboutPrivacyUI));
            else
            if(s.equals("settings_skin"))
                c().startActivity(new Intent(this, com/tencent/mm/ui/skin/SkinSelectUI));
            else
            if(s.equals("settings_chatting_bg"))
            {
                Intent intent = new Intent();
                intent.setClass(this, com/tencent/mm/ui/setting/SettingsChattingBackgroundUI);
                c().startActivity(intent);
            } else
            if(s.equals("settings_plugins"))
            {
                if(f)
                    MMCore.f().f().a(0x85ffec5f, Boolean.valueOf(false));
                Intent intent4 = new Intent();
                intent4.setClass(this, com/tencent/mm/ui/setting/SettingsPluginsUI);
                SettingsUIGroup.a.a(intent4);
            } else
            if(s.equals("settings_about_blacklist"))
            {
                GroupInfo groupinfo = GroupInfoLogic.a(getString(0x7f0a0048));
                Intent intent3 = new Intent();
                intent3.setClass(this, com/tencent/mm/ui/AddressUI);
                intent3.putExtra("Contact_GroupFilter_Type", groupinfo.a());
                intent3.putExtra("Contact_GroupFilter_DisplayName", groupinfo.c());
                SettingsUIGroup.a.a(intent3);
            } else
            if(s.equals("settings_about_system"))
                SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsAboutSystemUI));
            else
            if(s.equals("settings_system_notice"))
            {
                int i = Util.a((Integer)MMCore.e().a(flag));
                int j = Util.a((Integer)MMCore.f().f().a(12304));
                Object aobj[] = new Object[byte0];
                aobj[0] = Integer.valueOf(i);
                aobj[flag] = Integer.valueOf(j);
                String s2 = getString(0x7f0a01ff, aobj);
                if(s2 != null)
                {
                    MMCore.f().f().a(12304, Integer.valueOf(0));
                    Intent intent2 = new Intent();
                    intent2.putExtra("title", getString(0x7f0a01b7));
                    intent2.putExtra("rawUrl", s2);
                    intent2.setClass(this, com/tencent/mm/ui/tools/WebViewUI);
                    c().startActivity(intent2);
                }
            } else
            if(s.equals("settings_push_software"))
            {
                String s1 = Util.h((String)MMCore.f().f().a(12308));
                Intent intent1 = new Intent();
                intent1.putExtra("title", getString(0x7f0a01b9));
                intent1.putExtra("rawUrl", s1);
                intent1.setClass(this, com/tencent/mm/ui/tools/WebViewUI);
                c().startActivity(intent1);
            } else
            if(s.equals("settings_traffic_statistic"))
                SettingsUIGroup.a.a(new Intent(this, com/tencent/mm/ui/setting/SettingsNetStatUI));
            else
            if(s.equals("settings_about_micromsg"))
                c().startActivity(new Intent(this, com/tencent/mm/ui/setting/SettingsAboutMicroMsgUI));
            else
            if(s.equals("settings_market_ratings"))
                flag = v();
            else
            if(s.equals("settings_feedback"))
                c().startActivity(new Intent(this, com/tencent/mm/ui/setting/SendFeedBackUI));
            else
            if(s.equals("settings_logout"))
                MMAlert.a(c(), getResources().getString(0x7f0a01d4), null, getResources().getString(0x7f0a01d3), new _cls6());
            else
            if(s.equals("settings_reset"))
                MMAlert.a(c(), getResources().getString(0x7f0a01d6), null, getResources().getString(0x7f0a01d5), new _cls7());
            else
                flag = false;
        }
_L2:
        return flag;
        roleinfo = MMCore.f().m().a("@t.qq.com");
        if(roleinfo == null)
            break MISSING_BLOCK_LABEL_1406;
        s3 = roleinfo.a();
        j1 = s3.indexOf("@t.qq.com");
        if(j1 < 0)
            break MISSING_BLOCK_LABEL_1406;
        s4 = (new StringBuilder()).append("http://t.qq.com/").append((String)s3.subSequence(0, j1)).toString();
        if(s4 == null || s4.equals(""))
            break MISSING_BLOCK_LABEL_1406;
        selfpersoncard = SelfPersonCard.a();
        selfpersoncard.d(s4);
        Log.d("MicroMsg.SettingsUI", (new StringBuilder()).append("First set weibo is ").append(s4).toString());
        MMCore.f().g().a(SelfPersonCard.a(selfpersoncard));
        boolean flag1 = flag;
        do
        {
            if(!flag1)
            {
                MMAlert.a(c(), 0x7f0a018d, 0x7f0a0010);
                checkboxpreference.setChecked(false);
                r().edit().putBoolean(checkboxpreference.getKey(), false).commit();
            }
            if(MMCore.f().b())
            {
                k = ConfigStorageLogic.e();
                checkboxpreference1 = (CheckBoxPreference)a.a("settings_tweibo_open");
                Assert.assertNotNull(checkboxpreference1);
                if(checkboxpreference1.isChecked())
                    l = 0x40 | (k | 2);
                else
                    l = 0xffffffbf & (k & -3);
                MMCore.f().f().a(40, Integer.valueOf(l));
                oplogstorage = MMCore.f().g();
                if(checkboxpreference1.isChecked())
                    i1 = ((flag) ? 1 : 0);
                else
                    i1 = byte0;
                oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(22, i1));
                oplogstorage1 = MMCore.f().g();
                if(checkboxpreference1.isChecked())
                    byte0 = flag;
                oplogstorage1.a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(16, byte0));
            }
            a.notifyDataSetChanged();
            if(true)
                break MISSING_BLOCK_LABEL_66;
            flag1 = false;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a_(String s)
    {
        if("4".equals(s))
            e((String)MMCore.f().f().a(2));
        if("6".equals(s))
            t();
        if("12291".equals(s))
            u();
        if("31".equals(s))
            o();
    }

    public final void b(String s)
    {
        if(s != null && s.equals(ConfigStorageLogic.b()))
        {
            android.graphics.Bitmap bitmap = AvatarLogic.i(s);
            if(bitmap == null)
                bitmap = BitmapFactory.decodeResource(getResources(), 0x7f020100);
            b.a(bitmap);
        }
    }

    public final int d_()
    {
        return 0x7f05001f;
    }

    public void onCreate(Bundle bundle)
    {
        Preference preference1;
        super.onCreate(bundle);
        d(0x7f0a0187);
        ConfigStorage configstorage = MMCore.f().f();
        a = q();
        b = (PersonalPreference)a.a("settings_account");
        String s = (String)configstorage.a(2);
        String s1 = (String)configstorage.a(42);
        b.b(s);
        b.c(s1);
        b.a(AvatarLogic.i(s));
        b.a(new _cls1());
        b.b(new _cls2());
        e(s);
        Preference preference = a.a("settings_skin");
        a.b(preference);
        t();
        preference1 = a.a("settings_market_ratings");
        if(preference1 == null) goto _L2; else goto _L1
_L1:
        Uri uri = Uri.parse("market://details?id=com.tencent.mm");
        if(uri != null) goto _L4; else goto _L3
_L3:
        a.b(preference1);
_L2:
        Preference preference2 = a.a("settings_push_software");
        if(preference2 != null)
            a.b(preference2);
        a(new _cls3());
        o();
        MMCore.f().f().a(this);
        MMCore.f().y().a(this);
        return;
_L4:
        d = new Intent("android.intent.action.VIEW", uri);
        if(d == null || !Util.a(this, d))
        {
            boolean flag = a.b(preference1);
            Log.d("MicroMsg.SettingsUI", (new StringBuilder()).append("removePreference settings_market_ratings :").append(flag).append(" :").append(preference1.getSummary()).toString());
        }
        if(true) goto _L2; else goto _L5
_L5:
    }

    protected void onDestroy()
    {
        if(MMCore.f().b())
            MMCore.f().f().b(this);
        if(MMCore.t())
            MMCore.f().y().b(this);
        super.onDestroy();
    }

    public void onPause()
    {
        Log.e("MicroMsg.SettingsUI", "on pause");
        if(p() && MMCore.f().b())
            MMCore.g().b(new NetSceneSync(5));
        super.onPause();
        Log.e("MicroMsg.SettingsUI", "on pause");
    }

    public void onResume()
    {
        if(b != null)
        {
            android.graphics.Bitmap bitmap = AvatarLogic.i(ConfigStorageLogic.b());
            if(bitmap == null)
                bitmap = BitmapFactory.decodeResource(getResources(), 0x7f020100);
            b.a(bitmap);
        }
        u();
        t();
        CheckBoxPreference checkboxpreference = (CheckBoxPreference)a.a("settings_tweibo_open");
        if(checkboxpreference != null)
            if((2 & ConfigStorageLogic.e()) == 0)
            {
                checkboxpreference.setChecked(false);
                r().edit().putBoolean(checkboxpreference.getKey(), false).commit();
            } else
            {
                checkboxpreference.setChecked(true);
                r().edit().putBoolean(checkboxpreference.getKey(), true).commit();
            }
        o();
        Log.e("MicroMsg.SettingsUI", "on resume");
        super.onResume();
    }

    private IPreferenceScreen a;
    private PersonalPreference b;
    private AlertDialog c;
    private Intent d;
    private boolean e;
    private boolean f;

    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            a.getParent().startActivityForResult(Intent.createChooser(intent, null), 2);
_L6:
            SettingsUI.b(a).dismiss();
_L4:
            return;
_L2:
            if(i != 1) goto _L4; else goto _L3
_L3:
            if(!CameraUtil.a(a.getParent(), ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 3))
                Toast.makeText(a, a.getString(0x7f0a00c5), 1).show();
            if(true) goto _L6; else goto _L5
_L5:
        }

        private SettingsUI a;

        _cls5()
        {
            a = SettingsUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private SettingsUI a;

        _cls4()
        {
            a = SettingsUI.this;
            super();
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.setChecked(false);
            b.r().edit().putBoolean(a.getKey(), false).commit();
            MMWizardActivity.a(b.c(), new Intent(b, com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private CheckBoxPreference a;
        private SettingsUI b;

        _cls8(CheckBoxPreference checkboxpreference)
        {
            b = SettingsUI.this;
            a = checkboxpreference;
            super();
        }
    }


    private class _cls9
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.setChecked(false);
            b.r().edit().putBoolean(a.getKey(), false).commit();
            SettingsUI.c(b).notifyDataSetChanged();
        }

        private CheckBoxPreference a;
        private SettingsUI b;

        _cls9(CheckBoxPreference checkboxpreference)
        {
            b = SettingsUI.this;
            a = checkboxpreference;
            super();
        }
    }


    private class _cls6
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int i)
        {
            i;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            SettingsUI settingsui = a;
            MMCore.f().f().b(settingsui);
            MMCore.f().y().b(settingsui);
            MMCore.r();
            AddrBookObserver.a();
            AccountStorage accountstorage = MMCore.f();
            accountstorage.Y();
            accountstorage.d();
            MMCore.o().b();
            MMCore.z();
            QQSyncUI.a(settingsui);
            settingsui.getSharedPreferences("com.tencent.mm_preferences", 0).edit().putBoolean("settings_fully_exit", true).commit();
            Intent intent = new Intent(settingsui, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            settingsui.c().startActivity(intent);
            settingsui.finish();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private SettingsUI a;

        _cls6()
        {
            a = SettingsUI.this;
            super();
        }
    }


    private class _cls7
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int i)
        {
            i;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            MsgInfoStorageLogic.a();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private SettingsUI a;

        _cls7()
        {
            a = SettingsUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.c().startActivity(new Intent(a, com/tencent/mm/ui/setting/SettingsPersonalInfoUI));
        }

        private SettingsUI a;

        _cls1()
        {
            a = SettingsUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SettingsUI.a(a);
        }

        private SettingsUI a;

        _cls2()
        {
            a = SettingsUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.s();
        }

        private SettingsUI a;

        _cls3()
        {
            a = SettingsUI.this;
            super();
        }
    }

}

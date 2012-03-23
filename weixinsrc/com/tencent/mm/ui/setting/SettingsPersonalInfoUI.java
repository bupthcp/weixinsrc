// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.tools.CitySelectUI;
import com.tencent.mm.ui.tools.CropImageUI;

// Referenced classes of package com.tencent.mm.ui.setting:
//            ProcessUploadHDHeadImg, SettingsModifyNameUI, HeadImgPreference

public class SettingsPersonalInfoUI extends MMPreference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public SettingsPersonalInfoUI()
    {
        c = -1;
    }

    static int a(SettingsPersonalInfoUI settingspersonalinfoui, int i)
    {
        settingspersonalinfoui.c = i;
        return i;
    }

    static AlertDialog a(SettingsPersonalInfoUI settingspersonalinfoui)
    {
        return settingspersonalinfoui.b;
    }

    public final void a(int i, Intent intent)
    {
        i;
        JVM INSTR tableswitch 2 4: default 28
    //                   2 98
    //                   3 29
    //                   4 187;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        String s3 = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
        if(s3 != null)
        {
            Intent intent2 = new Intent();
            intent2.setClass(this, com/tencent/mm/ui/tools/CropImageUI);
            intent2.putExtra("CropImage_OutputPath", s3);
            intent2.putExtra("CropImage_ImgPath", s3);
            startActivityForResult(intent2, 4);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(intent != null)
        {
            String s2 = Util.a(this, intent, MMCore.f().M());
            if(s2 != null && s2.length() > 0)
            {
                Intent intent1 = new Intent();
                intent1.setClass(this, com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_OutputPath", MMCore.f().y().a(ConfigStorageLogic.b(), true));
                intent1.putExtra("CropImage_ImgPath", s2);
                startActivityForResult(intent1, 4);
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(intent != null)
        {
            String s = intent.getStringExtra("CropImage_OutputPath");
            if(s == null)
            {
                Log.a("MicroMsg.SettingsPersonalInfoUI", "crop picture failed");
            } else
            {
                (new ProcessUploadHDHeadImg(c(), s)).a(1);
                String s1 = ConfigStorageLogic.b();
                MMCore.f().y().a(s1, BitmapFactory.decodeFile(s));
            }
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = false;
        s = preference.getKey();
        if(!s.equals("settings_change_avatar")) goto _L2; else goto _L1
_L1:
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(this, 1);
        } else
        {
            if(b == null)
                b = (new android.app.AlertDialog.Builder(c())).setTitle(0x7f0a01c5).setItems(0x7f060000, new _cls4()).setNegativeButton(0x7f0a0015, new _cls3()).create();
            b.show();
            flag = true;
        }
_L4:
        return flag;
_L2:
        if(s.equals("settings_name"))
        {
            a(com/tencent/mm/ui/setting/SettingsModifyNameUI);
            flag = true;
        } else
        if(s.equals("settings_district"))
        {
            a(com/tencent/mm/ui/tools/CitySelectUI);
            flag = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void b(String s)
    {
        if(s != null && s.equals(ConfigStorageLogic.b()))
        {
            android.graphics.Bitmap bitmap = AvatarLogic.i(s);
            android.graphics.Bitmap bitmap1;
            if(bitmap == null)
                bitmap1 = BitmapFactory.decodeResource(getResources(), 0x7f020100);
            else
                bitmap1 = bitmap;
            ((HeadImgPreference)a.a("settings_change_avatar")).a(bitmap1);
        }
    }

    public final int d_()
    {
        return 0x7f050027;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        a(i, intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.f().y().a(this);
        d(0x7f0a0189);
        a = q();
        ((DialogPreference)a.a("settings_sex")).setOnPreferenceChangeListener(new _cls1());
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        if(roleinfo == null || !roleinfo.b())
            a.b("settings_tweibo");
        b(new _cls2());
    }

    public void onDestroy()
    {
        MMCore.f().y().b(this);
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        SelfPersonCard selfpersoncard = SelfPersonCard.a();
        if(c != -1)
            selfpersoncard.a(c);
        MMCore.f().g().a(SelfPersonCard.a(selfpersoncard));
        MMCore.g().b(new NetSceneSync(5));
    }

    public void onResume()
    {
        int i;
        DialogPreference dialogpreference;
        ((HeadImgPreference)a.a("settings_change_avatar")).a(AvatarLogic.i(ConfigStorageLogic.b()));
        String s = (String)MMCore.f().f().a(4);
        if(s != null && s.length() > 0)
            a.a("settings_name").setSummary(SpanUtil.a(this, s, -2));
        i = Util.a((Integer)MMCore.f().f().a(12290), 0);
        dialogpreference = (DialogPreference)a.a("settings_sex");
        i;
        JVM INSTR tableswitch 1 2: default 128
    //                   1 344
    //                   2 354;
           goto _L1 _L2 _L3
_L1:
        dialogpreference.a("unknown");
_L5:
        String s1 = Util.h((String)MMCore.f().f().a(12293));
        String s2 = Util.h((String)MMCore.f().f().a(12292));
        a.a("settings_district").setSummary((new StringBuilder()).append(ContactStorageLogic.L(s1)).append(" ").append(s2).toString());
        Preference preference = a.a("settings_tweibo");
        if(preference != null)
        {
            String s3 = ContactStorageLogic.K(Util.h((String)MMCore.f().f().a(12307)));
            String s4 = Util.a((String)MMCore.f().f().a(43), "");
            StringBuilder stringbuilder = (new StringBuilder()).append(s4);
            Object aobj[] = new Object[1];
            aobj[0] = s3;
            preference.setSummary(stringbuilder.append(getString(0x7f0a018e, aobj)).toString());
        }
        a.notifyDataSetChanged();
        super.onResume();
        return;
_L2:
        dialogpreference.a("male");
        continue; /* Loop/switch isn't completed */
_L3:
        dialogpreference.a("female");
        if(true) goto _L5; else goto _L4
_L4:
    }

    private IPreferenceScreen a;
    private AlertDialog b;
    private int c;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            a.startActivityForResult(Intent.createChooser(intent, null), 2);
_L6:
            SettingsPersonalInfoUI.a(a).dismiss();
_L4:
            return;
_L2:
            if(i != 1) goto _L4; else goto _L3
_L3:
            if(!CameraUtil.a(a, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 3))
                Toast.makeText(a, a.getString(0x7f0a00c5), 1).show();
            if(true) goto _L6; else goto _L5
_L5:
        }

        private SettingsPersonalInfoUI a;

        _cls4()
        {
            a = SettingsPersonalInfoUI.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private SettingsPersonalInfoUI a;

        _cls3()
        {
            a = SettingsPersonalInfoUI.this;
            super();
        }
    }


    private class _cls1
        implements android.preference.Preference.OnPreferenceChangeListener
    {

        public boolean onPreferenceChange(Preference preference, Object obj)
        {
            String s = (String)obj;
            if(!"male".equalsIgnoreCase(s)) goto _L2; else goto _L1
_L1:
            SettingsPersonalInfoUI.a(a, 1);
_L4:
            return false;
_L2:
            if("female".equalsIgnoreCase(s))
                SettingsPersonalInfoUI.a(a, 2);
            if(true) goto _L4; else goto _L3
_L3:
        }

        private SettingsPersonalInfoUI a;

        _cls1()
        {
            a = SettingsPersonalInfoUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SettingsPersonalInfoUI a;

        _cls2()
        {
            a = SettingsPersonalInfoUI.this;
            super();
        }
    }

}

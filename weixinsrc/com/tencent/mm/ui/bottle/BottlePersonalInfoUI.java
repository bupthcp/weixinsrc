// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.setting.HeadImgPreference;
import com.tencent.mm.ui.setting.ProcessUploadHDHeadImg;
import com.tencent.mm.ui.tools.CropImageUI;
import java.util.*;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleSettingLogic

public class BottlePersonalInfoUI extends MMPreference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public BottlePersonalInfoUI()
    {
        e = new HashMap();
    }

    static AlertDialog a(BottlePersonalInfoUI bottlepersonalinfoui)
    {
        return bottlepersonalinfoui.b;
    }

    private static void o()
    {
        MMCore.g().b(new NetSceneSync(5));
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag = true;
        String s = preference.getKey();
        if(s.equals("bottle_settings_change_avatar"))
        {
            if(!MMCore.f().c())
            {
                com.tencent.mm.ui.MMToast.ToastSdcard.a(this, flag);
                flag = false;
            } else
            {
                if(b == null)
                    b = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0a01c5).setItems(0x7f060000, new _cls3()).setNegativeButton(0x7f0a0015, new _cls2()).create();
                b.show();
            }
        } else
        if(s.equals("settings_district"))
            flag = c.d();
        else
        if(s.equals("settings_signature"))
            flag = c.c();
        else
        if(s.equals("bottle_settings_show_at_main"))
        {
            boolean flag1 = f.getBoolean("bottle_settings_show_at_main", flag);
            Log.d("MicroMsg.BottleSettignsPersonalInfoUI", (new StringBuilder()).append("switch change : open = ").append(flag1).append(" item value = ").append(32768).append(" functionId = ").append(14).toString());
            int i;
            if(flag1)
                d = 0x8000 | d;
            else
                d = 0xffff7fff & d;
            if(flag1)
                i = ((flag) ? 1 : 0);
            else
                i = 2;
            e.put(Integer.valueOf(14), Integer.valueOf(i));
        } else
        {
            flag = false;
        }
        return flag;
    }

    public final void b(String s)
    {
        if(s != null && s.equals(ContactStorageLogic.u(ConfigStorageLogic.b())))
        {
            android.graphics.Bitmap bitmap = AvatarLogic.i(s);
            if(bitmap == null)
                bitmap = AvatarLogic.i(ConfigStorageLogic.b());
            android.graphics.Bitmap bitmap1;
            if(bitmap == null)
                bitmap1 = BitmapFactory.decodeResource(getResources(), 0x7f020100);
            else
                bitmap1 = bitmap;
            ((HeadImgPreference)a.a("bottle_settings_change_avatar")).a(bitmap1);
        }
    }

    public final int d_()
    {
        return 0x7f050000;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        i;
        JVM INSTR tableswitch 2 4: default 28
    //                   2 98
    //                   3 29
    //                   4 190;
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
                intent1.putExtra("CropImage_OutputPath", MMCore.f().y().a(ContactStorageLogic.u(ConfigStorageLogic.b()), true));
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
                Log.a("MicroMsg.BottleSettignsPersonalInfoUI", "crop picture failed");
            } else
            {
                (new ProcessUploadHDHeadImg(c(), s)).a(2);
                String s1 = ConfigStorageLogic.b();
                MMCore.f().y().a(ContactStorageLogic.u(s1), BitmapFactory.decodeFile(s));
            }
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag = true;
        super.onCreate(bundle);
        MMCore.f().y().a(this);
        d(0x7f0a0187);
        a = q();
        a.a(0x7f050001);
        f = getSharedPreferences("com.tencent.mm_preferences", 0);
        d = ConfigStorageLogic.d();
        CheckBoxPreference checkboxpreference;
        if(getIntent().getBooleanExtra("is_allow_set", flag))
        {
            c = new BottleSettingLogic(this, a);
        } else
        {
            IPreferenceScreen ipreferencescreen = a;
            ipreferencescreen.b((ChoicePreference)ipreferencescreen.a("settings_sex"));
            ipreferencescreen.b((KeyValuePreference)ipreferencescreen.a("settings_district"));
            ipreferencescreen.b((KeyValuePreference)ipreferencescreen.a("settings_signature"));
            ipreferencescreen.b(ipreferencescreen.a("bottle_settings_change_avatar_tip"));
        }
        checkboxpreference = (CheckBoxPreference)a.a("bottle_settings_show_at_main");
        if((0x8000 & d) == 0)
            flag = false;
        checkboxpreference.setChecked(flag);
        b(new _cls1());
    }

    public void onDestroy()
    {
        o();
        MMCore.f().y().b(this);
        super.onDestroy();
    }

    public void onPause()
    {
        BottleSettingLogic.a();
        MMCore.f().f().a(7, Integer.valueOf(d));
        int i;
        int j;
        for(Iterator iterator = e.entrySet().iterator(); iterator.hasNext(); Log.d("MicroMsg.BottleSettignsPersonalInfoUI", (new StringBuilder()).append("switch  ").append(i).append(" ").append(j).toString()))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            i = ((Integer)entry.getKey()).intValue();
            j = ((Integer)entry.getValue()).intValue();
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(i, j));
        }

        o();
        e.clear();
        super.onPause();
    }

    public void onResume()
    {
        HeadImgPreference headimgpreference = (HeadImgPreference)a.a("bottle_settings_change_avatar");
        android.graphics.Bitmap bitmap = AvatarLogic.i(ContactStorageLogic.u(ConfigStorageLogic.b()));
        if(bitmap == null)
            bitmap = AvatarLogic.i(ConfigStorageLogic.b());
        if(bitmap != null)
            headimgpreference.a(bitmap);
        if(c != null)
            c.b();
        super.onResume();
    }

    private IPreferenceScreen a;
    private AlertDialog b;
    private BottleSettingLogic c;
    private int d;
    private HashMap e;
    private SharedPreferences f;

    private class _cls3
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
            BottlePersonalInfoUI.a(a).dismiss();
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

        private BottlePersonalInfoUI a;

        _cls3()
        {
            a = BottlePersonalInfoUI.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private BottlePersonalInfoUI a;

        _cls2()
        {
            a = BottlePersonalInfoUI.this;
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

        private BottlePersonalInfoUI a;

        _cls1()
        {
            a = BottlePersonalInfoUI.this;
            super();
        }
    }

}

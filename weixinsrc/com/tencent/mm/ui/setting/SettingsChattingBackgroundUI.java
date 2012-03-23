// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.widget.Toast;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelpackage.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.ConstantsStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.tools.CropImageUI;

// Referenced classes of package com.tencent.mm.ui.setting:
//            SettingsSelectBgUI

public class SettingsChattingBackgroundUI extends MMPreference
{

    public SettingsChattingBackgroundUI()
    {
    }

    private String c(boolean flag)
    {
        PackageInfoStorage packageinfostorage = MMCore.f().T();
        String s;
        if(b)
            s = packageinfostorage.a("default", flag);
        else
            s = packageinfostorage.a(c, flag);
        return s;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = true;
        s = preference.getKey();
        Log.c("MicroMsg.SettingsChattingBackgroundUI", (new StringBuilder()).append(s).append(" item has been clicked!").toString());
        if(!s.equals("settings_chatting_bg_select_bg")) goto _L2; else goto _L1
_L1:
        Intent intent = new Intent();
        intent.setClass(this, com/tencent/mm/ui/setting/SettingsSelectBgUI);
        intent.putExtra("isApplyToAll", b);
        intent.putExtra("username", c);
        startActivityForResult(intent, 3);
_L4:
        return flag;
_L2:
        if(s.equals("settings_chatting_bg_select_from_album"))
        {
            Intent intent1 = new Intent("android.intent.action.GET_CONTENT");
            intent1.setType("image/*");
            startActivityForResult(Intent.createChooser(intent1, null), flag);
        } else
        if(s.equals("settings_chatting_bg_take_photo"))
        {
            if(!CameraUtil.a(this, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 2))
                Toast.makeText(this, getString(0x7f0a00c5), flag).show();
        } else
        if(s.equals("settings_chatting_bg_apply_to_all"))
        {
            android.content.Context context = c();
            String as[] = new String[flag];
            as[0] = getString(0x7f0a0221);
            MMAlert.a(context, null, as, null, new _cls2());
        } else
        {
            flag = false;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int d_()
    {
        return 0x7f05001e;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        Log.e("MicroMsg.SettingsChattingBackgroundUI", "settings handle");
        i;
        JVM INSTR tableswitch 1 4: default 44
    //                   1 62
    //                   2 159
    //                   3 385
    //                   4 247;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if(!b)
        {
            setResult(-1);
            finish();
        }
_L6:
        return;
_L2:
        if(intent != null)
        {
            String s1 = Util.a(this, intent, MMCore.f().M());
            if(s1 != null && s1.length() > 0)
            {
                Intent intent2 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent2.putExtra("CropImage_bBackground", true);
                intent2.putExtra("CropImage_ImgPath", s1);
                intent2.putExtra("CropImage_bg_vertical", c(true));
                intent2.putExtra("CropImage_bg_horizontal", c(false));
                startActivityForResult(intent2, 4);
            }
        }
          goto _L6
_L3:
        String s = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
        if(s != null)
        {
            Intent intent1 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
            intent1.putExtra("CropImage_bBackground", true);
            intent1.putExtra("CropImage_ImgPath", s);
            intent1.putExtra("CropImage_bg_vertical", c(true));
            intent1.putExtra("CropImage_bg_horizontal", c(false));
            startActivityForResult(intent1, 4);
        }
          goto _L6
_L5:
        if(j != -1)
            break; /* Loop/switch isn't completed */
        MMCore.f().f().a(0x10504, Integer.valueOf(-1));
        if(b)
        {
            MMCore.f().f().a(12311, Integer.valueOf(-1));
        } else
        {
            ChattingBgInfoStorage chattingbginfostorage = MMCore.f().V();
            ChattingBgInfo chattingbginfo = chattingbginfostorage.a(c);
            if(chattingbginfo == null)
            {
                ChattingBgInfo chattingbginfo1 = new ChattingBgInfo();
                chattingbginfo1.a(c);
                chattingbginfo1.a(-1);
                chattingbginfostorage.a(chattingbginfo1);
            } else
            {
                chattingbginfo.a(-1);
                chattingbginfostorage.b(chattingbginfo);
            }
        }
        MMCore.f().T().a(1);
        break; /* Loop/switch isn't completed */
_L4:
        if(j == -1) goto _L1; else goto _L6
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0197);
        a = q();
        b = getIntent().getBooleanExtra("isApplyToAll", true);
        if(!b)
        {
            Preference preference = a.a("settings_chatting_bg_apply_to_all");
            if(preference != null)
                a.b(preference);
        }
        c = getIntent().getStringExtra("username");
        b(new _cls1());
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    private IPreferenceScreen a;
    private boolean b;
    private String c;

    private class _cls2
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
            ChattingBgInfoStorage chattingbginfostorage = MMCore.f().V();
            Cursor cursor = chattingbginfostorage.a();
            if(cursor == null)
            {
                Log.c("MicroMsg.SettingsChattingBackgroundUI", "applyToAll : cursor is null");
            } else
            {
                PackageInfoStorage packageinfostorage = MMCore.f().T();
                if(cursor.moveToFirst())
                {
                    ChattingBgInfo chattingbginfo = new ChattingBgInfo();
                    for(; !cursor.isAfterLast(); cursor.moveToNext())
                    {
                        chattingbginfo.a(cursor);
                        FileOperation.d(packageinfostorage.a(chattingbginfo.c(), true));
                        FileOperation.d(packageinfostorage.a(chattingbginfo.c(), false));
                    }

                }
                cursor.close();
                chattingbginfostorage.b();
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private SettingsChattingBackgroundUI a;

        _cls2()
        {
            a = SettingsChattingBackgroundUI.this;
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

        private SettingsChattingBackgroundUI a;

        _cls1()
        {
            a = SettingsChattingBackgroundUI.this;
            super();
        }
    }

}

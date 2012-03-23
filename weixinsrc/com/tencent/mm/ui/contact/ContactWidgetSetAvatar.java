// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.setting.ProcessUploadHDHeadImg;
import com.tencent.mm.ui.tools.CropImageUI;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            NormalUserHeaderPreference

public class ContactWidgetSetAvatar
    implements ContactInfoUI.IBodyWidget
{

    public ContactWidgetSetAvatar(Context context)
    {
        a = context;
        b = null;
        d = null;
        c = null;
        e = new HashMap();
    }

    static Context a(ContactWidgetSetAvatar contactwidgetsetavatar)
    {
        return contactwidgetsetavatar.a;
    }

    private void a(int i)
    {
        b.a();
        NormalUserHeaderPreference normaluserheaderpreference = (NormalUserHeaderPreference)e.get("contact_info_header_normal");
        if(normaluserheaderpreference != null)
        {
            normaluserheaderpreference.a(c);
            b.a(normaluserheaderpreference);
        }
        Preference preference = (Preference)e.get("contact_info_setavatar");
        if(preference != null)
        {
            preference.setTitle(i);
            b.a(preference);
        }
    }

    static AlertDialog b(ContactWidgetSetAvatar contactwidgetsetavatar)
    {
        return contactwidgetsetavatar.d;
    }

    public final void a(int i, Intent intent)
    {
        Log.e("MicroMsg.ContactWidgetSetAvatar", "settings handle");
        i;
        JVM INSTR tableswitch 2 4: default 36
    //                   2 118
    //                   3 37
    //                   4 219;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        String s3 = CameraUtil.a(a.getApplicationContext(), intent, MMCore.f().M());
        if(s3 != null)
        {
            Intent intent2 = new Intent();
            intent2.setClass(a, com/tencent/mm/ui/tools/CropImageUI);
            intent2.putExtra("CropImage_OutputPath", s3);
            intent2.putExtra("CropImage_ImgPath", s3);
            ((Activity)a).startActivityForResult(intent2, 4);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(intent != null)
        {
            String s2 = Util.a(a, intent, MMCore.f().M());
            if(s2 != null && s2.length() > 0)
            {
                Intent intent1 = new Intent();
                intent1.setClass(a, com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_ImgPath", s2);
                intent1.putExtra("CropImage_OutputPath", MMCore.f().y().a(ConfigStorageLogic.b(), true));
                ((Activity)a).startActivityForResult(intent1, 4);
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(intent != null)
        {
            String s = intent.getStringExtra("CropImage_OutputPath");
            if(s == null)
            {
                Log.a("MicroMsg.ContactWidgetSetAvatar", "crop picture failed");
            } else
            {
                (new ProcessUploadHDHeadImg(a, s)).a(1);
                String s1 = ConfigStorageLogic.b();
                MMCore.f().y().a(s1, BitmapFactory.decodeFile(s));
                a(0x7f0a025f);
            }
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final boolean a()
    {
        NormalUserHeaderPreference normaluserheaderpreference = (NormalUserHeaderPreference)b.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            normaluserheaderpreference.a();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1 = false;
        boolean flag2;
        NormalUserHeaderPreference normaluserheaderpreference;
        Preference preference;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ConfigStorageLogic.a(contact.s()));
        b = ipreferencescreen;
        c = contact;
        ipreferencescreen.a(0x7f050013);
        normaluserheaderpreference = (NormalUserHeaderPreference)ipreferencescreen.a("contact_info_header_normal");
        if(normaluserheaderpreference != null)
            e.put("contact_info_header_normal", normaluserheaderpreference);
        preference = ipreferencescreen.a("contact_info_setavatar");
        if(preference != null)
            e.put("contact_info_setavatar", preference);
        a(0x7f0a025e);
        return true;
    }

    public final boolean a(String s)
    {
        Log.d("MicroMsg.ContactWidgetSetAvatar", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        if(s.equals("contact_info_setavatar"))
        {
            if(MMCore.f().c())
                break; /* Loop/switch isn't completed */
            com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
        }
_L5:
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
        if(d == null)
            d = (new android.app.AlertDialog.Builder((Activity)a)).setTitle(0x7f0a01c5).setItems(0x7f060000, new _cls2()).setNegativeButton(0x7f0a0015, new _cls1()).create();
        d.show();
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private Context a;
    private IPreferenceScreen b;
    private Contact c;
    private AlertDialog d;
    private Map e;

    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            ((Activity)ContactWidgetSetAvatar.a(a)).startActivityForResult(Intent.createChooser(intent, null), 2);
_L6:
            ContactWidgetSetAvatar.b(a).dismiss();
_L4:
            return;
_L2:
            if(i != 1) goto _L4; else goto _L3
_L3:
            if(!CameraUtil.a((Activity)ContactWidgetSetAvatar.a(a), ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 3))
                Toast.makeText(ContactWidgetSetAvatar.a(a), ContactWidgetSetAvatar.a(a).getString(0x7f0a00c5), 1).show();
            if(true) goto _L6; else goto _L5
_L5:
        }

        private ContactWidgetSetAvatar a;

        _cls2()
        {
            a = ContactWidgetSetAvatar.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private ContactWidgetSetAvatar a;

        _cls1()
        {
            a = ContactWidgetSetAvatar.this;
            super();
        }
    }

}

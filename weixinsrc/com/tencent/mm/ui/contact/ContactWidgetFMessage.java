// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindqq.BindQQUI;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.facebook.FacebookAuthUI;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            FMessageHelper, HelperHeaderPreference

public class ContactWidgetFMessage
    implements ContactInfoUI.IBodyWidget
{

    public ContactWidgetFMessage(Context context)
    {
        a = context;
        f = new FMessageHelper(context);
        e = -1;
    }

    private void a(boolean flag, int i, int j)
    {
        Log.d("MicroMsg.ContactWidgetFMessage", (new StringBuilder()).append("switch change : open = ").append(flag).append(" item value = ").append(i).append(" functionId = ").append(j).toString());
        int k;
        if(flag)
            e = i | e;
        else
            e = e & ~i;
        MMCore.f().f().a(7, Integer.valueOf(e));
        if(flag)
            k = 1;
        else
            k = 2;
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(j, k));
    }

    private boolean a(int i)
    {
        boolean flag;
        if((i & e) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.g().b(new NetSceneSync(5));
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)b.a("contact_info_header_helper");
        if(helperheaderpreference != null)
            helperheaderpreference.a();
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1 = false;
        boolean flag2;
        boolean flag3;
        CheckBoxPreference checkboxpreference;
        CheckBoxPreference checkboxpreference1;
        CheckBoxPreference checkboxpreference2;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag3 = true;
        else
            flag3 = flag1;
        Assert.assertTrue(flag3);
        Assert.assertTrue(ContactStorageLogic.h(contact.s()));
        b = ipreferencescreen;
        c = flag;
        d = contact;
        if(e == -1)
            e = ConfigStorageLogic.d();
        ipreferencescreen.a(0x7f050006);
        checkboxpreference = (CheckBoxPreference)ipreferencescreen.a("contact_info_recommend_qqfriends_to_me");
        checkboxpreference1 = (CheckBoxPreference)ipreferencescreen.a("contact_info_recommend_mobilefriends_to_me");
        checkboxpreference2 = (CheckBoxPreference)ipreferencescreen.a("contact_info_recommend_fbfriends_to_me");
        if(!a(256))
            flag4 = true;
        else
            flag4 = flag1;
        checkboxpreference1.setChecked(flag4);
        if(!a(128))
            flag5 = true;
        else
            flag5 = flag1;
        checkboxpreference.setChecked(flag5);
        ((HelperHeaderPreference)ipreferencescreen.a("contact_info_header_helper")).a(contact, f);
        if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
            flag6 = true;
        else
            flag6 = flag1;
        if(flag6)
        {
            ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_qq_entry"));
            ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_qq_entry_tip"));
        } else
        {
            ipreferencescreen.b(checkboxpreference);
        }
        if(FriendLogic.b() == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c)
            flag7 = true;
        else
            flag7 = flag1;
        if(flag7)
        {
            ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_mobile_entry"));
            ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_mobile_entry_tip"));
        } else
        {
            ipreferencescreen.b(checkboxpreference1);
            ipreferencescreen.a("contact_info_bind_mobile_entry").setSummary(0x7f0a01cd);
        }
        if((0x2000 & ConfigStorageLogic.f()) == 0)
            flag1 = true;
        if(flag1)
        {
            if(ConfigStorageLogic.m())
            {
                ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_fb_entry"));
                ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_fb_entry_tip"));
            } else
            {
                ipreferencescreen.b(checkboxpreference2);
                ipreferencescreen.a("contact_info_bind_fb_entry").setSummary(0x7f0a01cd);
            }
        } else
        {
            ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_fb_entry"));
            ipreferencescreen.b(ipreferencescreen.a("contact_info_bind_fb_entry_tip"));
            ipreferencescreen.b(checkboxpreference2);
        }
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        boolean flag1 = true;
        Log.d("MicroMsg.ContactWidgetFMessage", (new StringBuilder()).append("handlerEvent : key = ").append(s).toString());
        if(Util.h(s).length() <= 0)
            flag1 = flag;
        else
        if(s.equals("contact_info_recommend_qqfriends_to_me"))
        {
            boolean flag2;
            if(!((CheckBoxPreference)b.a("contact_info_recommend_qqfriends_to_me")).isChecked())
                flag2 = flag1;
            else
                flag2 = flag;
            a(flag2, 128, 6);
        } else
        if(s.equals("contact_info_recommend_mobilefriends_to_me"))
        {
            if(!((CheckBoxPreference)b.a("contact_info_recommend_mobilefriends_to_me")).isChecked())
                flag = flag1;
            a(flag, 256, 7);
        } else
        if(s.equals("contact_info_recommend_fbfriends_to_me"))
        {
            if(!((CheckBoxPreference)b.a("contact_info_recommend_fbfriends_to_me")).isChecked())
                flag = flag1;
            Log.d("MicroMsg.ContactWidgetFMessage", (new StringBuilder()).append("switch change : open = ").append(flag).append(" item value = ").append(256).append(" functionId = ").append(18).toString());
            int i = ConfigStorageLogic.e();
            int j;
            int k;
            if(flag)
                j = i | 4;
            else
                j = i & -5;
            MMCore.f().f().a(40, Integer.valueOf(j));
            if(flag)
                k = ((flag1) ? 1 : 0);
            else
                k = 2;
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(18, k));
        } else
        if(s.equals("contact_info_view_message"))
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/chatting/ChattingUI);
            if(c)
            {
                intent.putExtra("Chat_User", d.s());
                intent.putExtra("Chat_Mode", flag1);
                intent.addFlags(0x4000000);
                ((Activity)a).setResult(-1, intent);
                ((Activity)a).finish();
            } else
            {
                intent.putExtra("Chat_User", d.s());
                intent.putExtra("Chat_Mode", flag1);
                intent.addFlags(0x4000000);
                a.startActivity(intent);
                ((Activity)a).finish();
            }
        } else
        if(s.equals("contact_info_bind_mobile_entry"))
            MMWizardActivity.a(a, new Intent(a, com/tencent/mm/ui/bindmobile/BindMContactIntroUI));
        else
        if(s.equals("contact_info_bind_qq_entry"))
            MMWizardActivity.a(a, new Intent(a, com/tencent/mm/ui/bindqq/BindQQUI));
        else
        if(s.equals("contact_info_bind_fb_entry"))
            a.startActivity(new Intent(a, com/tencent/mm/ui/facebook/FacebookAuthUI));
        else
        if(s.equals("contact_info_fmessage_clear_data"))
        {
            String as[] = a.getResources().getStringArray(0x7f06000a);
            MMAlert.a(a, null, as, "", new _cls1());
        } else
        {
            Log.a("MicroMsg.ContactWidgetFMessage", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            flag1 = flag;
        }
        return flag1;
    }

    private Context a;
    private IPreferenceScreen b;
    private boolean c;
    private Contact d;
    private int e;
    private HelperHeaderPreference.IHandler f;

    private class _cls1
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
            MsgInfoStorageLogic.d("fmessage");
            MMCore.f().j().a("fmessage");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetFMessage a;

        _cls1()
        {
            a = ContactWidgetFMessage.this;
            super();
        }
    }

}

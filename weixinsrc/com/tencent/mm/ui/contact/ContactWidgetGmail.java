// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.CheckBoxPreference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.setting.GmailAccountUI;
import java.util.Timer;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            GmailHelper, HelperHeaderPreference

public class ContactWidgetGmail
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetGmail(Context context)
    {
        b = context;
        d = new GmailHelper(context);
    }

    static Context a(ContactWidgetGmail contactwidgetgmail)
    {
        return contactwidgetgmail.b;
    }

    public static void a(Context context, boolean flag, MListAdapter mlistadapter)
    {
        String s;
        ProgressDialog progressdialog;
        _cls2 _lcls2;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls2 = new _cls2(flag, mlistadapter);
        (new Timer()).schedule(new _cls3(progressdialog, _lcls2), 1500L);
    }

    private void b()
    {
        boolean flag;
        if((0x800 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        a.a();
        a.a(0x7f050007);
        ((HelperHeaderPreference)a.a("contact_info_header_helper")).a(c, d);
        if(!flag)
        {
            a.b("contact_info_gmail_view");
            a.b("contact_info_gmail_account");
            a.b("contact_info_gmail_recv_mail");
            a.b("contact_info_gmail_uninstall");
        } else
        {
            a.b("contact_info_gmail_install");
            a.b("contact_info_gmail_view");
            a.b("contact_info_gmail_account");
            a.b("contact_info_gmail_recv_mail");
        }
    }

    public final void a(int i, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.f().f().b(this);
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)a.a("contact_info_header_helper");
        if(helperheaderpreference != null)
            helperheaderpreference.a();
        MMCore.g().b(new NetSceneSync(5));
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int i)
    {
        boolean flag1 = false;
        boolean flag2;
        if(contact != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        Assert.assertTrue(ContactStorageLogic.B(contact.s()));
        if(ipreferencescreen != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        MMCore.f().f().a(this);
        c = contact;
        a = ipreferencescreen;
        b();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        Log.d("MicroMsg.ContactWidgetGmail", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0)
            if(s.equals("contact_info_gmail_view"))
            {
                Intent intent = new Intent();
                intent.putExtra("Chat_User", "gmailapp");
                intent.setClass(b, com/tencent/mm/ui/chatting/ChattingUI);
                b.startActivity(intent);
                flag = true;
            } else
            if(s.equals("contact_info_gmail_account"))
            {
                Intent intent1 = new Intent();
                intent1.setClass(b, com/tencent/mm/ui/setting/GmailAccountUI);
                b.startActivity(intent1);
                flag = true;
            } else
            if(s.equals("contact_info_gmail_recv_mail"))
            {
                boolean flag1 = ((CheckBoxPreference)a.a(s)).isChecked();
                d.a(flag1);
                flag = true;
            } else
            if(s.equals("contact_info_gmail_install"))
            {
                a(b, true, null);
                flag = true;
            } else
            if(s.equals("contact_info_gmail_uninstall"))
            {
                String as[] = b.getResources().getStringArray(0x7f060009);
                MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls1());
                flag = true;
            } else
            {
                Log.a("MicroMsg.ContactWidgetGmail", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            }
        return flag;
    }

    public final void a_(String s)
    {
        if(s.equals("34"))
            b();
    }

    private IPreferenceScreen a;
    private Context b;
    private Contact c;
    private HelperHeaderPreference.IHandler d;

    private class _cls2 extends Handler
    {

        public final void handleMessage(Message message)
        {
            int i = ConfigStorageLogic.f();
            int j;
            if(a)
                j = i & 0xfffff7ff;
            else
                j = i | 0x800;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            if(!a)
            {
                MsgInfoStorageLogic.d("gmailapp");
                MMCore.f().j().a("gmailapp");
            }
            if(b != null)
                b.a_(null);
        }

        private boolean a;
        private MListAdapter b;

        _cls2(boolean flag, MListAdapter mlistadapter)
        {
            a = flag;
            b = mlistadapter;
            super();
        }
    }


    private class _cls3 extends TimerTask
    {

        public final void run()
        {
            if(a != null)
            {
                a.dismiss();
                b.sendEmptyMessage(0);
            }
        }

        private ProgressDialog a;
        private Handler b;

        _cls3(ProgressDialog progressdialog, Handler handler)
        {
            a = progressdialog;
            b = handler;
            super();
        }
    }


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
            ContactWidgetGmail.a(ContactWidgetGmail.a(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetGmail a;

        _cls1()
        {
            a = ContactWidgetGmail.this;
            super();
        }
    }

}

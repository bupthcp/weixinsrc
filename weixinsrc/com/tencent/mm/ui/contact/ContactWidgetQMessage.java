// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.CheckBoxPreference;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.friend.QQGroupUI;
import java.util.Timer;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            QMessageHelper, HelperHeaderPreference

public class ContactWidgetQMessage
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetQMessage(Context context)
    {
        b = context;
        e = new QMessageHelper(context);
    }

    static void a(int i, boolean flag, int j)
    {
        b(i, flag, j);
    }

    public static void a(Context context, boolean flag, MListAdapter mlistadapter)
    {
        String s;
        ProgressDialog progressdialog;
        _cls5 _lcls5;
        if(flag)
            s = context.getString(0x7f0a01a8);
        else
            s = context.getString(0x7f0a01a9);
        progressdialog = MMAlert.a(context, context.getString(0x7f0a0010), s, true, null);
        _lcls5 = new _cls5(flag, mlistadapter);
        (new Timer()).schedule(new _cls6(progressdialog, _lcls5), 1500L);
    }

    static void a(ContactWidgetQMessage contactwidgetqmessage)
    {
        contactwidgetqmessage.c();
    }

    private static boolean a(int i)
    {
        boolean flag;
        if((i & ConfigStorageLogic.d()) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    static Context b(ContactWidgetQMessage contactwidgetqmessage)
    {
        return contactwidgetqmessage.b;
    }

    public static void b()
    {
        MsgInfoStorageLogic.c();
        MMCore.f().j().c("@qqim");
        MMCore.f().j().a("qmessage");
    }

    private static void b(int i, boolean flag, int j)
    {
        int k = ConfigStorageLogic.d();
        int l;
        int i1;
        if(flag)
            l = k | i;
        else
            l = k & ~i;
        MMCore.f().f().a(7, Integer.valueOf(l));
        if(flag)
            i1 = 1;
        else
            i1 = 2;
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(j, i1));
    }

    private void c()
    {
        boolean flag;
        boolean flag1;
        if((0x20 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        flag1 = a(64);
        a.a();
        a.a(0x7f05000d);
        ((HelperHeaderPreference)a.a("contact_info_header_helper")).a(c, e);
        if(!flag)
        {
            a.b("contact_info_view_message");
            a.b("contact_info_qmessage_send_qq_message");
            a.b("contact_info_qmessage_recv_offline_msg");
            a.b("contact_info_qmessage_uninstall");
            a.b("contact_info_qmessage_clear_data");
        } else
        {
            a.b("contact_info_qmessage_install");
            ((CheckBoxPreference)a.a("contact_info_qmessage_recv_offline_msg")).setChecked(flag1);
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
        Assert.assertTrue(ContactStorageLogic.k(contact.s()));
        if(ipreferencescreen != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        MMCore.f().f().a(this);
        c = contact;
        d = flag;
        a = ipreferencescreen;
        c();
        return true;
    }

    public final boolean a(String s)
    {
        Log.d("MicroMsg.ContactWidgetQMessage", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() > 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L9:
        return flag;
_L2:
        if(s.equals("contact_info_view_message"))
        {
            Intent intent = new Intent(b, com/tencent/mm/ui/QConversationUI);
            if(d)
                ((Activity)b).setResult(-1, intent);
            else
                b.startActivity(intent);
            ((Activity)b).finish();
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
        if(s.equals("contact_info_qmessage_send_qq_message"))
        {
            Intent intent1 = new Intent(b, com/tencent/mm/ui/friend/QQGroupUI);
            intent1.putExtra("qqgroup_sendmessage", true);
            b.startActivity(intent1);
            ((Activity)b).finish();
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
        if(!s.equals("contact_info_qmessage_recv_offline_msg")) goto _L4; else goto _L3
_L3:
        CheckBoxPreference checkboxpreference = (CheckBoxPreference)a.a(s);
        if(!checkboxpreference.isChecked()) goto _L6; else goto _L5
_L5:
        b(64, true, 5);
_L7:
        flag = true;
        continue; /* Loop/switch isn't completed */
_L6:
        if(!a(8192))
        {
            b(64, false, 5);
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
        MMAlert.a(b, 0x7f0a0276, 0x7f0a0010, new _cls1(), new _cls2(checkboxpreference));
        if(true) goto _L7; else goto _L4
_L4:
        if(s.equals("contact_info_qmessage_display_weixin_online"))
        {
            b(8192, ((CheckBoxPreference)a.a(s)).isChecked(), 12);
            flag = true;
        } else
        if(s.equals("contact_info_qmessage_clear_data"))
        {
            String as1[] = b.getResources().getStringArray(0x7f06000a);
            MMAlert.a(b, null, as1, "", new _cls3());
            flag = true;
        } else
        if(s.equals("contact_info_qmessage_install"))
        {
            a(b, true, ((MListAdapter) (null)));
            flag = true;
        } else
        if(s.equals("contact_info_qmessage_uninstall"))
        {
            String as[] = b.getResources().getStringArray(0x7f060009);
            MMAlert.a(b, b.getString(0x7f0a01aa), as, "", new _cls4());
            flag = true;
        } else
        {
            Log.a("MicroMsg.ContactWidgetQMessage", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            flag = false;
        }
        if(true) goto _L9; else goto _L8
_L8:
    }

    public final void a_(String s)
    {
        if(s.equals("7") || s.equals("34") || s.equals("64") || s.equals("8192"))
            c();
    }

    private IPreferenceScreen a;
    private Context b;
    private Contact c;
    private boolean d;
    private HelperHeaderPreference.IHandler e;

    private class _cls5 extends Handler
    {

        public final void handleMessage(Message message)
        {
            ContactWidgetQMessage.a(64, a, 5);
            ContactWidgetQMessage.a(8192, a, 12);
            int i = ConfigStorageLogic.f();
            int j;
            if(a)
                j = i & 0xffffffdf;
            else
                j = i | 0x20;
            MMCore.f().f().a(34, Integer.valueOf(j));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", j, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            if(!a)
                ContactWidgetQMessage.b();
            if(b != null)
                b.a_(null);
        }

        private boolean a;
        private MListAdapter b;

        _cls5(boolean flag, MListAdapter mlistadapter)
        {
            a = flag;
            b = mlistadapter;
            super();
        }
    }


    private class _cls6 extends TimerTask
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

        _cls6(ProgressDialog progressdialog, Handler handler)
        {
            a = progressdialog;
            b = handler;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            ContactWidgetQMessage.a(8192, false, 12);
            ContactWidgetQMessage.a(64, false, 5);
        }

        private ContactWidgetQMessage a;

        _cls1()
        {
            a = ContactWidgetQMessage.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.setChecked(true);
            ContactWidgetQMessage.a(b);
        }

        private CheckBoxPreference a;
        private ContactWidgetQMessage b;

        _cls2(CheckBoxPreference checkboxpreference)
        {
            b = ContactWidgetQMessage.this;
            a = checkboxpreference;
            super();
        }
    }


    private class _cls3
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
            ContactWidgetQMessage.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetQMessage a;

        _cls3()
        {
            a = ContactWidgetQMessage.this;
            super();
        }
    }


    private class _cls4
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
            ContactWidgetQMessage.a(ContactWidgetQMessage.b(a), false, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetQMessage a;

        _cls4()
        {
            a = ContactWidgetQMessage.this;
            super();
        }
    }

}

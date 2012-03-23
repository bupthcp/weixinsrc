// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.preference.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.qqmail.ui.ComposeUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.tools.WebViewUI;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.contact:
//            HelperHeaderPreference

public class ContactWidgetQQMail
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange, ContactInfoUI.IBodyWidget
{

    public ContactWidgetQQMail(Context context)
    {
        boolean flag;
        if(context != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        a = context;
        h = new QQMailHelper(context);
    }

    static ProgressDialog a(ContactWidgetQQMail contactwidgetqqmail, ProgressDialog progressdialog)
    {
        contactwidgetqqmail.j = progressdialog;
        return progressdialog;
    }

    static void a(ContactWidgetQQMail contactwidgetqqmail)
    {
        contactwidgetqqmail.a(false);
    }

    static void a(ContactWidgetQQMail contactwidgetqqmail, boolean flag)
    {
        if(Util.c(contactwidgetqqmail.a))
        {
            if(flag)
                MMCore.f().f().a(17, Integer.valueOf(1));
            int l = ConfigStorageLogic.f();
            int i1;
            if(flag)
                i1 = l & -2;
            else
                i1 = l | 1;
            MMCore.f().f().a(34, Integer.valueOf(i1));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", i1, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            if(!flag)
                b();
        }
    }

    private void a(boolean flag)
    {
        String s;
        if(flag)
            s = a.getString(0x7f0a01a8);
        else
            s = a.getString(0x7f0a01a9);
        i = MMAlert.a(a, a.getString(0x7f0a0010), s, true, null);
        k = true;
        ((QQMailHelper)h).a(flag);
    }

    static ProgressDialog b(ContactWidgetQQMail contactwidgetqqmail)
    {
        return contactwidgetqqmail.j;
    }

    public static void b()
    {
        MsgInfoStorageLogic.d("qqmail");
        MMCore.f().j().a("qqmail");
    }

    static ProgressDialog c(ContactWidgetQQMail contactwidgetqqmail)
    {
        return contactwidgetqqmail.i;
    }

    static boolean c()
    {
        return k;
    }

    static ProgressDialog d(ContactWidgetQQMail contactwidgetqqmail)
    {
        contactwidgetqqmail.i = null;
        return null;
    }

    static boolean d()
    {
        return f();
    }

    static boolean e()
    {
        k = false;
        return false;
    }

    private static boolean f()
    {
        boolean flag;
        if((1 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private void g()
    {
        d = f();
        boolean flag;
        if(Util.a((Integer)MMCore.f().f().a(17)) == 1)
            flag = true;
        else
            flag = false;
        e = flag;
        f.a();
        if(g.containsKey("contact_info_header_helper"))
        {
            HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)g.get("contact_info_header_helper");
            helperheaderpreference.a(b, h);
            f.a(helperheaderpreference);
        }
        if(d) goto _L2; else goto _L1
_L1:
        if(g.containsKey("contact_info_qqmailhelper_install"))
            f.a((Preference)g.get("contact_info_qqmailhelper_install"));
_L4:
        return;
_L2:
        if(e)
        {
            if(g.containsKey("contact_info_qqmailhelper_view"))
                f.a((Preference)g.get("contact_info_qqmailhelper_view"));
            if(g.containsKey("contact_info_qqmailhelper_hide_cat4"))
                f.a((Preference)g.get("contact_info_qqmailhelper_hide_cat4"));
            if(g.containsKey("contact_info_qqmailhelper_compose"))
                f.a((Preference)g.get("contact_info_qqmailhelper_compose"));
            if(g.containsKey("contact_info_qqmailhelper_hide_cat"))
                f.a((Preference)g.get("contact_info_qqmailhelper_hide_cat"));
        }
        if(g.containsKey("contact_info_qqmailhelper_recv_remind"))
        {
            CheckBoxPreference checkboxpreference = (CheckBoxPreference)g.get("contact_info_qqmailhelper_recv_remind");
            checkboxpreference.setChecked(e);
            f.a(checkboxpreference);
        }
        if(e && g.containsKey("contact_info_qqmailhelper_set_files_view"))
            f.a((Preference)g.get("contact_info_qqmailhelper_set_files_view"));
        if(g.containsKey("contact_info_qqmailhelper_hide_cat2"))
            f.a((Preference)g.get("contact_info_qqmailhelper_hide_cat2"));
        if(g.containsKey("contact_info_qqmailhelper_clear_data"))
            f.a((Preference)g.get("contact_info_qqmailhelper_clear_data"));
        if(g.containsKey("contact_info_qqmailhelper_hide_cat3"))
            f.a((Preference)g.get("contact_info_qqmailhelper_hide_cat3"));
        if(g.containsKey("contact_info_qqmailhelper_uninstall"))
            f.a((Preference)g.get("contact_info_qqmailhelper_uninstall"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int l, Intent intent)
    {
    }

    public final boolean a()
    {
        MMCore.f().f().b(this);
        HelperHeaderPreference helperheaderpreference = (HelperHeaderPreference)g.get("contact_info_header_helper");
        if(helperheaderpreference != null)
            helperheaderpreference.a();
        if(i != null)
        {
            i.dismiss();
            i = null;
        }
        if(j != null)
        {
            j.dismiss();
            j = null;
        }
        return true;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Contact contact, boolean flag, int l)
    {
        boolean flag1 = false;
        boolean flag2;
        Preference preference;
        Preference preference1;
        Preference preference2;
        Preference preference3;
        Preference preference4;
        PreferenceCategory preferencecategory;
        Preference preference5;
        PreferenceCategory preferencecategory1;
        Preference preference6;
        PreferenceCategory preferencecategory2;
        Preference preference7;
        Preference preference8;
        if(ipreferencescreen != null)
            flag2 = true;
        else
            flag2 = flag1;
        Assert.assertTrue(flag2);
        if(contact != null)
            flag1 = true;
        Assert.assertTrue(flag1);
        Assert.assertTrue(ContactStorageLogic.g(contact.s()));
        MMCore.f().f().a(this);
        c = flag;
        b = contact;
        f = ipreferencescreen;
        ipreferencescreen.a(0x7f05000f);
        preference = ipreferencescreen.a("contact_info_header_helper");
        if(preference != null)
            g.put("contact_info_header_helper", preference);
        preference1 = ipreferencescreen.a("contact_info_qqmailhelper_view");
        if(preference1 != null)
            g.put("contact_info_qqmailhelper_view", preference1);
        preference2 = ipreferencescreen.a("contact_info_qqmailhelper_hide_cat4");
        if(preference2 != null)
            g.put("contact_info_qqmailhelper_hide_cat4", preference2);
        preference3 = ipreferencescreen.a("contact_info_qqmailhelper_compose");
        if(preference3 != null)
            g.put("contact_info_qqmailhelper_compose", preference3);
        preference4 = ipreferencescreen.a("contact_info_qqmailhelper_set_files_view");
        if(preference4 != null)
            g.put("contact_info_qqmailhelper_set_files_view", preference4);
        preferencecategory = (PreferenceCategory)ipreferencescreen.a("contact_info_qqmailhelper_hide_cat");
        if(preferencecategory != null)
            g.put("contact_info_qqmailhelper_hide_cat", preferencecategory);
        preference5 = ipreferencescreen.a("contact_info_qqmailhelper_recv_remind");
        if(preference5 != null)
            g.put("contact_info_qqmailhelper_recv_remind", preference5);
        preferencecategory1 = (PreferenceCategory)ipreferencescreen.a("contact_info_qqmailhelper_hide_cat2");
        if(preferencecategory1 != null)
            g.put("contact_info_qqmailhelper_hide_cat2", preferencecategory1);
        preference6 = ipreferencescreen.a("contact_info_qqmailhelper_clear_data");
        if(preference6 != null)
            g.put("contact_info_qqmailhelper_clear_data", preference6);
        preferencecategory2 = (PreferenceCategory)ipreferencescreen.a("contact_info_qqmailhelper_hide_cat3");
        if(preferencecategory2 != null)
            g.put("contact_info_qqmailhelper_hide_cat3", preferencecategory2);
        preference7 = ipreferencescreen.a("contact_info_qqmailhelper_install");
        if(preference7 != null)
            g.put("contact_info_qqmailhelper_install", preference7);
        preference8 = ipreferencescreen.a("contact_info_qqmailhelper_uninstall");
        if(preference8 != null)
            g.put("contact_info_qqmailhelper_uninstall", preference8);
        g();
        return true;
    }

    public final boolean a(String s)
    {
        boolean flag = false;
        boolean flag1 = true;
        Log.d("MicroMsg.ContactWidgetQQMail", (new StringBuilder()).append("handleEvent : key = ").append(s).toString());
        if(Util.h(s).length() <= 0)
            flag1 = flag;
        else
        if(s.equals("contact_info_qqmailhelper_view"))
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/chatting/ChattingUI);
            if(c)
            {
                intent.putExtra("Chat_User", b.s());
                intent.putExtra("Chat_Mode", flag1);
                intent.addFlags(0x4000000);
                ((Activity)a).setResult(-1, intent);
            } else
            {
                intent.putExtra("Chat_User", b.s());
                intent.putExtra("Chat_Mode", flag1);
                intent.addFlags(0x4000000);
                a.startActivity(intent);
            }
            ((Activity)a).finish();
        } else
        if(s.equals("contact_info_qqmailhelper_compose"))
        {
            Intent intent1 = new Intent(a, com/tencent/mm/plugin/qqmail/ui/ComposeUI);
            if(c)
            {
                intent1.putExtra("Chat_User", b.s());
                intent1.putExtra("Chat_Mode", flag1);
                intent1.addFlags(0x4000000);
                ((Activity)a).setResult(-1, intent1);
            } else
            {
                intent1.putExtra("Chat_User", b.s());
                intent1.putExtra("Chat_Mode", flag1);
                intent1.addFlags(0x4000000);
                a.startActivity(intent1);
            }
            ((Activity)a).finish();
        } else
        if(s.equals("contact_info_qqmailhelper_set_files_view"))
        {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse((String)MMCore.f().f().a(29)));
            intent2.putExtra("title", a.getString(0x7f0a0252));
            intent2.putExtra("zoom", flag);
            intent2.putExtra("vertical_scroll", flag);
            intent2.setClass(a, com/tencent/mm/ui/tools/WebViewUI);
            a.startActivity(intent2);
            ((Activity)a).finish();
        } else
        if(s.equals("contact_info_qqmailhelper_recv_remind"))
        {
            CheckBoxPreference checkboxpreference = (CheckBoxPreference)f.a(s);
            boolean flag2 = checkboxpreference.isChecked();
            h.a(flag2);
            if(!flag2)
                flag = flag1;
            checkboxpreference.setChecked(flag);
        } else
        if(s.equals("contact_info_qqmailhelper_clear_data"))
        {
            String as1[] = a.getResources().getStringArray(0x7f06000a);
            MMAlert.a(a, MMCore.c().getString(0x7f0a024e), as1, "", new _cls1());
        } else
        if(s.equals("contact_info_qqmailhelper_install"))
            a(flag1);
        else
        if(s.equals("contact_info_qqmailhelper_uninstall"))
        {
            String as[] = a.getResources().getStringArray(0x7f060009);
            MMAlert.a(a, a.getString(0x7f0a01aa), as, "", new _cls2());
        } else
        {
            Log.a("MicroMsg.ContactWidgetQQMail", (new StringBuilder()).append("handleEvent : unExpected key = ").append(s).toString());
            flag1 = flag;
        }
        return flag1;
    }

    public final void a_(String s)
    {
        if(s.equals("7") || s.equals("34") || s.equals("17"))
            g();
    }

    private static boolean k = false;
    private Context a;
    private Contact b;
    private boolean c;
    private boolean d;
    private boolean e;
    private IPreferenceScreen f;
    private final Map g = new HashMap();
    private HelperHeaderPreference.IHandler h;
    private ProgressDialog i;
    private ProgressDialog j;


    private class QQMailHelper
        implements IOnSceneEnd, HelperHeaderPreference.IHandler
    {

        static Context a(QQMailHelper qqmailhelper)
        {
            return qqmailhelper.b;
        }

        public final CharSequence a()
        {
            return b.getString(0x7f0a024f);
        }

        public final void a(int l, int i1, String s, NetSceneBase netscenebase)
        {
            int j1 = 1;
            if(netscenebase.b() == 24) goto _L2; else goto _L1
_L1:
            Log.b("MicroMsg.QQMailHelper", (new StringBuilder()).append("onSceneEnd : unExpected type = ").append(netscenebase.b()).toString());
_L4:
            return;
_L2:
            if(ContactWidgetQQMail.b(a) != null)
            {
                ContactWidgetQQMail.b(a).dismiss();
                ContactWidgetQQMail.a(a, null);
            }
            if(ContactWidgetQQMail.c(a) != null)
            {
                ContactWidgetQQMail.c(a).dismiss();
                ContactWidgetQQMail.d(a);
            }
            if(!Util.c(b))
                continue; /* Loop/switch isn't completed */
            if(l == 0 && i1 == 0)
            {
                boolean flag1 = ((NetSceneSwitchPushMail)netscenebase).f();
                ConfigStorage configstorage = MMCore.f().f();
                if(!flag1)
                    j1 = 2;
                configstorage.a(17, Integer.valueOf(j1));
                if(!ContactWidgetQQMail.c())
                {
                    if(c != null)
                        c.a(ContactWidgetQQMail.d());
                } else
                {
                    ContactWidgetQQMail.a(a, flag1);
                }
                ContactWidgetQQMail.e();
                continue; /* Loop/switch isn't completed */
            }
            boolean flag = ((NetSceneSwitchPushMail)netscenebase).f();
            Log.a("MicroMsg.QQMailHelper", (new StringBuilder()).append("NetSceneSwitchPushMail fail : errType = ").append(l).append(", errCode = ").append(i1).toString());
            if(l == 4)
                switch(i1)
                {
                default:
                    continue; /* Loop/switch isn't completed */

                case -31: 
                    Log.c("MicroMsg.QQMailHelper", "need second pass");
                    View view = View.inflate(b, 0x7f0300cf, null);
                    EditText edittext = (EditText)view.findViewById(0x7f07022e);
                    class _cls2
                        implements android.content.DialogInterface.OnClickListener
                    {

                        public void onClick(DialogInterface dialoginterface, int l1)
                        {
                            NetSceneSwitchPushMail netsceneswitchpushmail = new NetSceneSwitchPushMail(a, MD5.a(b.getText().toString().trim().getBytes()));
                            MMCore.g().b(netsceneswitchpushmail);
                            class _cls1
                                implements android.content.DialogInterface.OnCancelListener
                            {

                                public void onCancel(DialogInterface dialoginterface1)
                                {
                                    MMCore.g().a(a);
                                }

                                private NetSceneSwitchPushMail a;
                                private _cls2 b;

                                    _cls1(NetSceneSwitchPushMail netsceneswitchpushmail)
                                    {
                                        b = _cls2.this;
                                        a = netsceneswitchpushmail;
                                        super();
                                    }
                            }

                            ContactWidgetQQMail.a(c.a, MMAlert.a(QQMailHelper.a(c), QQMailHelper.a(c).getString(0x7f0a0253), QQMailHelper.a(c).getString(0x7f0a0026), true, new _cls1(netsceneswitchpushmail)));
                        }

                        private boolean a;
                        private EditText b;
                        private QQMailHelper c;

                _cls2(boolean flag, EditText edittext)
                {
                    c = QQMailHelper.this;
                    a = flag;
                    b = edittext;
                    super();
                }
                    }

                    MMAlert.a(b, b.getString(0x7f0a0256), view, new _cls2(flag, edittext));
                    continue; /* Loop/switch isn't completed */

                case -1: 
                    Log.b("MicroMsg.QQMailHelper", "onSceneEnd, sys err");
                    break;
                }
            String s1;
            if(ContactWidgetQQMail.c())
            {
                Context context = b;
                int k1;
                if(flag)
                    k1 = 0x7f0a01ab;
                else
                    k1 = 0x7f0a01ac;
                s1 = context.getString(k1);
            } else
            {
                s1 = b.getString(0x7f0a00b0);
            }
            Toast.makeText(b, s1, j1).show();
            ContactWidgetQQMail.e();
            if(true) goto _L4; else goto _L3
_L3:
        }

        public final void a(HelperHeaderPreference helperheaderpreference)
        {
            b();
            c = helperheaderpreference;
            MMCore.g().a(24, this);
            helperheaderpreference.a(ContactWidgetQQMail.d());
        }

        public final boolean a(boolean flag)
        {
            NetSceneSwitchPushMail netsceneswitchpushmail = new NetSceneSwitchPushMail(flag, "");
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    MMCore.g().a(a);
                }

                private NetSceneSwitchPushMail a;
                private QQMailHelper b;

                _cls1(NetSceneSwitchPushMail netsceneswitchpushmail)
                {
                    b = QQMailHelper.this;
                    a = netsceneswitchpushmail;
                    super();
                }
            }

            if(!ContactWidgetQQMail.c())
                ContactWidgetQQMail.a(a, MMAlert.a(b, "", b.getString(0x7f0a0026), true, new _cls1(netsceneswitchpushmail)));
            MMCore.g().b(netsceneswitchpushmail);
            return false;
        }

        public final void b()
        {
            c = null;
            MMCore.g().b(24, this);
        }

        final ContactWidgetQQMail a;
        private Context b;
        private HelperHeaderPreference c;

        public QQMailHelper(Context context)
        {
            a = ContactWidgetQQMail.this;
            super();
            b = context;
        }
    }


    private class _cls1
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int l)
        {
            l;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetQQMail.b();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetQQMail a;

        _cls1()
        {
            a = ContactWidgetQQMail.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
    {

        public final void a(int l)
        {
            l;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetQQMail.a(a);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ContactWidgetQQMail a;

        _cls2()
        {
            a = ContactWidgetQQMail.this;
            super();
        }
    }

}

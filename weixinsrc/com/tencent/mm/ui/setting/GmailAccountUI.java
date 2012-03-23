// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneGmailOper;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.plugin.gmailapp.model.GmailInfo;
import com.tencent.mm.ui.*;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.ui.setting:
//            AddGmailAccountUI

public class GmailAccountUI extends MMPreference
    implements IOnSceneEnd
{

    public GmailAccountUI()
    {
        b = new HashMap();
        c = null;
    }

    static ProgressDialog a(GmailAccountUI gmailaccountui, ProgressDialog progressdialog)
    {
        gmailaccountui.c = progressdialog;
        return progressdialog;
    }

    static GmailInfo a(GmailAccountUI gmailaccountui)
    {
        return gmailaccountui.e;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 60 && ((NetSceneGmailOper)netscenebase).g() == 2)
        {
            if(c != null)
            {
                c.dismiss();
                c = null;
            }
            if(i != 0 || j != 0)
                d = MMAlert.a(this, 0x7f0a040e, 0x7f0a0010);
            else
            if(((NetSceneGmailOper)netscenebase).f() != 0)
                d = MMAlert.a(this, 0x7f0a040e, 0x7f0a0010);
            else
                finish();
        }
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag;
        String s;
        flag = true;
        s = preference.getKey();
        if(s == null || !s.equals("gmail_account_set_account")) goto _L2; else goto _L1
_L1:
        Intent intent = new Intent();
        intent.setClass(this, com/tencent/mm/ui/setting/AddGmailAccountUI);
        startActivity(intent);
_L4:
        return flag;
_L2:
        if(s != null && s.equals("gmail_account_delete_account"))
        {
            if(e != null)
                d = MMAlert.a(this, 0x7f0a040b, 0x7f0a0010, new _cls2());
        } else
        {
            flag = false;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int d_()
    {
        return -1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = q();
        a.a(0x7f050019);
        d(0x7f0a0408);
        b(new _cls1());
        Preference preference = a.a("gmail_account_image");
        if(preference != null)
            b.put("gmail_account_image", preference);
        Preference preference1 = a.a("gmail_account_tip");
        if(preference1 != null)
            b.put("gmail_account_tip", preference1);
        Preference preference2 = a.a("gmail_account_myaccount");
        if(preference2 != null)
            b.put("gmail_account_myaccount", preference2);
        Preference preference3 = a.a("gmail_account_cat");
        if(preference3 != null)
            b.put("gmail_account_cat", preference3);
        Preference preference4 = a.a("gmail_account_set_account");
        if(preference4 != null)
            b.put("gmail_account_set_account", preference4);
        Preference preference5 = a.a("gmail_account_delete_account");
        if(preference5 != null)
            b.put("gmail_account_delete_account", preference5);
        MMCore.g().a(60, this);
    }

    public void onDestroy()
    {
        if(d != null)
            d.dismiss();
        super.onDestroy();
        MMCore.g().b(60, this);
    }

    public void onPause()
    {
        super.onPause();
        Log.e("MicroMsg.GmailAccount", "on pause");
    }

    public void onResume()
    {
        super.onResume();
        Log.e("MicroMsg.GmailAccount", "on resume");
        a.a();
        e = null;
        boolean flag;
        if(e != null)
            flag = true;
        else
            flag = false;
        if(b.containsKey("gmail_account_image"))
        {
            ImagePreference imagepreference = (ImagePreference)b.get("gmail_account_image");
            int i;
            if(flag)
                i = 0x7f020126;
            else
                i = 0x7f020127;
            imagepreference.a(i);
            a.a(imagepreference);
        }
        if(b.containsKey("gmail_account_tip"))
            a.a((Preference)b.get("gmail_account_tip"));
        if(!flag) goto _L2; else goto _L1
_L1:
        if(b.containsKey("gmail_account_myaccount"))
            a.a((Preference)b.get("gmail_account_myaccount"));
        if(b.containsKey("gmail_account_cat"))
            a.a((Preference)b.get("gmail_account_cat"));
        if(b.containsKey("gmail_account_delete_account"))
            a.a((Preference)b.get("gmail_account_delete_account"));
_L4:
        return;
_L2:
        if(b.containsKey("gmail_account_set_account"))
            a.a((Preference)b.get("gmail_account_set_account"));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private IPreferenceScreen a;
    private Map b;
    private ProgressDialog c;
    private AlertDialog d;
    private GmailInfo e;

    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
            NetSceneGmailOper netscenegmailoper = new NetSceneGmailOper(2, GmailAccountUI.a(a).a(), "");
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface1)
                {
                    MMCore.g().a(a);
                }

                private NetSceneGmailOper a;
                private _cls2 b;

                _cls1(NetSceneGmailOper netscenegmailoper)
                {
                    b = _cls2.this;
                    a = netscenegmailoper;
                    super();
                }
            }

            GmailAccountUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a040d), true, new _cls1(netscenegmailoper)));
        }

        private GmailAccountUI a;

        _cls2()
        {
            a = GmailAccountUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private GmailAccountUI a;

        _cls1()
        {
            a = GmailAccountUI.this;
            super();
        }
    }

}

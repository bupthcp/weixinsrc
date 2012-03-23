// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneFaceBookAuth;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.facebook.sdk.Facebook;
import java.util.HashMap;
import java.util.Map;

public class FacebookAuthUI extends MMPreference
    implements IOnSceneEnd
{

    public FacebookAuthUI()
    {
        f = false;
    }

    static ProgressDialog a(FacebookAuthUI facebookauthui, ProgressDialog progressdialog)
    {
        facebookauthui.c = progressdialog;
        return progressdialog;
    }

    static NetSceneFaceBookAuth a(FacebookAuthUI facebookauthui)
    {
        return facebookauthui.e;
    }

    static NetSceneFaceBookAuth a(FacebookAuthUI facebookauthui, NetSceneFaceBookAuth netscenefacebookauth)
    {
        facebookauthui.e = netscenefacebookauth;
        return netscenefacebookauth;
    }

    static android.content.DialogInterface.OnCancelListener b(FacebookAuthUI facebookauthui)
    {
        return facebookauthui.d;
    }

    static ProgressDialog c(FacebookAuthUI facebookauthui)
    {
        return facebookauthui.c;
    }

    static Facebook d(FacebookAuthUI facebookauthui)
    {
        return facebookauthui.b;
    }

    private void o()
    {
        g.a();
        boolean flag;
        if(f)
            flag = false;
        else
            flag = ConfigStorageLogic.m();
        if(h.containsKey("facebook_auth_tip"))
        {
            Preference preference5 = (Preference)h.get("facebook_auth_tip");
            Preference preference3;
            Preference preference4;
            int i;
            if(flag)
                i = 0x7f0a048f;
            else
                i = 0x7f0a048e;
            preference5.setTitle(i);
            g.a(preference5);
        }
        if(h.containsKey("facebook_auth_cat"))
        {
            preference4 = (Preference)h.get("facebook_auth_cat");
            g.a(preference4);
        }
        if(flag) goto _L2; else goto _L1
_L1:
        if(h.containsKey("facebook_auth_bind_btn"))
        {
            preference3 = (Preference)h.get("facebook_auth_bind_btn");
            g.a(preference3);
        }
_L4:
        return;
_L2:
        if(h.containsKey("facebook_auth_account"))
        {
            Preference preference2 = (Preference)h.get("facebook_auth_account");
            preference2.setTitle((new StringBuilder()).append(getString(0x7f0a0490)).append(MMCore.f().f().a(0x10122)).toString());
            g.a(preference2);
        }
        if(h.containsKey("facebook_auth_cat2"))
        {
            Preference preference1 = (Preference)h.get("facebook_auth_cat2");
            g.a(preference1);
        }
        if(h.containsKey("facebook_auth_unbind_btn"))
        {
            Preference preference = (Preference)h.get("facebook_auth_unbind_btn");
            g.a(preference);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 84) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(c != null)
            c.dismiss();
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0))
        {
            int k = ((NetSceneFaceBookAuth)netscenebase).f();
            if(i == 0 && j == 0)
            {
                int i1;
                if(k == 0)
                    i1 = 0x7f0a0482;
                else
                    i1 = 0x7f0a0480;
                Toast.makeText(this, i1, 1).show();
                f = false;
                o();
                if(k == 1)
                {
                    MMCore.f().j().a("facebookapp");
                    MMCore.f().i().f("facebookapp");
                }
            } else
            if(i == 4 && j == -67)
            {
                Toast.makeText(this, 0x7f0a0493, 1).show();
            } else
            {
                int l;
                if(k == 0)
                    l = 0x7f0a0483;
                else
                    l = 0x7f0a0481;
                Toast.makeText(this, l, 1).show();
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        boolean flag = true;
        String s = preference.getKey();
        if(s == null)
            Log.a("MicroMsg.FacebookAuthUI", "onPreferenceTreeClick, key is null");
        else
        if(s.equals("facebook_auth_bind_btn"))
        {
            try
            {
                b.b(this);
            }
            catch(Exception exception) { }
            b = new Facebook("290293790992170");
            b.a(this, a, new LoginDialogListener());
        } else
        if(s.equals("facebook_auth_unbind_btn"))
            MMAlert.a(this, 0x7f0a048a, 0x7f0a0010, new _cls3(), new _cls4());
        else
            flag = false;
        return flag;
    }

    public final int d_()
    {
        return 0x7f050017;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        b.a(i, j, intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        g = q();
        f = getIntent().getBooleanExtra("is_force_unbind", false);
        b = new Facebook("290293790992170");
        d = new _cls1();
        g.a(0x7f050017);
        Preference preference = g.a("facebook_auth_tip");
        if(preference != null)
            h.put("facebook_auth_tip", preference);
        Preference preference1 = g.a("facebook_auth_cat");
        if(preference1 != null)
            h.put("facebook_auth_cat", preference1);
        Preference preference2 = g.a("facebook_auth_bind_btn");
        if(preference2 != null)
            h.put("facebook_auth_bind_btn", preference2);
        Preference preference3 = g.a("facebook_auth_account");
        if(preference3 != null)
            h.put("facebook_auth_account", preference3);
        Preference preference4 = g.a("facebook_auth_cat2");
        if(preference4 != null)
            h.put("facebook_auth_cat2", preference4);
        Preference preference5 = g.a("facebook_auth_unbind_btn");
        if(preference5 != null)
            h.put("facebook_auth_unbind_btn", preference5);
        b(new _cls2());
    }

    protected void onPause()
    {
        super.onPause();
        MMCore.g().b(84, this);
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.g().a(84, this);
        o();
    }

    private static String a[];
    private Facebook b;
    private ProgressDialog c;
    private android.content.DialogInterface.OnCancelListener d;
    private NetSceneFaceBookAuth e;
    private boolean f;
    private IPreferenceScreen g;
    private final Map h = new HashMap();

    static 
    {
        String as[] = new String[2];
        as[0] = "offline_access";
        as[1] = "publish_stream";
        a = as;
    }

    private class LoginDialogListener
        implements com.tencent.mm.ui.facebook.sdk.Facebook.DialogListener
    {

        public final void a()
        {
            Log.d("MicroMsg.FacebookAuthUI", "onCancel");
        }

        public final void a(Bundle bundle)
        {
            Log.d("MicroMsg.FacebookAuthUI", (new StringBuilder()).append("token:").append(FacebookAuthUI.d(a).b()).toString());
            String s = a.getString(0x7f0a0010);
            String s1 = a.getString(0x7f0a048b);
            FacebookAuthUI.a(a, ProgressDialog.show(a, s, s1, true));
            FacebookAuthUI.c(a).setOnCancelListener(FacebookAuthUI.b(a));
            FacebookAuthUI.a(a, new NetSceneFaceBookAuth(1, FacebookAuthUI.d(a).b()));
            MMCore.g().b(FacebookAuthUI.a(a));
        }

        public final void a(DialogError dialogerror)
        {
            Log.d("MicroMsg.FacebookAuthUI", (new StringBuilder()).append("onError:").append(dialogerror.getMessage()).toString());
            MMAlert.a(a, dialogerror.getMessage(), a.getString(0x7f0a0481));
        }

        public final void a(FacebookError facebookerror)
        {
            Log.d("MicroMsg.FacebookAuthUI", (new StringBuilder()).append("onFacebookError:").append(facebookerror.a()).toString());
            MMAlert.a(a, facebookerror.getMessage(), a.getString(0x7f0a0481));
        }

        private FacebookAuthUI a;

        LoginDialogListener()
        {
            this((byte)0);
        }

        private LoginDialogListener(byte byte0)
        {
            a = FacebookAuthUI.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            String s = a.getString(0x7f0a0010);
            String s1 = a.getString(0x7f0a048c);
            FacebookAuthUI.a(a, ProgressDialog.show(a, s, s1, true));
            FacebookAuthUI.c(a).setOnCancelListener(FacebookAuthUI.b(a));
            FacebookAuthUI.a(a, new NetSceneFaceBookAuth(0, ""));
            MMCore.g().b(FacebookAuthUI.a(a));
        }

        private FacebookAuthUI a;

        _cls3()
        {
            a = FacebookAuthUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private FacebookAuthUI a;

        _cls4()
        {
            a = FacebookAuthUI.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            if(FacebookAuthUI.a(a) != null)
                MMCore.g().a(FacebookAuthUI.a(a));
        }

        private FacebookAuthUI a;

        _cls1()
        {
            a = FacebookAuthUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private FacebookAuthUI a;

        _cls2()
        {
            a = FacebookAuthUI.this;
            super();
        }
    }

}

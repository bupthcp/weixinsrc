// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.model.ConfigStorageLogic;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneSendDomainEmail;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class SettingsAddDomainMailUI extends MMActivity
    implements IOnSceneEnd
{

    public SettingsAddDomainMailUI()
    {
    }

    static EditText a(SettingsAddDomainMailUI settingsadddomainmailui)
    {
        return settingsadddomainmailui.a;
    }

    static void b(SettingsAddDomainMailUI settingsadddomainmailui)
    {
        NetSceneSendDomainEmail netscenesenddomainemail = new NetSceneSendDomainEmail(ConfigStorageLogic.b(), settingsadddomainmailui.a.getText().toString().trim());
        MMCore.g().b(netscenesenddomainemail);
        settingsadddomainmailui.b = MMAlert.a(settingsadddomainmailui.c(), settingsadddomainmailui.getString(0x7f0a0010), settingsadddomainmailui.getString(0x7f0a0208), true, settingsadddomainmailui. new _cls3(netscenesenddomainemail));
    }

    protected final int a()
    {
        return 0x7f0300d9;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        int k;
        k = 0;
        Log.c("MicroMsg.SettingsAddEmailForJobUI", (new StringBuilder()).append("onSceneEnd: sceneType = ").append(netscenebase.b()).append(" errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, k)) goto _L2; else goto _L1
_L1:
        k = 1;
_L3:
        String s1;
        String s2;
        if(k == 0 && i == 0 && j == 0)
            MMAlert.a(c(), 0x7f0a0209, 0x7f0a0010, new _cls4());
        return;
_L2:
        i;
        JVM INSTR tableswitch 4 4: default 120
    //                   4 123;
           goto _L3 _L4
_L4:
        s1 = getString(0x7f0a0010);
        j;
        JVM INSTR tableswitch -28 -25: default 164
    //                   -28 223
    //                   -27 204
    //                   -26 193
    //                   -25 170;
           goto _L5 _L6 _L7 _L8 _L9
_L5:
        k = 1;
          goto _L3
_L9:
        s2 = getString(0x7f0a0213);
_L10:
        MMAlert.a(c(), s2, s1);
          goto _L5
_L8:
        s2 = getString(0x7f0a0210);
          goto _L10
_L7:
        s1 = getString(0x7f0a020e);
        s2 = getString(0x7f0a0211);
          goto _L10
_L6:
        s2 = getString(0x7f0a0212);
          goto _L10
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a020c);
        a = (EditText)findViewById(0x7f070242);
        a(0x7f0a0017, new _cls1());
        b(0x7f0a0015, new _cls2());
        MMCore.g().a(20, this);
    }

    public void onDestroy()
    {
        MMCore.g().b(20, this);
        super.onDestroy();
    }

    private EditText a;
    private ProgressDialog b;

    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSendDomainEmail a;
        private SettingsAddDomainMailUI b;

        _cls3(NetSceneSendDomainEmail netscenesenddomainemail)
        {
            b = SettingsAddDomainMailUI.this;
            a = netscenesenddomainemail;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            SettingsUIGroup.a.b();
        }

        private SettingsAddDomainMailUI a;

        _cls4()
        {
            a = SettingsAddDomainMailUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = SettingsAddDomainMailUI.a(a).getText().toString().trim();
            if(s != null && s.length() > 0)
            {
                a.n();
                if(!Util.c(s))
                    MMAlert.a(a.c(), 0x7f0a0212, 0x7f0a0010);
                else
                    SettingsAddDomainMailUI.b(a);
            }
        }

        private SettingsAddDomainMailUI a;

        _cls1()
        {
            a = SettingsAddDomainMailUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsAddDomainMailUI a;

        _cls2()
        {
            a = SettingsAddDomainMailUI.this;
            super();
        }
    }

}

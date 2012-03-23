// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneSendDomainEmail;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.GroupInfo;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

// Referenced classes of package com.tencent.mm.ui.setting:
//            SettingsUIGroup

public class SettingsModifyDomainMailUI extends MMActivity
    implements IOnSceneEnd
{

    public SettingsModifyDomainMailUI()
    {
    }

    static void a(SettingsModifyDomainMailUI settingsmodifydomainmailui)
    {
        NetSceneSendDomainEmail netscenesenddomainemail = new NetSceneSendDomainEmail(ConfigStorageLogic.b(), settingsmodifydomainmailui.d.b());
        MMCore.g().b(netscenesenddomainemail);
        settingsmodifydomainmailui.e = MMAlert.a(settingsmodifydomainmailui.c(), settingsmodifydomainmailui.getString(0x7f0a0010), settingsmodifydomainmailui.getString(0x7f0a0208), true, settingsmodifydomainmailui. new _cls4(netscenesenddomainemail));
    }

    static GroupInfo b(SettingsModifyDomainMailUI settingsmodifydomainmailui)
    {
        return settingsmodifydomainmailui.d;
    }

    protected final int a()
    {
        return 0x7f0300db;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.SettingsModifyDomainMailUI", (new StringBuilder()).append("onSceneEnd: sceneType = ").append(netscenebase.b()).append(" errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(e != null)
        {
            e.dismiss();
            e.dismiss();
        }
        break MISSING_BLOCK_LABEL_76;
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0) && i == 0 && j == 0 && netscenebase.b() == 20)
            MMAlert.a(c(), 0x7f0a0209, 0x7f0a0010, new _cls5());
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = getIntent().getStringExtra("Settings_DomainMail");
        if(s == null || s.length() <= 0)
        {
            SettingsUIGroup.a.b();
        } else
        {
            d = GroupInfoLogic.b(s, getString(0x7f0a0047));
            if(d == null)
            {
                SettingsUIGroup.a.b();
            } else
            {
                d(d.b());
                a = (Button)findViewById(0x7f07024a);
                b = (Button)findViewById(0x7f070249);
                c = (EditText)findViewById(0x7f070247);
                if(d.e())
                {
                    b.setVisibility(8);
                    findViewById(0x7f070248).setVisibility(8);
                }
                c.setText(d.b());
                c.setFocusable(false);
                c.setEnabled(false);
                b.setOnClickListener(new _cls1());
                a.setOnClickListener(new _cls2());
                b(new _cls3());
            }
        }
        MMCore.g().a(20, this);
    }

    public void onDestroy()
    {
        MMCore.g().b(20, this);
        super.onDestroy();
    }

    private Button a;
    private Button b;
    private EditText c;
    private GroupInfo d;
    private ProgressDialog e;

    private class _cls4
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSendDomainEmail a;
        private SettingsModifyDomainMailUI b;

        _cls4(NetSceneSendDomainEmail netscenesenddomainemail)
        {
            b = SettingsModifyDomainMailUI.this;
            a = netscenesenddomainemail;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            SettingsUIGroup.a.b();
        }

        private SettingsModifyDomainMailUI a;

        _cls5()
        {
            a = SettingsModifyDomainMailUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SettingsModifyDomainMailUI.a(a);
        }

        private SettingsModifyDomainMailUI a;

        _cls1()
        {
            a = SettingsModifyDomainMailUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    DomainEmailLogic.b(SettingsModifyDomainMailUI.b(a.a).b());
                    MMCore.g().b(new NetSceneSync(5));
                    SettingsUIGroup.a.b();
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            MMAlert.a(a.c(), 0x7f0a0215, 0x7f0a0010, new _cls1(), null);
        }

        final SettingsModifyDomainMailUI a;

        _cls2()
        {
            a = SettingsModifyDomainMailUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            SettingsUIGroup.a.b();
        }

        private SettingsModifyDomainMailUI a;

        _cls3()
        {
            a = SettingsModifyDomainMailUI.this;
            super();
        }
    }

}

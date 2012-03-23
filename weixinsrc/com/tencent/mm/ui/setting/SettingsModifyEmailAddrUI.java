// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class SettingsModifyEmailAddrUI extends MMActivity
    implements IOnSceneEnd
{

    public SettingsModifyEmailAddrUI()
    {
    }

    static EditText a(SettingsModifyEmailAddrUI settingsmodifyemailaddrui)
    {
        return settingsmodifyemailaddrui.b;
    }

    static String a(SettingsModifyEmailAddrUI settingsmodifyemailaddrui, String s)
    {
        settingsmodifyemailaddrui.d = s;
        return s;
    }

    static String b(SettingsModifyEmailAddrUI settingsmodifyemailaddrui)
    {
        return settingsmodifyemailaddrui.d;
    }

    static String c(SettingsModifyEmailAddrUI settingsmodifyemailaddrui)
    {
        return settingsmodifyemailaddrui.c;
    }

    static void d(SettingsModifyEmailAddrUI settingsmodifyemailaddrui)
    {
        NetSceneSync netscenesync = new NetSceneSync(5);
        MMCore.g().b(netscenesync);
        settingsmodifyemailaddrui.a = MMAlert.a(settingsmodifyemailaddrui.c(), settingsmodifyemailaddrui.getString(0x7f0a0010), settingsmodifyemailaddrui.getString(0x7f0a0208), true, settingsmodifyemailaddrui. new _cls3(netscenesync));
    }

    protected final int a()
    {
        return 0x7f0300dc;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MiroMsg.SettingsModifyEmailAddrUI", (new StringBuilder()).append("onSceneEnd: sceneType = ").append(netscenebase.b()).append(" errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(i == 4 && j == -8)
            MMAlert.a(c(), 0x7f0a020b, 0x7f0a0010, new _cls4());
        else
        if(i == 0 && j == 0 && d != null && !d.equals(""))
            if(((String)MMCore.f().f().a(5)).equals(d))
            {
                MMCore.f().f().a(5, d);
                MMAlert.a(c(), 0x7f0a0209, 0x7f0a0010, new _cls5());
            } else
            {
                MMAlert.a(c(), 0x7f0a020a, 0x7f0a0010);
            }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a01fa);
        b = (EditText)findViewById(0x7f07024b);
        c = (String)MMCore.f().f().a(5);
        b.setText(c);
        a(0x7f0a0017, new _cls1());
        b(new _cls2());
        MMCore.g().a(38, this);
    }

    public void onDestroy()
    {
        MMCore.g().b(38, this);
        super.onDestroy();
    }

    private ProgressDialog a;
    private EditText b;
    private String c;
    private String d;

    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSync a;
        private SettingsModifyEmailAddrUI b;

        _cls3(NetSceneSync netscenesync)
        {
            b = SettingsModifyEmailAddrUI.this;
            a = netscenesync;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private SettingsModifyEmailAddrUI a;

        _cls4()
        {
            a = SettingsModifyEmailAddrUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private SettingsModifyEmailAddrUI a;

        _cls5()
        {
            a = SettingsModifyEmailAddrUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SettingsModifyEmailAddrUI.a(a, SettingsModifyEmailAddrUI.a(a).getText().toString().trim());
            if(!Util.c(SettingsModifyEmailAddrUI.b(a)))
            {
                MMAlert.a(a.c(), 0x7f0a00c1, 0x7f0a0010);
            } else
            {
                Integer integer = (Integer)MMCore.f().f().a(7);
                boolean flag;
                Boolean boolean1;
                if(integer != null && (2 & integer.intValue()) != 0)
                    flag = true;
                else
                    flag = false;
                boolean1 = Boolean.valueOf(flag);
                if(!SettingsModifyEmailAddrUI.b(a).equals(SettingsModifyEmailAddrUI.c(a)) || !boolean1.booleanValue())
                {
                    Log.c("MiroMsg.SettingsModifyEmailAddrUI", (new StringBuilder()).append("set new email : ").append(SettingsModifyEmailAddrUI.b(a)).toString());
                    MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(8, (String)MMCore.f().f().a(2), "", 0, SettingsModifyEmailAddrUI.b(a), "", "", 0, 0, 0, "", "", "", 0, "", 0, "", 0));
                    SettingsModifyEmailAddrUI.d(a);
                } else
                {
                    a.finish();
                }
            }
        }

        private SettingsModifyEmailAddrUI a;

        _cls1()
        {
            a = SettingsModifyEmailAddrUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SettingsModifyEmailAddrUI a;

        _cls2()
        {
            a = SettingsModifyEmailAddrUI.this;
            super();
        }
    }

}

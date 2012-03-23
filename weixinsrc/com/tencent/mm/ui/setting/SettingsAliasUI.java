// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneGeneralSet;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.login.RegAccountToast;

public class SettingsAliasUI extends MMActivity
    implements IOnSceneEnd
{

    public SettingsAliasUI()
    {
        c = null;
        d = null;
    }

    static EditText a(SettingsAliasUI settingsaliasui)
    {
        return settingsaliasui.a;
    }

    static String a(SettingsAliasUI settingsaliasui, String s)
    {
        settingsaliasui.f = s;
        return s;
    }

    static RegAccountToast b(SettingsAliasUI settingsaliasui)
    {
        return settingsaliasui.c;
    }

    static String c(SettingsAliasUI settingsaliasui)
    {
        return settingsaliasui.f;
    }

    static void d(SettingsAliasUI settingsaliasui)
    {
        if(settingsaliasui.c != null)
            settingsaliasui.c.a();
        if(settingsaliasui.f.equals(ConfigStorageLogic.b()))
            MMAlert.a(settingsaliasui.c(), 0x7f0a0206, 0x7f0a0200);
        else
        if(!Util.d(settingsaliasui.f))
        {
            MMAlert.a(settingsaliasui.c(), 0x7f0a00b1, 0x7f0a00e9);
        } else
        {
            settingsaliasui.d = MMAlert.a(settingsaliasui.c(), settingsaliasui.getString(0x7f0a0200), settingsaliasui.getString(0x7f0a0201), false, settingsaliasui. new _cls6());
            if(settingsaliasui.e != null)
                MMCore.g().a(settingsaliasui.e);
            settingsaliasui.e = new NetSceneGeneralSet(settingsaliasui.f);
            MMCore.g().b(settingsaliasui.e);
        }
    }

    static NetSceneGeneralSet e(SettingsAliasUI settingsaliasui)
    {
        return settingsaliasui.e;
    }

    protected final int a()
    {
        return 0x7f0300da;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        boolean flag;
        flag = true;
        if(d != null)
        {
            d.dismiss();
            d = null;
        }
        if(i != 0 || j != 0) goto _L2; else goto _L1
_L1:
        Toast.makeText(c(), getString(0x7f0a0205), 0).show();
        n();
        MMCore.f().f().a(42, f);
        (new Handler()).postDelayed(new _cls7(), 1000L);
_L4:
        return;
_L2:
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 0))
            break; /* Loop/switch isn't completed */
_L7:
        if(!flag);
        if(true) goto _L4; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 4 4: default 128
    //                   4 134;
           goto _L5 _L6
_L5:
        flag = false;
          goto _L7
_L6:
        if(j != -7 && j != -10) goto _L5; else goto _L8
_L8:
        MMAlert.a(c(), 0x7f0a00e8, 0x7f0a0207);
          goto _L7
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0200);
        c = new RegAccountToast(this);
        a = (EditText)findViewById(0x7f070246);
        b = (Button)findViewById(0x7f070244);
        a.setText(ConfigStorageLogic.b());
        a.setFocusable(true);
        a.requestFocus();
        a.setFocusableInTouchMode(true);
        b.setText(ConfigStorageLogic.b());
        b.setOnClickListener(new _cls1());
        a.addTextChangedListener(new _cls2());
        a.setOnFocusChangeListener(new _cls3());
        b(getString(0x7f0a0015), new _cls4());
        a(getString(0x7f0a0017), new _cls5());
        MMCore.g().a(67, this);
    }

    public void onDestroy()
    {
        if(c != null)
            c.a();
        if(e != null)
            MMCore.g().a(e);
        MMCore.g().b(67, this);
        super.onDestroy();
    }

    private EditText a;
    private Button b;
    private RegAccountToast c;
    private ProgressDialog d;
    private NetSceneGeneralSet e;
    private String f;

    private class _cls6
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            if(SettingsAliasUI.e(a) != null)
                MMCore.g().a(SettingsAliasUI.e(a));
        }

        private SettingsAliasUI a;

        _cls6()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }


    private class _cls7
        implements Runnable
    {

        public void run()
        {
            a.finish();
        }

        private SettingsAliasUI a;

        _cls7()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.findViewById(0x7f070243).setVisibility(8);
            a.findViewById(0x7f070245).setVisibility(0);
            SettingsAliasUI.a(a).requestFocus();
        }

        private SettingsAliasUI a;

        _cls1()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }


    private class _cls2
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            SettingsAliasUI.b(a).a(charsequence);
        }

        private SettingsAliasUI a;

        _cls2()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnFocusChangeListener
    {

        public void onFocusChange(View view, boolean flag)
        {
            if(flag)
                SettingsAliasUI.b(a).a(SettingsAliasUI.a(a).getText().toString());
            else
                SettingsAliasUI.b(a).a();
        }

        private SettingsAliasUI a;

        _cls3()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SettingsAliasUI a;

        _cls4()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SettingsAliasUI.a(a, SettingsAliasUI.a(a).getText().toString().trim());
            android.content.Context context = a.c();
            SettingsAliasUI settingsaliasui = a;
            Object aobj[] = new Object[2];
            aobj[0] = ConfigStorageLogic.b();
            aobj[1] = SettingsAliasUI.c(a);
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    SettingsAliasUI.d(a.a);
                }

                private _cls5 a;

                _cls1()
                {
                    a = _cls5.this;
                    super();
                }
            }

            MMAlert.a(context, settingsaliasui.getString(0x7f0a0204, aobj), a.getString(0x7f0a0010), new _cls1(), null);
        }

        final SettingsAliasUI a;

        _cls5()
        {
            a = SettingsAliasUI.this;
            super();
        }
    }

}

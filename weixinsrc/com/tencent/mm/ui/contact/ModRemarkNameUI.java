// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import junit.framework.Assert;

public class ModRemarkNameUI extends MMActivity
    implements IOnSceneEnd
{

    public ModRemarkNameUI()
    {
    }

    static int a(ModRemarkNameUI modremarknameui)
    {
        return modremarknameui.d;
    }

    static void b(ModRemarkNameUI modremarknameui)
    {
        String s = modremarknameui.a.getText().toString().trim();
        Log.c("MiroMsg.ModRemarkName", (new StringBuilder()).append("Set New RemarkName : ").append(s).toString());
        ContactStorageLogic.a(modremarknameui.b, s.trim());
        modremarknameui.c(true);
        modremarknameui.finish();
    }

    static void c(ModRemarkNameUI modremarknameui)
    {
        String s = modremarknameui.a.getText().toString().trim();
        if(s.length() > 16)
            (new android.app.AlertDialog.Builder(modremarknameui.c())).setTitle(0x7f0a0367).setMessage(modremarknameui.getString(0x7f0a0372)).setNegativeButton(0x7f0a0015, null).show();
        else
        if(s.length() == 0)
        {
            (new android.app.AlertDialog.Builder(modremarknameui.c())).setTitle(0x7f0a0367).setMessage(modremarknameui.getString(0x7f0a0373)).setNegativeButton(0x7f0a0015, null).show();
        } else
        {
            modremarknameui.b.b(s);
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModChatRoomTopic(modremarknameui.c, s));
            modremarknameui.c(true);
            modremarknameui.finish();
        }
    }

    private void c(boolean flag)
    {
        MMCore.g().b(new NetSceneSync(5));
        if(flag)
        {
            b.a(-2L);
            MMCore.f().h().b(b);
        }
    }

    static void d(ModRemarkNameUI modremarknameui)
    {
        String s = modremarknameui.a.getText().toString().trim();
        Log.d("MiroMsg.ModRemarkName", (new StringBuilder()).append("contact id ").append(modremarknameui.b.s()).append(" ").append(modremarknameui.b.q()).append(" isContact ").append(modremarknameui.b.l()).toString());
        if(s.length() > 16)
        {
            Log.d("MiroMsg.ModRemarkName", (new StringBuilder()).append("newName.length").append(s.length()).toString());
            MMAlert.a(modremarknameui, 0x7f0a0374, 0x7f0a0367);
        } else
        if(modremarknameui.b.l())
        {
            MMAlert.a(modremarknameui, 0x7f0a0370, 0x7f0a0367);
        } else
        {
            modremarknameui.b.b(s);
            modremarknameui.b.a(32L);
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModChatRoomTopic(modremarknameui.b.s(), s));
            ContactStorageLogic.f(modremarknameui.b);
            modremarknameui.c(false);
            modremarknameui.finish();
        }
    }

    protected final int a()
    {
        return 0x7f030099;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MiroMsg.ModRemarkName", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 44)
        {
            if(i != 0 && j < 0)
            {
                Log.d("MiroMsg.ModRemarkName", "addRoomCard Error!");
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(i);
                aobj[1] = Integer.valueOf(j);
                Toast.makeText(this, getString(0x7f0a036f, aobj), 0).show();
            }
            finish();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = getIntent().getIntExtra("Contact_mode_name_type", 0);
        c = getIntent().getStringExtra("Contact_User");
        boolean flag;
        boolean flag1;
        if(Util.h(c).length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        b = MMCore.f().h().c(c);
        if(b != null && Util.h(b.s()).length() > 0)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        a = (EditText)findViewById(0x7f070196);
        a.addTextChangedListener(new com.tencent.mm.ui.MMEditText.MixedWordCountTextWatcher(a, null, 16));
        if(d == 0)
        {
            a.setText(Util.h(b.A()));
        } else
        {
            String s = b.t();
            boolean flag2;
            if(s.equals("") || s.length() > 16)
                flag2 = false;
            else
                flag2 = true;
            if(flag2)
                a.setText(Util.h(b.A()));
            else
                a.setText("");
        }
        if(d != 0) goto _L2; else goto _L1
_L1:
        d(0x7f0a023f);
_L4:
        a(0x7f0a0017, new _cls1());
        b(0x7f0a0015, new _cls2());
        return;
_L2:
        if(d == 1)
        {
            d(0x7f0a0369);
            a.setHint("");
            TextView textview = (TextView)findViewById(0x7f070197);
            textview.setText(0x7f0a038c);
            textview.setVisibility(0);
        } else
        if(d == 2)
        {
            d(0x7f0a036c);
            a.setHint("");
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    private EditText a;
    private Contact b;
    private String c;
    private int d;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ModRemarkNameUI.a(a);
            JVM INSTR tableswitch 0 2: default 32
        //                       0 33
        //                       1 43
        //                       2 53;
               goto _L1 _L2 _L3 _L4
_L1:
            return;
_L2:
            ModRemarkNameUI.b(a);
            continue; /* Loop/switch isn't completed */
_L3:
            ModRemarkNameUI.c(a);
            continue; /* Loop/switch isn't completed */
_L4:
            ModRemarkNameUI.d(a);
            if(true) goto _L1; else goto _L5
_L5:
        }

        private ModRemarkNameUI a;

        _cls1()
        {
            a = ModRemarkNameUI.this;
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

        private ModRemarkNameUI a;

        _cls2()
        {
            a = ModRemarkNameUI.this;
            super();
        }
    }

}

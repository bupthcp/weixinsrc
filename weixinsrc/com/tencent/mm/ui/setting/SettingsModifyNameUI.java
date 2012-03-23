// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;

public class SettingsModifyNameUI extends MMActivity
{

    public SettingsModifyNameUI()
    {
    }

    static EditText a(SettingsModifyNameUI settingsmodifynameui)
    {
        return settingsmodifynameui.a;
    }

    protected final int a()
    {
        return 0x7f0300dd;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a01f7);
        a = (EditText)findViewById(0x7f07024c);
        a.addTextChangedListener(new com.tencent.mm.ui.MMEditText.MixedWordCountTextWatcher(a, null, 16));
        android.text.SpannableString spannablestring = SpanUtil.a(this, (String)MMCore.f().f().a(4), (int)a.getTextSize());
        a.setText(spannablestring);
        a(0x7f0a0017, new _cls1());
        b(0x7f0a0015, new _cls2());
    }

    private EditText a;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s = SettingsModifyNameUI.a(a).getText().toString().trim();
            if(s.length() > 0)
            {
                Log.c("MiroMsg.SettingsModifyNameUI", (new StringBuilder()).append("Set New NickName : ").append(s).toString());
                String s1 = ConfigStorageLogic.b();
                boolean flag;
                com.tencent.mm.storage.OpLogStorage.OpModUserInfo opmoduserinfo;
                if(s1 != null && s1.length() > 0)
                    flag = true;
                else
                    flag = false;
                Assert.assertTrue(flag);
                MMCore.f().f().a(4, s);
                opmoduserinfo = new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2, "", s, 0, "", "", "", 0, 0, 0, "", "", "", 0, "", 0, "", 0);
                MMCore.f().g().a(opmoduserinfo);
                a.finish();
            } else
            {
                Toast.makeText(a, 0x7f0a01f9, 1).show();
            }
        }

        private SettingsModifyNameUI a;

        _cls1()
        {
            a = SettingsModifyNameUI.this;
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

        private SettingsModifyNameUI a;

        _cls2()
        {
            a = SettingsModifyNameUI.this;
            super();
        }
    }

}

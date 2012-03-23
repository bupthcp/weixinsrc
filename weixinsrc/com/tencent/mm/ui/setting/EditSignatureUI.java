// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.text.InputFilter;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;

public class EditSignatureUI extends MMActivity
{

    public EditSignatureUI()
    {
    }

    static TextView a(EditSignatureUI editsignatureui)
    {
        return editsignatureui.b;
    }

    static EditText b(EditSignatureUI editsignatureui)
    {
        return editsignatureui.a;
    }

    protected final int a()
    {
        return 0x7f03004c;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0191);
        a = (EditText)findViewById(0x7f070117);
        b = (TextView)findViewById(0x7f070118);
        EditText edittext = a;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(30);
        edittext.setFilters(ainputfilter);
        a.addTextChangedListener(new _cls1());
        String s = Util.h((String)MMCore.f().f().a(12291));
        a.setText(s);
        b(0x7f0a0015, new _cls2());
        a(0x7f0a0017, new _cls3());
    }

    private EditText a;
    private TextView b;

    private class _cls1
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
            if(EditSignatureUI.a(a) != null)
            {
                int i = 30 - editable.length();
                if(i < 0)
                    i = 0;
                EditSignatureUI.a(a).setText((new StringBuilder()).append("").append(i).toString());
            }
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private EditSignatureUI a;

        _cls1()
        {
            a = EditSignatureUI.this;
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

        private EditSignatureUI a;

        _cls2()
        {
            a = EditSignatureUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            boolean flag = a.getIntent().getBooleanExtra("persist_signature", true);
            String s = EditSignatureUI.b(a).getText().toString().trim();
            if(flag)
            {
                SelfPersonCard selfpersoncard = SelfPersonCard.a();
                selfpersoncard.a(s);
                MMCore.f().g().a(SelfPersonCard.a(selfpersoncard));
                MMCore.g().b(new NetSceneSync(5));
            } else
            {
                MMCore.f().f().a(12291, s);
            }
            a.n();
            a.finish();
        }

        private EditSignatureUI a;

        _cls3()
        {
            a = EditSignatureUI.this;
            super();
        }
    }

}

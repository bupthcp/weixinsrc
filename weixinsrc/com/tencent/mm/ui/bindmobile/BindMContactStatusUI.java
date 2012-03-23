// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bindmobile;

import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMWizardActivity;

public class BindMContactStatusUI extends MMWizardActivity
{

    public BindMContactStatusUI()
    {
    }

    static void a(BindMContactStatusUI bindmcontactstatusui)
    {
        bindmcontactstatusui.o();
    }

    protected final int a()
    {
        return 0x7f030019;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a02b1);
        a = (ImageView)findViewById(0x7f07004d);
        b = (TextView)findViewById(0x7f07004e);
        c = (Button)findViewById(0x7f07004f);
        if(FriendLogic.b() == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c)
        {
            a.setImageResource(0x7f0201da);
            String s = (String)MMCore.f().f().a(6);
            if(s == null || s.equals(""))
                s = (String)MMCore.f().f().a(4097);
            TextView textview = b;
            Object aobj[] = new Object[1];
            aobj[0] = s;
            textview.setText(getString(0x7f0a02dc, aobj));
        } else
        {
            a.setImageResource(0x7f0201db);
            b.setText(0x7f0a02ba);
        }
        c.setOnClickListener(new _cls1());
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            o();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    private ImageView a;
    private TextView b;
    private Button c;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BindMContactStatusUI.a(a);
        }

        private BindMContactStatusUI a;

        _cls1()
        {
            a = BindMContactStatusUI.this;
            super();
        }
    }

}

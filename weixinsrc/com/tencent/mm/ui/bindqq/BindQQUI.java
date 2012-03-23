// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bindqq;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMWizardActivity;

public class BindQQUI extends MMWizardActivity
{

    public BindQQUI()
    {
        a = 0;
    }

    static void a(BindQQUI bindqqui)
    {
        bindqqui.o();
    }

    protected final int a()
    {
        return 0x7f03001b;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = getIntent().getIntExtra("bindqq_regbymobile", 0);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        long l = (new UIN(Util.a((Integer)MMCore.f().f().a(9)))).longValue();
        if(l == 0L)
        {
            d(0x7f0a02e1);
            TextView textview2 = (TextView)findViewById(0x7f070054);
            textview2.setVisibility(0);
            textview2.setText(0x7f0a02e2);
            Button button = (Button)findViewById(0x7f070055);
            button.setVisibility(0);
            button.setOnClickListener(new _cls3());
        } else
        {
            d(0x7f0a02f2);
            TextView textview = (TextView)findViewById(0x7f070054);
            textview.setVisibility(0);
            textview.setText(0x7f0a02f3);
            TextView textview1 = (TextView)findViewById(0x7f070056);
            textview1.setVisibility(0);
            textview1.setText((new StringBuilder()).append(getString(0x7f0a02f4)).append(l).toString());
        }
        if(a == 1)
            a(getString(0x7f0a0037), new _cls1());
        else
            b(new _cls2());
    }

    private int a;

    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    MMWizardActivity.a(a.a, new Intent(a.a, com/tencent/mm/ui/bindqq/VerifyQQUI));
                }

                private _cls3 a;

                _cls1()
                {
                    a = _cls3.this;
                    super();
                }
            }

            MMAlert.a(a.c(), 0x7f0a02e5, 0x7f0a02e4, new _cls1(), null);
        }

        final BindQQUI a;

        _cls3()
        {
            a = BindQQUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BindQQUI.a(a);
        }

        private BindQQUI a;

        _cls1()
        {
            a = BindQQUI.this;
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

        private BindQQUI a;

        _cls2()
        {
            a = BindQQUI.this;
            super();
        }
    }

}

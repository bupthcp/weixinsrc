// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import com.tencent.mm.ui.MMActivity;

public class ReaderAppIntroUI extends MMActivity
{

    public ReaderAppIntroUI()
    {
        a = 0;
    }

    static int a(ReaderAppIntroUI readerappintroui)
    {
        return readerappintroui.a;
    }

    static void a(ReaderAppIntroUI readerappintroui, Class class1)
    {
        readerappintroui.a(class1);
    }

    protected final int a()
    {
        return 0x7f0300bc;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        ImageView imageview = (ImageView)findViewById(0x7f0701f4);
        Button button = (Button)findViewById(0x7f0701f6);
        TextView textview = (TextView)findViewById(0x7f0701f5);
        a = getIntent().getIntExtra("type", 0);
        if(a == 20)
        {
            d(0x7f0a006c);
            imageview.setImageResource(0x7f02024a);
            textview.setText(0x7f0a049a);
            button.setText(0x7f0a049c);
            button.setOnClickListener(new _cls1());
        } else
        {
            d(0x7f0a006f);
            imageview.setImageResource(0x7f02024b);
            textview.setText(0x7f0a049b);
            button.setVisibility(4);
        }
        b(new _cls2());
        a(0x7f0a0013, new _cls3());
    }

    private int a;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ReaderAppIntroUI.a(a, com/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI);
            a.finish();
        }

        private ReaderAppIntroUI a;

        _cls1()
        {
            a = ReaderAppIntroUI.this;
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

        private ReaderAppIntroUI a;

        _cls2()
        {
            a = ReaderAppIntroUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", ReaderAppInfo.a(ReaderAppIntroUI.a(a))));
            a.finish();
        }

        private ReaderAppIntroUI a;

        _cls3()
        {
            a = ReaderAppIntroUI.this;
            super();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.AlphabetScrollBar;
import com.tencent.mm.ui.MMActivity;
import java.util.*;

// Referenced classes of package com.tencent.mm.ui.tools:
//            CountryCode, CountryCodeAdapter

public class CountryCodeUI extends MMActivity
{

    public CountryCodeUI()
    {
        g = "";
        h = new _cls6();
    }

    static String a(CountryCodeUI countrycodeui)
    {
        return countrycodeui.e;
    }

    static String a(CountryCodeUI countrycodeui, String s)
    {
        countrycodeui.g = s;
        return s;
    }

    static String b(CountryCodeUI countrycodeui)
    {
        return countrycodeui.f;
    }

    private void b()
    {
        String as[] = getString(0x7f0a0356).trim().split(",");
        for(int j = 0; j < as.length; j++)
        {
            String as1[] = as[j].trim().split(":");
            d.add(new CountryCode(as1[1], as1[0], as1[2].charAt(0), as1[2]));
        }

        Collections.sort(d, new _cls1());
    }

    static void c(CountryCodeUI countrycodeui)
    {
        if(countrycodeui.b != null)
            countrycodeui.b.a(countrycodeui.g);
    }

    static CountryCodeAdapter d(CountryCodeUI countrycodeui)
    {
        return countrycodeui.b;
    }

    static ListView e(CountryCodeUI countrycodeui)
    {
        return countrycodeui.a;
    }

    protected final int a()
    {
        return 0x7f030046;
    }

    protected final boolean i()
    {
        return true;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = new ArrayList();
        e = Util.a(getIntent().getStringExtra("country_name"), "");
        f = Util.a(getIntent().getStringExtra("couttry_code"), "");
        d(0x7f0a022f);
        b();
        a = (ListView)findViewById(0x7f070005);
        b = new CountryCodeAdapter(this, d);
        View view = View.inflate(this, 0x7f0300ce, null);
        EditText edittext = (EditText)view.findViewById(0x7f07022c);
        Button button = (Button)view.findViewById(0x7f07022d);
        a.addHeaderView(view);
        a.setAdapter(b);
        a.setVisibility(0);
        c = (AlphabetScrollBar)findViewById(0x7f070007);
        c.a(h);
        b(0x7f0a0015, new _cls2());
        edittext.addTextChangedListener(new _cls3(button));
        button.setOnClickListener(new _cls4(edittext));
        a.setOnItemClickListener(new _cls5());
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        boolean flag;
        if(j == 4)
        {
            Intent intent = new Intent();
            intent.putExtra("country_name", e);
            intent.putExtra("couttry_code", f);
            setResult(100, intent);
            finish();
            flag = true;
        } else
        {
            flag = super.onKeyDown(j, keyevent);
        }
        return flag;
    }

    private ListView a;
    private CountryCodeAdapter b;
    private AlphabetScrollBar c;
    private List d;
    private String e;
    private String f;
    private String g;
    private com.tencent.mm.ui.AlphabetScrollBar.OnScollBarTouchListener h;

    private class _cls6
        implements com.tencent.mm.ui.AlphabetScrollBar.OnScollBarTouchListener
    {

        public final void a(String s)
        {
            int j;
            char c1;
            j = 0;
            c1 = s.charAt(j);
            if(!a.getString(0x7f0a0043).equals(s)) goto _L2; else goto _L1
_L1:
            CountryCodeUI.e(a).setSelection(j);
_L4:
            return;
_L2:
            int ai[];
            ai = CountryCodeUI.d(a).a();
            if(ai == null)
                continue; /* Loop/switch isn't completed */
_L5:
            if(j < ai.length)
            {
label0:
                {
                    if(ai[j] != c1)
                        break label0;
                    CountryCodeUI.e(a).setSelection(j + 1);
                }
            }
            if(true) goto _L4; else goto _L3
_L3:
            j++;
              goto _L5
            if(true) goto _L4; else goto _L6
_L6:
        }

        private CountryCodeUI a;

        _cls6()
        {
            a = CountryCodeUI.this;
            super();
        }
    }


    private class _cls1
        implements Comparator
    {

        public volatile int compare(Object obj, Object obj1)
        {
            CountryCode countrycode = (CountryCode)obj;
            CountryCode countrycode1 = (CountryCode)obj1;
            return countrycode.d().compareTo(countrycode1.d());
        }

        private CountryCodeUI a;

        _cls1()
        {
            a = CountryCodeUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            Intent intent = new Intent();
            intent.putExtra("country_name", CountryCodeUI.a(a));
            intent.putExtra("couttry_code", CountryCodeUI.b(a));
            a.setResult(100, intent);
            a.finish();
        }

        private CountryCodeUI a;

        _cls2()
        {
            a = CountryCodeUI.this;
            super();
        }
    }


    private class _cls3
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int j, int k, int l)
        {
        }

        public void onTextChanged(CharSequence charsequence, int j, int k, int l)
        {
            CountryCodeUI.a(b, Util.a(charsequence.toString()));
            CountryCodeUI.c(b);
            Button button = a;
            int i1;
            if(charsequence.toString().length() > 0)
                i1 = 0;
            else
                i1 = 8;
            button.setVisibility(i1);
        }

        private Button a;
        private CountryCodeUI b;

        _cls3(Button button)
        {
            b = CountryCodeUI.this;
            a = button;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.setText("");
        }

        private EditText a;
        private CountryCodeUI b;

        _cls4(EditText edittext)
        {
            b = CountryCodeUI.this;
            a = edittext;
            super();
        }
    }


    private class _cls5
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int j, long l)
        {
            Intent intent = new Intent();
            if(j > 0)
            {
                CountryCode countrycode = (CountryCode)CountryCodeUI.d(a).getItem(j + -1);
                intent.putExtra("country_name", countrycode.a());
                intent.putExtra("couttry_code", countrycode.b());
                a.setResult(100, intent);
            }
            a.finish();
        }

        private CountryCodeUI a;

        _cls5()
        {
            a = CountryCodeUI.this;
            super();
        }
    }

}

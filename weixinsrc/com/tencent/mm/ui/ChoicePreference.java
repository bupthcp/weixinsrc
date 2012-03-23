// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import java.util.HashMap;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            ChoiceItem

public final class ChoicePreference extends Preference
{

    public ChoicePreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ChoicePreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = new HashMap();
        d = -1;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.tencent.mm.R.styleable.a, i, 0);
        e = typedarray.getTextArray(0);
        f = typedarray.getTextArray(1);
        typedarray.recycle();
        b();
    }

    static int a(ChoicePreference choicepreference, int i)
    {
        choicepreference.d = i;
        return i;
    }

    static android.preference.Preference.OnPreferenceChangeListener a(ChoicePreference choicepreference)
    {
        return choicepreference.g;
    }

    static String a(ChoicePreference choicepreference, String s)
    {
        choicepreference.c = s;
        return s;
    }

    private void b()
    {
        int i = 0;
        if(e == null)
            e = new CharSequence[i];
        if(f == null)
            f = new CharSequence[i];
        int j;
        if(e.length == f.length)
            j = 1;
        else
            j = i;
        Assert.assertTrue("entries count different", j);
        b.clear();
        for(; i < f.length; i++)
        {
            ChoiceItem choiceitem = new ChoiceItem(e[i], 0x100000 + i);
            b.put(f[i], choiceitem);
        }

    }

    static CharSequence[] b(ChoicePreference choicepreference)
    {
        return choicepreference.f;
    }

    public final String a()
    {
        return c;
    }

    public final void a(String s)
    {
        c = s;
        ChoiceItem choiceitem = (ChoiceItem)b.get(s);
        if(choiceitem == null)
            d = -1;
        else
            d = choiceitem.a;
    }

    protected final void onBindView(View view)
    {
        super.onBindView(view);
        if(a != null)
            a.check(d);
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f03007a, viewgroup1);
        a = (RadioGroup)view.findViewById(0x7f070172);
        int i = 0;
        while(i < f.length) 
        {
            CharSequence charsequence = f[i];
            ChoiceItem choiceitem = (ChoiceItem)b.get(charsequence);
            if(choiceitem != null)
                if(i == 0)
                {
                    RadioButton radiobutton2 = (RadioButton)layoutinflater.inflate(0x7f030071, null);
                    choiceitem.a(radiobutton2);
                    a.addView(radiobutton2);
                } else
                if(i == -1 + f.length)
                {
                    RadioButton radiobutton1 = (RadioButton)layoutinflater.inflate(0x7f030073, null);
                    choiceitem.a(radiobutton1);
                    a.addView(radiobutton1);
                } else
                {
                    RadioButton radiobutton = (RadioButton)layoutinflater.inflate(0x7f030072, null);
                    choiceitem.a(radiobutton);
                    a.addView(radiobutton);
                }
            i++;
        }
        a.setOnCheckedChangeListener(new _cls1());
        return view;
    }

    public final void setOnPreferenceChangeListener(android.preference.Preference.OnPreferenceChangeListener onpreferencechangelistener)
    {
        g = onpreferencechangelistener;
    }

    private RadioGroup a;
    private final HashMap b;
    private String c;
    private int d;
    private CharSequence e[];
    private CharSequence f[];
    private android.preference.Preference.OnPreferenceChangeListener g;

    private class _cls1
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        public void onCheckedChanged(RadioGroup radiogroup, int i)
        {
            if(ChoicePreference.a(a) != null)
            {
                if(i != -1)
                    ChoicePreference.a(a, (new StringBuilder()).append("").append(ChoicePreference.b(a)[i - 0x100000]).toString());
                else
                    ChoicePreference.a(a, null);
                ChoicePreference.a(a, i);
                ChoicePreference.a(a).onPreferenceChange(a, a.a());
            }
        }

        private ChoicePreference a;

        _cls1()
        {
            a = ChoicePreference.this;
            super();
        }
    }

}

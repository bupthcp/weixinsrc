// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;
import android.widget.ListView;
import java.util.HashMap;

// Referenced classes of package com.tencent.mm.ui:
//            DialogListAdapter, DialogItem, MMAlert

public final class DialogPreference extends Preference
{

    public DialogPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new DialogListAdapter(context);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.tencent.mm.R.styleable.a, i, 0);
        a.a = typedarray.getTextArray(0);
        a.b = typedarray.getTextArray(1);
        typedarray.recycle();
        a.a();
    }

    static AlertDialog a(DialogPreference dialogpreference)
    {
        return dialogpreference.d;
    }

    static DialogListAdapter b(DialogPreference dialogpreference)
    {
        return dialogpreference.a;
    }

    static MMPreference.OnInternalChangeListerner c(DialogPreference dialogpreference)
    {
        return dialogpreference.c;
    }

    static android.preference.Preference.OnPreferenceChangeListener d(DialogPreference dialogpreference)
    {
        return dialogpreference.b;
    }

    public final String a()
    {
        return a.d;
    }

    public final void a(MMPreference.OnInternalChangeListerner oninternalchangelisterner)
    {
        c = oninternalchangelisterner;
    }

    public final void a(String s)
    {
        a.d = s;
        DialogItem dialogitem = (DialogItem)a.e.get(s);
        if(dialogitem == null)
            a.c = -1;
        else
            a.c = dialogitem.b;
    }

    protected final void b()
    {
        ListView listview = (ListView)View.inflate(getContext(), 0x7f030074, null);
        listview.setOnItemClickListener(new _cls1());
        listview.setAdapter(a);
        d = MMAlert.a(getContext(), getTitle().toString(), listview, new _cls2());
    }

    public final void onBindView(View view)
    {
        DialogItem dialogitem = (DialogItem)a.e.get(a.d);
        if(dialogitem != null)
            setSummary(dialogitem.a);
        super.onBindView(view);
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f030081, viewgroup1);
        return view;
    }

    public final void setOnPreferenceChangeListener(android.preference.Preference.OnPreferenceChangeListener onpreferencechangelistener)
    {
        b = onpreferencechangelistener;
    }

    private final DialogListAdapter a;
    private android.preference.Preference.OnPreferenceChangeListener b;
    private MMPreference.OnInternalChangeListerner c;
    private AlertDialog d;

    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(DialogPreference.a(a) != null)
                DialogPreference.a(a).dismiss();
            a.a((String)DialogPreference.b(a).b[i]);
            if(DialogPreference.c(a) != null)
                DialogPreference.c(a).a();
            if(DialogPreference.d(a) != null)
                DialogPreference.d(a).onPreferenceChange(a, a.a());
        }

        private DialogPreference a;

        _cls1()
        {
            a = DialogPreference.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(DialogPreference.a(a) != null)
                DialogPreference.a(a).dismiss();
        }

        private DialogPreference a;

        _cls2()
        {
            a = DialogPreference.this;
            super();
        }
    }

}

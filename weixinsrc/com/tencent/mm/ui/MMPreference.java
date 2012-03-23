// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.Preference;
import android.view.MenuItem;
import android.widget.ListView;
import b.a.b;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MMPreferenceAdapter, IPreferenceScreen

public abstract class MMPreference extends MMActivity
{

    public MMPreference()
    {
        d = false;
    }

    static MMPreferenceAdapter a(MMPreference mmpreference)
    {
        return mmpreference.a;
    }

    static SharedPreferences b(MMPreference mmpreference)
    {
        return mmpreference.c;
    }

    static boolean c(MMPreference mmpreference)
    {
        mmpreference.d = true;
        return true;
    }

    protected int a()
    {
        return 0x7f03008a;
    }

    public boolean a(Preference preference)
    {
        return false;
    }

    public abstract boolean a(IPreferenceScreen ipreferencescreen, Preference preference);

    protected boolean b()
    {
        return true;
    }

    public abstract int d_();

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        return super.onContextItemSelected(menuitem);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = getSharedPreferences((new StringBuilder()).append(getPackageName()).append("_preferences").toString(), 0);
        a = new MMPreferenceAdapter(this, c);
        b = (ListView)findViewById(0x102000a);
        int i = d_();
        if(i != -1)
            a.a(i);
        b.setAdapter(a);
        b.setOnItemClickListener(new _cls1());
        b.setOnItemLongClickListener(new _cls2());
    }

    protected void onResume()
    {
        if(b())
            a.notifyDataSetChanged();
        super.onResume();
    }

    public final boolean p()
    {
        return d;
    }

    public final IPreferenceScreen q()
    {
        return a;
    }

    public final SharedPreferences r()
    {
        return c;
    }

    public final boolean s()
    {
        b.a.b.a(b);
        return true;
    }

    private MMPreferenceAdapter a;
    private ListView b;
    private SharedPreferences c;
    private boolean d;

    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            boolean flag = true;
            boolean flag1 = false;
            Preference preference = (Preference)MMPreference.a(a).getItem(i);
            if(preference.isEnabled() && preference.isSelectable())
            {
                if(preference instanceof CheckBoxPreference)
                {
                    CheckBoxPreference checkboxpreference = (CheckBoxPreference)preference;
                    if(!checkboxpreference.isChecked())
                        flag1 = flag;
                    checkboxpreference.setChecked(flag1);
                    com.tencent.mm.ui.MMPreference.b(a).edit().putBoolean(preference.getKey(), checkboxpreference.isChecked()).commit();
                    MMPreference.c(a);
                } else
                {
                    flag = flag1;
                }
                if(preference instanceof DialogPreference)
                {
                    DialogPreference dialogpreference = (DialogPreference)preference;
                    dialogpreference.b();
                    class _cls1
                        implements OnInternalChangeListerner
                    {

                        public final void a()
                        {
                            MMPreference.c(a.a);
                            MMPreference.a(a.a).notifyDataSetChanged();
                        }

                        private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
                    }

                    dialogpreference.a(new _cls1());
                }
                if(preference.getKey() != null)
                    a.a(MMPreference.a(a), preference);
                if(flag)
                    MMPreference.a(a).notifyDataSetChanged();
            }
        }

        final MMPreference a;

        _cls1()
        {
            a = MMPreference.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
        {
            Preference preference = (Preference)MMPreference.a(a).getItem(i);
            return a.a(preference);
        }

        private MMPreference a;

        _cls2()
        {
            a = MMPreference.this;
            super();
        }
    }

}

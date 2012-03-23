// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.*;

// Referenced classes of package com.tencent.mm.ui:
//            IPreferenceScreen, MMPreferenceInflater, MMActivity

public class MMPreferenceAdapter extends BaseAdapter
    implements IPreferenceScreen
{

    public MMPreferenceAdapter(Context context, SharedPreferences sharedpreferences)
    {
        i = new int[0];
        j = false;
        k = false;
        c = new MMPreferenceInflater(context);
        h = (MMActivity)context;
        g = sharedpreferences;
    }

    private static void a(Preference preference, SharedPreferences sharedpreferences)
    {
        if(preference instanceof CheckBoxPreference)
        {
            CheckBoxPreference checkboxpreference = (CheckBoxPreference)preference;
            if(checkboxpreference.isPersistent())
                checkboxpreference.setChecked(sharedpreferences.getBoolean(preference.getKey(), ((CheckBoxPreference)preference).isChecked()));
        }
    }

    private static String c(Preference preference)
    {
        return (new StringBuilder()).append(preference.getClass().getName()).append("L").append(preference.getLayoutResource()).append("W").append(preference.getWidgetLayoutResource()).toString();
    }

    public final Preference a(String s)
    {
        return (Preference)a.get(s);
    }

    public final void a()
    {
        b.clear();
        a.clear();
        f.clear();
        notifyDataSetChanged();
    }

    public final void a(int l)
    {
        j = true;
        c.a(l, this);
        j = false;
        notifyDataSetChanged();
    }

    public final void a(Preference preference)
    {
        b.add(preference);
        a.put(preference.getKey(), preference);
        if(!d.containsKey(c(preference)) && !k)
            d.put(c(preference), Integer.valueOf(d.size()));
        if(preference.getDependency() != null)
            e.put((new StringBuilder()).append(preference.getDependency()).append("|").append(preference.getKey()).toString(), preference.getKey());
        if(!j)
            notifyDataSetChanged();
    }

    public final List b()
    {
        return b;
    }

    public final boolean b(Preference preference)
    {
        boolean flag = false;
        if(preference != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        a.remove(preference.getKey());
        if(b.remove(preference))
        {
            f.remove(preference.getKey());
            notifyDataSetChanged();
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean b(String s)
    {
        return b(a(s));
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int l)
    {
        return b.get(l);
    }

    public long getItemId(int l)
    {
        return 0L;
    }

    public int getItemViewType(int l)
    {
        Preference preference = (Preference)b.get(l);
        Integer integer = (Integer)d.get(c(preference));
        int i1;
        if(integer == null)
            i1 = -1;
        else
            i1 = integer.intValue();
        return i1;
    }

    public View getView(int l, View view, ViewGroup viewgroup)
    {
        View view1;
        int i1;
        Preference preference = (Preference)b.get(l);
        if(!d.containsKey(c(preference)))
            view = null;
        view1 = preference.getView(view, viewgroup);
        i1 = i[l];
        i1 & 3;
        JVM INSTR tableswitch 1 3: default 76
    //                   1 100
    //                   2 132
    //                   3 149;
           goto _L1 _L2 _L3 _L4
_L1:
        if((i1 & 4) == 0)
            view1.setBackgroundDrawable(h.a(0x7f0201fc));
_L6:
        return view1;
_L2:
        int k1;
        if(l == 0)
            k1 = 0x7f020201;
        else
            k1 = 0x7f0201fb;
        view1.setBackgroundDrawable(h.a(k1));
        continue; /* Loop/switch isn't completed */
_L3:
        view1.setBackgroundDrawable(h.a(0x7f0201fd));
        continue; /* Loop/switch isn't completed */
_L4:
        int j1;
        if(l == 0)
            j1 = 0x7f0201fe;
        else
            j1 = 0x7f020200;
        view1.setBackgroundDrawable(h.a(j1));
        if(true) goto _L6; else goto _L5
_L5:
    }

    public int getViewTypeCount()
    {
        if(!k)
            k = true;
        return Math.max(1, d.size());
    }

    public void notifyDataSetChanged()
    {
        int l;
        l = 0;
        i = new int[b.size()];
        if(i.length > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(i.length == 1)
        {
            if(((Preference)b.get(l)).getLayoutResource() == 0x7f030076)
                i[l] = 3;
            else
                i[l] = 4;
            a((Preference)b.get(l), g);
            continue; /* Loop/switch isn't completed */
        }
        while(l < b.size()) 
        {
            a((Preference)b.get(l), g);
            if(((Preference)b.get(l)).getLayoutResource() == 0x7f030076)
            {
                if(l == 0)
                {
                    int ai4[] = i;
                    ai4[l] = 1 | ai4[l];
                } else
                {
                    if(l == -1 + b.size())
                    {
                        int ai3[] = i;
                        ai3[l] = 2 | ai3[l];
                    }
                    if(((Preference)b.get(l + -1)).getLayoutResource() != 0x7f030076)
                    {
                        int ai2[] = i;
                        ai2[l] = 1 | ai2[l];
                    }
                }
            } else
            {
                int ai[] = i;
                ai[l] = 4 | ai[l];
                if(l != 0 && ((Preference)b.get(l + -1)).getLayoutResource() == 0x7f030076)
                {
                    int ai1[] = i;
                    int i1 = l + -1;
                    ai1[i1] = 2 | ai1[i1];
                }
            }
            l++;
        }
        super.notifyDataSetChanged();
        if(true) goto _L1; else goto _L3
_L3:
    }

    private final HashMap a = new HashMap();
    private final LinkedList b = new LinkedList();
    private final MMPreferenceInflater c;
    private final HashMap d = new HashMap();
    private final HashMap e = new HashMap();
    private final HashSet f = new HashSet();
    private final SharedPreferences g;
    private final MMActivity h;
    private int i[];
    private boolean j;
    private boolean k;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.preference.Preference;
import java.util.List;

public interface IPreferenceScreen
{

    public abstract Preference a(String s);

    public abstract void a();

    public abstract void a(int i);

    public abstract void a(Preference preference);

    public abstract List b();

    public abstract boolean b(Preference preference);

    public abstract boolean b(String s);

    public abstract void notifyDataSetChanged();
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.widget.RadioButton;

class ChoiceItem
{

    public ChoiceItem(CharSequence charsequence, int i)
    {
        b = charsequence;
        a = i;
    }

    public final void a(RadioButton radiobutton)
    {
        radiobutton.setText(b);
        radiobutton.setId(a);
    }

    int a;
    private CharSequence b;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook.sdk;


public class DialogError extends Throwable
{

    public DialogError(String s, int i, String s1)
    {
        super(s);
        a = i;
        b = s1;
    }

    private int a;
    private String b;
}

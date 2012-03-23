// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook.sdk;


public class FacebookError extends Throwable
{

    public FacebookError(String s)
    {
        super(s);
        a = 0;
    }

    public final String a()
    {
        return b;
    }

    private int a;
    private String b;
}

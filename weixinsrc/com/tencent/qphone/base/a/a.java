// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.a;

import android.content.Context;

public final class a
{

    public a()
    {
        a = null;
    }

    public static ClassLoader a()
    {
        return b;
    }

    public static void a(Context context)
    {
        b = context.getClassLoader();
    }

    private static ClassLoader b = null;
    private String a;

}

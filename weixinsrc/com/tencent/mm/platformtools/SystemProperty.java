// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import java.util.HashMap;

public final class SystemProperty
{

    private SystemProperty()
    {
    }

    public static String a(String s)
    {
        return (String)a.get(s);
    }

    public static void a(String s, String s1)
    {
        a.put(s, s1);
    }

    private static final HashMap a = new HashMap();

}

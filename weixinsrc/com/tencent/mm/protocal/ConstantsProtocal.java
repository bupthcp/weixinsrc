// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal;


public final class ConstantsProtocal
{

    private ConstantsProtocal()
    {
    }

    public static void a(int i)
    {
        b = i;
    }

    public static String a;
    public static int b = 0x23060088;
    public static final byte c[] = null;
    public static final byte d[] = null;
    public static final byte e[] = null;

    static 
    {
        a = (new StringBuilder()).append("android-").append(android.os.Build.VERSION.SDK).toString();
    }
}

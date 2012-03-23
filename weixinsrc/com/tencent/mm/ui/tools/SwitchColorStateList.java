// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.res.ColorStateList;
import com.tencent.mm.ui.MMActivity;
import junit.framework.Assert;

public final class SwitchColorStateList
{

    private SwitchColorStateList(Context context)
    {
        a = new ColorStateList[2];
        c = false;
        MMActivity mmactivity = (MMActivity)context;
        a[0] = mmactivity.b(0x7f080021);
        a[1] = mmactivity.b(0x7f080022);
    }

    public static ColorStateList a(Context context)
    {
        return c(context).a[0];
    }

    public static ColorStateList b(Context context)
    {
        return c(context).a[1];
    }

    private static SwitchColorStateList c(Context context)
    {
        boolean flag;
        if(context != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(b == null || !b.c)
            b = new SwitchColorStateList(context);
        return b;
    }

    private static SwitchColorStateList b = null;
    private ColorStateList a[];
    private boolean c;

}

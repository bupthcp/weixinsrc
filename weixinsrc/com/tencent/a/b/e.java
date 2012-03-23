// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.a.b;

import android.os.Environment;

public final class e
{

    public e()
    {
    }

    public static boolean a()
    {
        boolean flag;
        if(Environment.getExternalStorageState().equals("mounted"))
            flag = true;
        else
            flag = false;
        return flag;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import android.widget.Toast;

// Referenced classes of package com.tencent.qqpim.utils:
//            QQPimUtils

public class ToastUtil
{

    public ToastUtil()
    {
    }

    public static void cancelAndShowToast(Toast toast1)
    {
        if(toast1 != null)
        {
            toast1.cancel();
            toast1.show();
        }
    }

    public static void cancelToast(Toast toast1)
    {
        if(toast1 != null)
            toast1.cancel();
    }

    public static void showToast(int i, int j)
    {
        showToast(QQPimUtils.APPLICATION_CONTEXT.getString(i), j);
    }

    public static void showToast(String s, int i)
    {
        if(toast == null)
            toast = Toast.makeText(QQPimUtils.APPLICATION_CONTEXT, "", 0);
        toast.cancel();
        toast.setText(s);
        toast.setDuration(i);
        toast.setGravity(81, 0, 50);
        toast.show();
    }

    public static void showToast(String s, int i, int j)
    {
        if(toast == null)
            toast = Toast.makeText(QQPimUtils.APPLICATION_CONTEXT, "", 0);
        toast.cancel();
        toast.setText(s);
        toast.setDuration(i);
        toast.setGravity(j, 0, 0);
        toast.show();
    }

    private static Toast toast;
}

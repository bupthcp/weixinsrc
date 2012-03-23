// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.app.Activity;
import android.content.*;
import android.net.Uri;
import com.tencent.mm.algorithm.FileOperation;
import java.io.File;

// Referenced classes of package com.tencent.mm.platformtools:
//            Util

public final class CameraUtil
{

    private CameraUtil()
    {
    }

    public static String a(Context context, Intent intent, String s)
    {
        String s1;
        if(a != null && FileOperation.c(a))
            s1 = a;
        else
            s1 = Util.a(context, intent, s);
        return s1;
    }

    public static boolean a(Activity activity, String s, String s1, int i)
    {
        boolean flag;
        Intent intent;
        flag = false;
        a = (new StringBuilder()).append(s).append(s1).toString();
        intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if((new File(s)).exists()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        intent.putExtra("output", Uri.fromFile(new File(a)));
        activity.startActivityForResult(intent, i);
        flag = true;
        continue; /* Loop/switch isn't completed */
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static String a = null;

}

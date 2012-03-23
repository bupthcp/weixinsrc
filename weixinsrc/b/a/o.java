// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import java.util.List;
import java.util.Map;

// Referenced classes of package b.a:
//            ak, ag

public final class o
{

    private o()
    {
    }

    public static Uri a()
    {
        Uri uri;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            uri = (new ak()).a();
        else
            uri = (new ag()).a();
        return uri;
    }

    public static String a(String s, Context context)
    {
        String s1;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            s1 = (new ak()).a(s, context);
        else
            s1 = (new ag()).a(s, context);
        return s1;
    }

    public static Map a(Context context)
    {
        Map map;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            map = (new ak()).a(context);
        else
            map = (new ag()).a(context);
        return map;
    }

    public static boolean a(Context context, String s)
    {
        boolean flag;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            flag = (new ak()).a(context, s);
        else
            flag = (new ag()).a(context, s);
        return flag;
    }

    public static boolean a(String s)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
_L2:
        String s1;
        do
            return flag;
        while(s.length() <= 0 || s.indexOf("+86") != -1 && s.replace("+86", "").length() != 11);
        s1 = s.replace("+", "");
        int i = s1.length();
        for(int j = ((flag) ? 1 : 0); j < i; j++)
            if(!Character.isSpace(s1.charAt(j)) && !Character.isDigit(s1.charAt(j)))
                continue; /* Loop/switch isn't completed */

        boolean flag1;
        Double.parseDouble(s1);
        flag1 = s1.contains(".");
        if(!flag1)
            flag = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static Bitmap b(String s, Context context)
    {
        Bitmap bitmap;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            bitmap = (new ak()).b(s, context);
        else
            bitmap = (new ag()).b(s, context);
        return bitmap;
    }

    public static String b(String s)
    {
        return s.trim().replace("-", "").replace(" ", "");
    }

    public static List b(Context context)
    {
        List list;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            list = (new ak()).d(context);
        else
            list = (new ag()).d(context);
        return list;
    }

    public static boolean b(Context context, String s)
    {
        boolean flag;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            flag = (new ak()).b(context, s);
        else
            flag = (new ag()).b(context, s);
        return flag;
    }

    public static List c(Context context)
    {
        List list;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            list = (new ak()).e(context);
        else
            list = (new ag()).e(context);
        return list;
    }

    public static List d(Context context)
    {
        List list;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            list = (new ak()).b(context);
        else
            list = (new ag()).b(context);
        return list;
    }

    public static List e(Context context)
    {
        List list;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 4)
            list = (new ak()).c(context);
        else
            list = (new ag()).c(context);
        return list;
    }

    private static final int a = 4;
    private static final int b = 11;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.tencent.mm.platformtools.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package b.a:
//            y, j

public class e
{

    public e()
    {
    }

    public static int a(Context context, float f)
    {
        int i;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 3)
            i = (new y()).a(context, f);
        else
            i = (new j()).a(context, f);
        return i;
    }

    public static Bitmap a(InputStream inputstream)
    {
        Bitmap bitmap;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 3)
            bitmap = (new y()).a(inputstream);
        else
            bitmap = (new j()).a(inputstream);
        return bitmap;
    }

    public static Bitmap a(InputStream inputstream, float f)
    {
        Bitmap bitmap;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 3)
            bitmap = (new y()).a(inputstream, f);
        else
            bitmap = (new j()).a(inputstream, f);
        return bitmap;
    }

    public static Bitmap a(String s)
    {
        Bitmap bitmap1;
        Log.d("MicroMsg.BitmapFactory", (new StringBuilder()).append("get bitmap from url:").append(s).toString());
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        httpurlconnection.setDoInput(true);
        httpurlconnection.connect();
        bitmap1 = a(httpurlconnection.getInputStream());
        Bitmap bitmap = bitmap1;
_L2:
        return bitmap;
        IOException ioexception;
        ioexception;
        Log.a("MicroMsg.BitmapFactory", "get bitmap from url failed");
        bitmap = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static Bitmap a(String s, float f)
    {
        Bitmap bitmap;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 3)
            bitmap = (new y()).a(s, f);
        else
            bitmap = (new j()).a(s, f);
        return bitmap;
    }

    public static String a(Context context)
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        return (new StringBuilder()).append("").append(displaymetrics.heightPixels).append("x").append(displaymetrics.widthPixels).toString();
    }

    public static String b(Context context)
    {
        String s;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() <= 3)
            s = (new y()).a(context);
        else
            s = (new j()).a(context);
        return s;
    }

    private static final String a = "MicroMsg.BitmapFactory";
}

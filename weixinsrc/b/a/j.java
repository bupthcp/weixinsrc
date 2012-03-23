// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.InputStream;

// Referenced classes of package b.a:
//            m

class j
    implements m
{

    j()
    {
    }

    public int a(Context context, float f)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        return (int)((f * (float)displaymetrics.densityDpi) / 160F);
    }

    public Bitmap a(InputStream inputstream)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inDensity = 160;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        return BitmapFactory.decodeStream(inputstream, null, options);
    }

    public Bitmap a(InputStream inputstream, float f)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inDensity = (int)(160F * f);
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        return BitmapFactory.decodeStream(inputstream, null, options);
    }

    public Bitmap a(String s, float f)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        float f1 = 160F * f;
        options.inDensity = (int)f1;
        Bitmap bitmap = BitmapFactory.decodeFile(s, options);
        if(bitmap != null)
            bitmap.setDensity((int)f1);
        return bitmap;
    }

    public String a(Context context)
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        Configuration configuration = context.getResources().getConfiguration();
        String s;
        StringBuilder stringbuilder;
        String s1;
        if(displaymetrics.density < 1F)
            s = (new StringBuilder()).append("").append("LDPI").toString();
        else
        if(displaymetrics.density >= 1.5F)
            s = (new StringBuilder()).append("").append("HDPI").toString();
        else
            s = (new StringBuilder()).append("").append("MDPI").toString();
        stringbuilder = (new StringBuilder()).append(s);
        if(configuration.orientation == 2)
            s1 = "_L";
        else
            s1 = "_P";
        return stringbuilder.append(s1).toString();
    }

    private static final float a = 1F;
    private static final float b = 1.5F;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;

// Referenced classes of package b.a:
//            m

class y
    implements m
{

    y()
    {
    }

    public int a(Context context, float f)
    {
        return (int)f;
    }

    public Bitmap a(InputStream inputstream)
    {
        return BitmapFactory.decodeStream(inputstream);
    }

    public Bitmap a(InputStream inputstream, float f)
    {
        return a(inputstream);
    }

    public Bitmap a(String s, float f)
    {
        return BitmapFactory.decodeFile(s);
    }

    public String a(Context context)
    {
        Configuration configuration = context.getResources().getConfiguration();
        StringBuilder stringbuilder = (new StringBuilder()).append("MDPI");
        String s;
        if(configuration.orientation == 2)
            s = "_L";
        else
            s = "_P";
        return stringbuilder.append(s).toString();
    }
}

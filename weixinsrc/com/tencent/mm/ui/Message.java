// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.*;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.Button;
import b.a.e;
import com.tencent.mm.modelpmsg.PushMessage;
import com.tencent.mm.platformtools.Util;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            ViewHolder

class Message
{

    Message(PushMessage pushmessage)
    {
        a = pushmessage;
    }

    private static Drawable a(Map map, Context context)
    {
        Object obj;
        if(map == null || map.size() <= 0)
        {
            obj = null;
        } else
        {
            String s = (String)map.get(e.a(context));
            if(s == null)
                s = (String)map.get(e.b(context));
            if(Util.h(s).length() <= 0)
            {
                obj = null;
            } else
            {
                com.tencent.mm.modelpmsg.PushMessage.IMAGE_PATH_TYPE image_path_type = PushMessage.b(s);
                if(image_path_type == com.tencent.mm.modelpmsg.PushMessage.IMAGE_PATH_TYPE.c)
                {
                    obj = null;
                } else
                {
                    String s1 = PushMessage.a(s);
                    if(Util.h(s1).length() <= 0)
                        obj = null;
                    else
                        try
                        {
                            Bitmap bitmap;
                            byte abyte0[];
                            if(image_path_type == com.tencent.mm.modelpmsg.PushMessage.IMAGE_PATH_TYPE.a)
                                bitmap = e.a(context.getAssets().open(s1));
                            else
                                bitmap = e.a(new FileInputStream(s1));
                            abyte0 = bitmap.getNinePatchChunk();
                            if(abyte0 != null && NinePatch.isNinePatchChunk(abyte0))
                            {
                                obj = new NinePatchDrawable(bitmap, abyte0, new Rect(), null);
                            } else
                            {
                                DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
                                Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, displaymetrics.widthPixels, (displaymetrics.widthPixels * bitmap.getHeight()) / bitmap.getWidth(), true);
                                if(bitmap1 != null)
                                {
                                    bitmap.recycle();
                                    bitmap = bitmap1;
                                }
                                obj = new BitmapDrawable(bitmap);
                            }
                        }
                        catch(IOException ioexception)
                        {
                            obj = null;
                        }
                }
            }
        }
        return ((Drawable) (obj));
    }

    public final String a()
    {
        return a.a;
    }

    public final void a(ViewHolder viewholder)
    {
        int i = 1;
        int j = 0;
        int k;
        Drawable drawable;
        Button button;
        if(viewholder != null)
            k = i;
        else
            k = j;
        Assert.assertTrue(k);
        if(viewholder.b == null)
            i = j;
        Assert.assertTrue(i);
        drawable = a(a.d, viewholder.a.getContext());
        viewholder.a.setBackgroundDrawable(drawable);
        button = viewholder.b;
        if(!a.b)
            j = 8;
        button.setVisibility(j);
    }

    public final String b()
    {
        return a.c;
    }

    private PushMessage a;
}

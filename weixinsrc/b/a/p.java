// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.ContentResolver;
import android.graphics.Bitmap;

// Referenced classes of package b.a:
//            z

class p
    implements z
{

    p()
    {
    }

    public Bitmap a(ContentResolver contentresolver, int i)
    {
        Bitmap bitmap;
        long l;
        bitmap = null;
        l = i;
        Bitmap bitmap1 = android.provider.MediaStore.Video.Thumbnails.getThumbnail(contentresolver, l, 1, null);
        bitmap = bitmap1;
_L2:
        return bitmap;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }
}

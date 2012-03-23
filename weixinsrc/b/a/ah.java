// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.*;
import android.database.Cursor;
import android.database.DatabaseUtils;

// Referenced classes of package b.a:
//            d, p

public class ah
{

    public ah()
    {
    }

    public static d a(Context context, Intent intent)
    {
        String s;
        ContentResolver contentresolver;
        s = null;
        contentresolver = context.getContentResolver();
        if(intent != null && intent.getData() != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s1 = intent.getDataString();
        if(s1 != null)
        {
            Object obj;
            if(s1.startsWith("content://"))
                obj = contentresolver.query(intent.getData(), s, s, s, s);
            else
            if(s1.startsWith("file://"))
            {
                String s2 = s1.substring("file://".length());
                String s3 = (new StringBuilder()).append("_data LIKE ").append(DatabaseUtils.sqlEscapeString(s2)).toString();
                obj = contentresolver.query(android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI, s, s3, s, s);
            } else
            {
                obj = s;
            }
            if(obj != null && ((Cursor) (obj)).getCount() > 0)
            {
                ((Cursor) (obj)).moveToFirst();
                int i = ((Cursor) (obj)).getInt(((Cursor) (obj)).getColumnIndexOrThrow("_id"));
                d d1 = new d();
                d1.c = ((Cursor) (obj)).getInt(((Cursor) (obj)).getColumnIndexOrThrow("duration"));
                d1.a = ((Cursor) (obj)).getString(((Cursor) (obj)).getColumnIndexOrThrow("_data"));
                d1.b = s;
                if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() < 5)
                {
                    s = d1;
                } else
                {
                    d1.b = (new p()).a(contentresolver, i);
                    s = d1;
                }
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static final int a = 5;
}

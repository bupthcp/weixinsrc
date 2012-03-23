// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelimage;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import b.a.e;
import b.a.q;
import com.tencent.mm.algorithm.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.SqliteDB;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelimage:
//            ImgInfo

public class ImgInfoStorage
{

    public ImgInfoStorage(SqliteDB sqlitedb, String s)
    {
        b = new LRUMap(20);
        d = null;
        e = null;
        d = sqlitedb;
        e = s;
        Cursor cursor = d.a("ImgInfo2", null, null, "id ASC ");
        if(cursor.getCount() > 0 && cursor.moveToLast())
            c = 1 + cursor.getInt(0);
        cursor.close();
        Log.b("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("loading new img id:").append(c).toString());
    }

    private ImgInfo e(String s)
    {
        if(FileOperation.c(s)) goto _L2; else goto _L1
_L1:
        ImgInfo imginfo = null;
_L8:
        return imginfo;
_L2:
        int i;
        String s1;
        android.graphics.BitmapFactory.Options options;
        i = q.a(s);
        s1 = MD5.a((new StringBuilder()).append(s).append(System.currentTimeMillis()).toString().getBytes());
        Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("insert : original img path = ").append(s).toString());
        options = Util.f(s);
        if(FileOperation.a(s) <= 0x32000 && (options == null || options.outHeight <= 960 && options.outWidth <= 960)) goto _L4; else goto _L3
_L3:
        if(Util.a(s, 960, 960, android.graphics.Bitmap.CompressFormat.JPEG, 70, e, s1)) goto _L6; else goto _L5
_L5:
        imginfo = null;
          goto _L7
_L6:
        FileOperation.a(e, s1, (new StringBuilder()).append(s1).append(".jpg").toString());
_L9:
        String s2 = (new StringBuilder()).append(s1).append(".jpg").toString();
        Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("insert: compressed bigImgPath = ").append(s2).toString());
        if(i != 0 && !Util.a((new StringBuilder()).append(e).append(s2).toString(), i, android.graphics.Bitmap.CompressFormat.JPEG, e, (new StringBuilder()).append(s1).append(".jpg").toString()))
        {
            imginfo = null;
        } else
        {
            String s3 = MD5.a((new StringBuilder()).append(s2).append(System.currentTimeMillis()).toString().getBytes());
            if(!Util.a((new StringBuilder()).append(e).append(s2).toString(), 100, 100, android.graphics.Bitmap.CompressFormat.JPEG, 60, e, s3))
            {
                imginfo = null;
            } else
            {
                Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("insert: thumbName = ").append(s3).toString());
                imginfo = new ImgInfo();
                imginfo.a(-1);
                int j = c;
                c = j + 1;
                imginfo.e(j);
                imginfo.a(s2);
                imginfo.b(s3);
                imginfo.c((int)Util.c());
                imginfo.h(FileOperation.a((new StringBuilder()).append(e).append(s2).toString()));
                Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("insert: compress img size = ").append(imginfo.i()).toString());
            }
        }
_L7:
        if(true) goto _L8; else goto _L4
_L4:
        FileOperation.a(e, s1, ".jpg", FileOperation.a(s, 0, FileOperation.a(s)));
          goto _L9
    }

    public final int a(long l, ImgInfo imginfo)
    {
        android.content.ContentValues contentvalues = imginfo.o();
        SqliteDB sqlitedb = d;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l).toString();
        return sqlitedb.a("ImgInfo2", contentvalues, "id=?", as);
    }

    public final long a(byte abyte0[], int i)
    {
        long l;
        Bitmap bitmap;
        l = -1L;
        bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        if(bitmap != null) goto _L2; else goto _L1
_L1:
        return l;
_L2:
        String s;
        String s1;
        s = (new StringBuilder()).append("SERVERID://").append(i).toString();
        s1 = MD5.a(s.getBytes());
        Util.a(bitmap, 60, android.graphics.Bitmap.CompressFormat.JPEG, e, s1);
        ImgInfo imginfo = new ImgInfo();
        imginfo.a(-1);
        int j = c;
        c = j + 1;
        imginfo.e(j);
        imginfo.a(s);
        imginfo.b(s1);
        imginfo.f(i);
        imginfo.c((int)Util.c());
        l = d.a("ImgInfo2", "id", imginfo.o());
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Log.a("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("create thumbnail from byte failed: ").append(s1).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final Bitmap a(String s, float f)
    {
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = null;
_L4:
        return bitmap;
_L2:
        String s1;
        String s3;
        s1 = s.trim();
        if(!s1.startsWith("THUMBNAIL://"))
            break MISSING_BLOCK_LABEL_64;
        s3 = s1.substring("THUMBNAIL://".length());
        String s4 = a(Integer.valueOf(s3).intValue()).k();
        s1 = s4;
        String s2 = (new StringBuilder()).append(e).append(s1).toString();
        Bitmap bitmap1 = (Bitmap)b.a(s2);
        if(bitmap1 == null || bitmap1.isRecycled())
        {
            bitmap1 = b.a.e.a(s2, f);
            if(bitmap1 != null)
            {
                bitmap1 = Bitmap.createScaledBitmap(bitmap1, (int)(f * (float)bitmap1.getWidth()), (int)(f * (float)bitmap1.getHeight()), true);
                Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("cached file ").append(s2).toString());
                b.a(s2, bitmap1);
            }
        }
        NumberFormatException numberformatexception;
        if(bitmap1 == null)
            bitmap = null;
        else
            bitmap = Util.a(bitmap1, bitmap1.getWidth() / 15);
        continue; /* Loop/switch isn't completed */
        numberformatexception;
        Log.a("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("read img buf failed: ").append(numberformatexception.getMessage()).toString());
        bitmap = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final Bitmap a(String s, float f, Context context)
    {
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = null;
_L4:
        return bitmap;
_L2:
        String s1 = s.trim();
        bitmap = (Bitmap)b.a(s1);
        if(bitmap == null || bitmap.isRecycled())
        {
            Bitmap bitmap1 = b.a.e.a(s1, f);
            if(bitmap1 != null)
            {
                int i = bitmap1.getWidth();
                int j = bitmap1.getHeight();
                int k = b.a.e.a(context, 100F);
                float f1 = (float)i / (float)k;
                bitmap = Bitmap.createScaledBitmap(bitmap1, k, (int)((float)j / f1), true);
                bitmap1.recycle();
                Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("cached file ").append(s1).toString());
                b.a(s1, bitmap);
            } else
            {
                bitmap = bitmap1;
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final ImgInfo a(int i)
    {
        ImgInfo imginfo = new ImgInfo();
        SqliteDB sqlitedb = d;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        Cursor cursor = sqlitedb.a("ImgInfo2", "id=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            imginfo.a(cursor);
        }
        cursor.close();
        return imginfo;
    }

    public final ImgInfo a(long l)
    {
        ImgInfo imginfo = new ImgInfo();
        SqliteDB sqlitedb = d;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l).toString();
        Cursor cursor = sqlitedb.a("ImgInfo2", "id=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            imginfo.a(cursor);
        }
        cursor.close();
        return imginfo;
    }

    public final ImgInfo a(String s)
    {
        ImgInfo imginfo = null;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return imginfo;
_L2:
        String s2;
        String s1 = s.trim();
        if(!s1.startsWith("THUMBNAIL://"))
            continue; /* Loop/switch isn't completed */
        s2 = s1.substring("THUMBNAIL://".length());
        ImgInfo imginfo1 = a(Integer.valueOf(s2).intValue());
        imginfo = imginfo1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        Log.a("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("img from uri failed: ").append(numberformatexception.getMessage()).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a()
    {
        b.a();
    }

    public final ImgInfo b(int i)
    {
        ImgInfo imginfo = new ImgInfo();
        SqliteDB sqlitedb = d;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        Cursor cursor = sqlitedb.a("ImgInfo2", "msgSvrId=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            imginfo.a(cursor);
        }
        cursor.close();
        return imginfo;
    }

    public final List b()
    {
        Object obj = null;
        String s = (new StringBuilder()).append("select * ").append(" FROM ImgInfo2").toString();
        String s1 = (new StringBuilder()).append(s).append(" WHERE offset<totalLen ;").toString();
        Cursor cursor = d.a(s1, ((String []) (obj)));
        int i = cursor.getCount();
        Log.d("MicroMsg.ImgInfoStorage", (new StringBuilder()).append("getUnfinishInfo resCount:").append(i).toString());
        if(i == 0)
        {
            cursor.close();
        } else
        {
            obj = new ArrayList();
            for(int j = 0; j < i; j++)
            {
                cursor.moveToPosition(j);
                ImgInfo imginfo = new ImgInfo();
                imginfo.a(cursor);
                ((List) (obj)).add(imginfo);
            }

            cursor.close();
        }
        return ((List) (obj));
    }

    public final void b(String s)
    {
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s1 = s.substring("THUMBNAIL://".length());
        int i = Integer.valueOf(s1).intValue();
        if(i > 0)
        {
            ImgInfo imginfo = a(i);
            if(imginfo != null && imginfo.f() == (long)i)
            {
                FileOperation.d((new StringBuilder()).append(e).append(imginfo.j()).toString());
                FileOperation.d((new StringBuilder()).append(e).append(imginfo.k()).toString());
                SqliteDB sqlitedb = d;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append("").append(i).toString();
                sqlitedb.a("ImgInfo2", "id=?", as);
            }
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final long c(String s)
    {
        ImgInfo imginfo = e(s);
        long l;
        if(imginfo == null)
            l = -1L;
        else
            l = d.a("ImgInfo2", "id", imginfo.o());
        return l;
    }

    public final ImgInfo c(int i)
    {
        ImgInfo imginfo = new ImgInfo();
        SqliteDB sqlitedb = d;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        Cursor cursor = sqlitedb.a("ImgInfo2", "msglocalid=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            imginfo.a(cursor);
        }
        cursor.close();
        return imginfo;
    }

    public final long d(String s)
    {
        ImgInfo imginfo = e(s);
        long l;
        if(imginfo == null)
        {
            l = -1L;
        } else
        {
            imginfo.g(imginfo.i());
            l = d.a("ImgInfo2", "id", imginfo.o());
        }
        return l;
    }

    public static final String a[];
    private static int c = 1;
    private LRUMap b;
    private SqliteDB d;
    private String e;

    static 
    {
        String as[] = new String[5];
        as[0] = "CREATE TABLE IF NOT EXISTS ImgInfo ( id INTEGER PRIMARY KEY, msgSvrId INT, offset INT, totalLen INT, bigImgPath TEXT, thumbImgPath TEXT )";
        as[1] = "CREATE TABLE IF NOT EXISTS ImgInfo2 ( id INTEGER PRIMARY KEY, msgSvrId INT, offset INT, totalLen INT, bigImgPath TEXT, thumbImgPath TEXT, createtime INT, msglocalid INT, status INT, nettimes INT, reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        as[2] = "CREATE INDEX IF NOT EXISTS  serverImgInfoIndex ON ImgInfo2 ( msgSvrId ) ";
        as[3] = "insert into ImgInfo2 select * , 0 ,0 ,0 ,0 ,0, 0 , \"\", \"\" from ImgInfo ; ";
        as[4] = "delete from ImgInfo ; ";
        a = as;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.database.Cursor;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumImg

public class AlbumImgStorage extends MStorage
{

    public final int a(long l, AlbumImg albumimg)
    {
        Log.d("MicroMsg.AlbumImgStorage", "updateImg");
        android.content.ContentValues contentvalues = albumimg.a();
        SqliteDB sqlitedb = a;
        String s = (new StringBuilder()).append("id").append("=?").toString();
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l).toString();
        int i = sqlitedb.a("albumInfo_img", contentvalues, s, as);
        Log.d("MicroMsg.AlbumImgStorage", (new StringBuilder()).append("updateImg result ").append(i).toString());
        return i;
    }

    public final AlbumImg a(long l)
    {
        AlbumImg albumimg = new AlbumImg();
        SqliteDB sqlitedb = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l).toString();
        Cursor cursor = sqlitedb.a("albumInfo_img", "id=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            albumimg.a(cursor);
        }
        cursor.close();
        return albumimg;
    }

    public final AlbumImg a(String s)
    {
        AlbumImg albumimg = new AlbumImg();
        SqliteDB sqlitedb = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        Cursor cursor = sqlitedb.a("albumInfo_img", "pcId=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            albumimg.a(cursor);
        }
        cursor.close();
        return albumimg;
    }

    public final boolean a(String s, AlbumImg albumimg)
    {
        boolean flag;
        Cursor cursor;
        flag = true;
        Log.d("MicroMsg.AlbumImgStorage", (new StringBuilder()).append("replace AlbumLikeList ").append(s).toString());
        SqliteDB sqlitedb = a;
        String s1 = (new StringBuilder()).append("pcId").append("=?").toString();
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        cursor = sqlitedb.a("albumInfo_img", s1, as, null);
        if(cursor.getCount() != 0) goto _L2; else goto _L1
_L1:
        cursor.close();
        Log.d("MicroMsg.AlbumImgStorage", "AlbumImg Insert");
        if(albumimg == null) goto _L4; else goto _L3
_L3:
        android.content.ContentValues contentvalues1;
        int j = b;
        b = j + 1;
        albumimg.a(j);
        contentvalues1 = albumimg.a();
        if((int)a.a("albumInfo_img", "id", contentvalues1) == -1) goto _L4; else goto _L5
_L5:
        return flag;
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L2:
        cursor.close();
        android.content.ContentValues contentvalues = albumimg.a();
        SqliteDB sqlitedb1 = a;
        String s2 = (new StringBuilder()).append("id").append("=?").toString();
        String as1[] = new String[flag];
        as1[0] = (new StringBuilder()).append("").append(s).toString();
        int i = sqlitedb1.a("albumInfo_img", contentvalues, s2, as1);
        Log.d("MicroMsg.AlbumImgStorage", (new StringBuilder()).append("updateImg result ").append(i).toString());
        if(i <= 0)
            flag = false;
        if(true) goto _L5; else goto _L6
_L6:
    }

    public final boolean b(long l)
    {
        boolean flag = true;
        SqliteDB sqlitedb = a;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(l).toString();
        if(sqlitedb.a("albumInfo_img", "pcId=?", as) <= 0)
            flag = false;
        return flag;
    }

    public final int c(String s)
    {
        if(FileOperation.c(s)) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        String s1;
        s1 = (new StringBuilder()).append("album_tmp_").append(MD5.a((new StringBuilder()).append(s).append(System.currentTimeMillis()).toString().getBytes())).toString();
        Log.d("MicroMsg.AlbumImgStorage", (new StringBuilder()).append("insert : original img path = ").append(s).toString());
        android.graphics.BitmapFactory.Options options = Util.f(s);
        if(FileOperation.a(s) <= 0x32000 && (options == null || options.outHeight <= 480 && options.outWidth <= 480))
            break; /* Loop/switch isn't completed */
        if(!Util.a(s, 480, 480, android.graphics.Bitmap.CompressFormat.JPEG, 70, d, s1))
        {
            k = -1;
            continue; /* Loop/switch isn't completed */
        }
        FileOperation.a(d, s1, (new StringBuilder()).append(s1).append(".jpg").toString());
_L5:
        String s2 = (new StringBuilder()).append(s1).append(".jpg").toString();
        Log.d("MicroMsg.AlbumImgStorage", (new StringBuilder()).append("insert: compressed bigImgPath = ").append(s2).toString());
        AlbumImg albumimg = new AlbumImg();
        albumimg.a(s2);
        albumimg.d("");
        albumimg.a((int)Util.c());
        int i = b;
        b = i + 1;
        albumimg.a(i);
        albumimg.d();
        int j = FileOperation.a((new StringBuilder()).append(d).append(s2).toString());
        albumimg.c(j);
        Log.c("MicroMsg.AlbumImgStorage", (new StringBuilder()).append("insert a local AlbumImg  totallen  :").append(j).toString());
        k = (int)a.a("albumInfo_img", "id", albumimg.a());
        if(true) goto _L4; else goto _L3
_L3:
        FileOperation.a(d, s1, ".jpg", FileOperation.a(s, 0, FileOperation.a(s)));
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private static int b = 1;
    private static String c[];
    private SqliteDB a;
    private String d;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS albumInfo_img ( id INTEGER PRIMARY KEY, pcId TEXT, createTime INT, userName VARCHAR(40), totallen INT, offset INT, local_flag INT, thumb TEXT, bigpath TEXT, nums INT, reserved1 INT, reserved2 TEXT, reserved3 TEXT )";
        as[1] = "CREATE INDEX IF NOT EXISTS serverAlbumImgTimeIndex ON albumInfo_img ( createTime )";
        c = as;
    }
}

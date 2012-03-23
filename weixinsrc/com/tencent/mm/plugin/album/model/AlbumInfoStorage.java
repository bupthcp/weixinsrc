// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.io.File;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumInfo

public class AlbumInfoStorage extends MStorage
{

    public static Bitmap d(String s)
    {
        Bitmap bitmap = null;
        Bitmap bitmap1;
        if(!(new File(s)).exists())
            break MISSING_BLOCK_LABEL_30;
        bitmap1 = BitmapFactory.decodeFile(s);
        bitmap = bitmap1;
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        return bitmap;
    }

    public final AlbumInfo a(String s)
    {
        AlbumInfo albuminfo;
        if(s == null || s.equals("") || s.length() <= 0)
        {
            albuminfo = null;
        } else
        {
            albuminfo = new AlbumInfo();
            String s1 = (new StringBuilder()).append("select * from albumInfo  where albumInfo.pcId=\"").append(Util.a(s)).append("\"").toString();
            Cursor cursor = a.a(s1, null);
            if(cursor.getCount() != 0)
            {
                cursor.moveToFirst();
                albuminfo.a(cursor);
                cursor.close();
            } else
            {
                cursor.close();
                albuminfo = null;
            }
        }
        return albuminfo;
    }

    public final boolean a()
    {
        return a.b("delete from albumInfo");
    }

    public final boolean a(AlbumInfo albuminfo)
    {
        boolean flag;
        flag = false;
        Log.d("MicroMsg.AlbumInfoStorage", "AlbumInfo Insert");
        if(albuminfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        albuminfo.i();
        android.content.ContentValues contentvalues = albuminfo.a();
        int i = (int)a.a("albumInfo", "albumInfoID", contentvalues);
        Log.d("MicroMsg.AlbumInfoStorage", (new StringBuilder()).append("AlbumInfo Insert result").append(i).toString());
        if(i != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(String s, AlbumInfo albuminfo)
    {
        boolean flag = true;
        albuminfo.i();
        android.content.ContentValues contentvalues = albuminfo.a();
        SqliteDB sqlitedb = a;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        if(sqlitedb.a("albumInfo", contentvalues, "pcId=?", as) <= 0)
            flag = false;
        return flag;
    }

    public final Cursor b()
    {
        Log.d("MicroMsg.AlbumInfoStorage", "getCursor select * from albumInfo  order by albumInfo.createTime desc ");
        return a.a("select * from albumInfo  order by albumInfo.createTime desc ", null);
    }

    public final Cursor c(String s)
    {
        String s1 = (new StringBuilder()).append("select * from albumInfo  where albumInfo.userName=\"").append(Util.a(s)).append("\"").append(" order by albumInfo.createTime desc ").toString();
        Log.d("MicroMsg.AlbumInfoStorage", (new StringBuilder()).append("getCursor ").append(s1).toString());
        return a.a(s1, null);
    }

    private static String b[];
    private SqliteDB a;

    static 
    {
        String as[] = new String[3];
        as[0] = "CREATE TABLE IF NOT EXISTS albumInfo ( albumInfoID INTEGER PRIMARY KEY, pcId TEXT, userName VARCHAR(40), createTime INT, type INT, photo_flag INT, type_flag INT, like_flag INT, sequence INT, fLongitude REAL, fLatitude REAL, likecount INT, description TEXT,cncity TEXT  , twcity TEXT  , encity TEXT  , reserved1 INT  , reserved2 INT  , reserved3 TEXT  , reserved4 TEXT  , reserved5 TEXT  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS serverAlbumNameIndex ON albumInfo ( pcId )";
        as[2] = "CREATE INDEX IF NOT EXISTS serverAlbumTimeIndex ON albumInfo ( createTime )";
        b = as;
    }
}

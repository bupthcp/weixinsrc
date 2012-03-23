// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

public class AlbumExtStorage extends MStorage
{

    public final String a(String s)
    {
        SqliteDB sqlitedb = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        Cursor cursor = sqlitedb.a("albumExtInfo", "userName=?", as, null);
        String s1;
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            s1 = cursor.getString(1);
            cursor.close();
        } else
        {
            cursor.close();
            s1 = "";
        }
        return s1;
    }

    public final boolean a(String s, String s1)
    {
        boolean flag = false;
        if(s != null && s1 != null && !s.equals("") && !s1.equals(""))
        {
            SqliteDB sqlitedb = a;
            String as[] = new String[1];
            as[flag] = (new StringBuilder()).append("").append(s).toString();
            Cursor cursor = sqlitedb.a("albumExtInfo", "userName=?", as, null);
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("userName", s);
            contentvalues.put("md5Val", s1);
            int i;
            if(cursor.getCount() != 0)
            {
                SqliteDB sqlitedb1 = a;
                String as1[] = new String[1];
                as1[flag] = (new StringBuilder()).append("").append(s).toString();
                i = sqlitedb1.a("albumExtInfo", contentvalues, "userName=?", as1);
            } else
            {
                i = (int)a.a("albumExtInfo", "userName", contentvalues);
            }
            cursor.close();
            Log.d("MciroMsg.AlbumExtStorage", (new StringBuilder()).append("result insertMd5 ").append(i).toString());
            flag = true;
        }
        return flag;
    }

    private static String b[];
    private SqliteDB a;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS albumExtInfo ( userName VARCHAR(40), md5Val TEXT, reserved1 TEXT  , reserved2 TEXT  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS serverAlbumUserNameNameIndex ON albumExtInfo ( userName )";
        b = as;
    }
}

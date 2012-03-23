// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelshake;

import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.modelshake:
//            ShakeItem

public class ShakeItemStorage extends MStorage
{

    public ShakeItemStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final Cursor a()
    {
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[0] = "2";
        return sqlitedb.a("select shakeitem1.shakeItemID,shakeitem1.username,shakeitem1.nickname,shakeitem1.province,shakeitem1.city,shakeitem1.signature,shakeitem1.distance,shakeitem1.sex,shakeitem1.imgstatus,shakeitem1.hasHDImg,shakeitem1.insertBatch,shakeitem1.reserved1,shakeitem1.reserved2,shakeitem1.reserved3,shakeitem1.reserved4 from shakeitem1   order by  case when insertBatch = ? then 0 else 1 end , reserved2 desc, shakeItemID desc ", as);
    }

    public final ShakeItem a(String s)
    {
        ShakeItem shakeitem;
        if(s == null || s.length() <= 0)
        {
            shakeitem = null;
        } else
        {
            shakeitem = new ShakeItem();
            shakeitem.g(-1);
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[0] = s;
            Cursor cursor = sqlitedb.a("shakeitem1", "username = ?", as, null);
            if(cursor.getCount() != 0)
            {
                cursor.moveToFirst();
                shakeitem.a(cursor);
            }
            cursor.close();
        }
        return shakeitem;
    }

    public final void a(int i)
    {
        Log.c("MicroMsg.ShakeItemStorage", (new StringBuilder()).append("delOldRecord count:").append(i).toString());
        StringBuilder stringbuilder = (new StringBuilder()).append("DELETE FROM shakeitem1 WHERE shakeItemID NOT IN ( SELECT shakeItemID FROM shakeitem1 ORDER BY shakeItemID DESC LIMIT ");
        int j;
        String s;
        if(100 > i)
            j = 100 - i;
        else
            j = 0;
        s = stringbuilder.append(j).append(" )").toString();
        if(b.b(s))
        {
            Log.c("MicroMsg.ShakeItemStorage", (new StringBuilder()).append("delOldRecord success count:").append(i).toString());
            c();
        }
    }

    public final boolean a(ShakeItem shakeitem)
    {
        boolean flag = false;
        if(shakeitem != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        String s = shakeitem.c();
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[flag] = (new StringBuilder()).append("").append(s).toString();
        int i = sqlitedb.a("shakeitem1", "username=?", as);
        c();
        Log.c("MicroMsg.ShakeItemStorage", (new StringBuilder()).append("delByusername:").append(s).append(" result:").append(i).toString());
        shakeitem.g(-2);
        android.content.ContentValues contentvalues = shakeitem.s();
        int j = (int)b.a("shakeitem1", "shakeItemID", contentvalues);
        c();
        Log.c("MicroMsg.ShakeItemStorage", (new StringBuilder()).append("insert:").append(shakeitem.c()).append(" id:").append(j).toString());
        if(j != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final Cursor b()
    {
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[0] = "0";
        return sqlitedb.a("select shakeitem1.shakeItemID,shakeitem1.username,shakeitem1.nickname,shakeitem1.province,shakeitem1.city,shakeitem1.signature,shakeitem1.distance,shakeitem1.sex,shakeitem1.imgstatus,shakeitem1.hasHDImg,shakeitem1.insertBatch,shakeitem1.reserved1,shakeitem1.reserved2,shakeitem1.reserved3,shakeitem1.reserved4 from shakeitem1   where insertBatch != ?  order by reserved2 desc, shakeItemID desc ", as);
    }

    public final void c(String s)
    {
        ShakeItem shakeitem = new ShakeItem();
        shakeitem.f(1);
        shakeitem.g(1024);
        SqliteDB sqlitedb = b;
        android.content.ContentValues contentvalues = shakeitem.s();
        String as[] = new String[2];
        as[0] = s;
        as[1] = "2";
        if(-1 != sqlitedb.a("shakeitem1", contentvalues, "username=? and insertBatch=?", as))
            c();
    }

    public final boolean d()
    {
        boolean flag = b.b("delete from shakeitem1");
        c();
        return flag;
    }

    public final void e()
    {
        Log.c("MicroMsg.ShakeItemStorage", "setAllOld");
        ShakeItem shakeitem = new ShakeItem();
        shakeitem.f(0);
        shakeitem.g(1024);
        SqliteDB sqlitedb = b;
        android.content.ContentValues contentvalues = shakeitem.s();
        String as[] = new String[1];
        as[0] = "0";
        if(-1 != sqlitedb.a("shakeitem1", contentvalues, "insertBatch!=?", as))
            c();
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS shakeitem1 ( shakeItemID INTEGER PRIMARY KEY, username TEXT, nickname TEXT, province TEXT, city TEXT, signature TEXT, distance TEXT, sex INT, imgstatus INT, hasHDImg INT, insertBatch INT, reserved1 INT, reserved2 INT, reserved3 TEXT, reserved4 TEXT )";
        as[1] = "CREATE UNIQUE INDEX IF NOT EXISTS shakeItemUsernameIndex ON shakeitem1 ( username )";
        a = as;
    }
}

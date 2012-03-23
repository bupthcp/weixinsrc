// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storagebase;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.storagebase:
//            SqliteDB

final class DBVerInfoTable
{

    private DBVerInfoTable()
    {
    }

    public static boolean a(SqliteDB sqlitedb)
    {
        boolean flag;
        if(sqlitedb == null)
        {
            flag = true;
        } else
        {
            String s = (new StringBuilder()).append("CREATE TABLE IF NOT EXISTS DBInfoTableV2 ( ").append("key TEXT, ").toString();
            if(!sqlitedb.b((new StringBuilder()).append(s).append("version TEXT )").toString()))
            {
                flag = false;
            } else
            {
                String s1 = "0";
                Cursor cursor = sqlitedb.a("DBInfoTableV2", null, null, null);
                if(cursor != null)
                {
                    if(cursor.moveToFirst())
                        s1 = cursor.getString(1);
                    cursor.close();
                }
                Log.d("MicroMsg.DBVerInfoTable", (new StringBuilder()).append("dbVersion : ").append(s1).toString());
                if(s1.equals("1.1"))
                    flag = true;
                else
                if(s1.equals(""))
                {
                    b(sqlitedb);
                    flag = true;
                } else
                if(s1.equals("0"))
                {
                    b(sqlitedb);
                    flag = true;
                } else
                {
                    String as[] = s1.split("\\.");
                    if(as.length != 2)
                    {
                        b(sqlitedb);
                        flag = true;
                    } else
                    {
                        int i = Integer.parseInt(as[0]);
                        Log.d("MicroMsg.DBVerInfoTable", (new StringBuilder()).append("majorVerAtDB : ").append(i).toString());
                        if(i != 0 && i > 1)
                        {
                            flag = false;
                        } else
                        {
                            b(sqlitedb);
                            flag = true;
                        }
                    }
                }
            }
        }
        return flag;
    }

    private static void b(SqliteDB sqlitedb)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("version", "1.1");
        sqlitedb.b("DBInfoTableV2", null, contentvalues);
    }
}

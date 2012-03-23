// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.modelbottle:
//            BottleInfo

public class BottleInfoStorage extends MStorage
{

    public BottleInfoStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final BottleInfo a(String s)
    {
        BottleInfo bottleinfo = null;
        String s1 = (new StringBuilder()).append("select bottleinfo1.parentclientid,bottleinfo1.childcount,bottleinfo1.bottleid,bottleinfo1.bottletype,bottleinfo1.msgtype,bottleinfo1.voicelen,bottleinfo1.content,bottleinfo1.createtime,bottleinfo1.reserved1,bottleinfo1.reserved2,bottleinfo1.reserved3,bottleinfo1.reserved4 from bottleinfo1   where bottleinfo1.bottleid = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, bottleinfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                bottleinfo = new BottleInfo();
                bottleinfo.a(cursor);
            }
            cursor.close();
        }
        return bottleinfo;
    }

    public final boolean a()
    {
        boolean flag;
        if(b.a("bottleinfo1", null, null) > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean a(BottleInfo bottleinfo)
    {
        boolean flag = false;
        if(bottleinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        bottleinfo.b();
        android.content.ContentValues contentvalues = bottleinfo.a();
        if((int)b.a("bottleinfo1", "bottleid", contentvalues) != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean c(String s)
    {
        boolean flag = true;
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        if(sqlitedb.a("bottleinfo1", "bottleid= ?", as) <= 0)
            flag = false;
        return flag;
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS bottleinfo1 ( parentclientid text  , childcount int  , bottleid text  PRIMARY KEY , bottletype int  , msgtype int  , voicelen int  , content text  , createtime long  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        a = as;
    }
}

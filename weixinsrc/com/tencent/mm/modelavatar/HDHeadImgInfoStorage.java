// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.modelavatar:
//            HDHeadImgInfo

public class HDHeadImgInfoStorage extends MStorage
{

    public HDHeadImgInfoStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final int a(String s, HDHeadImgInfo hdheadimginfo)
    {
        android.content.ContentValues contentvalues = hdheadimginfo.c();
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[0] = s;
        return sqlitedb.a("hdheadimginfo", contentvalues, "username=?", as);
    }

    public final HDHeadImgInfo a(String s)
    {
        HDHeadImgInfo hdheadimginfo = null;
        String s1 = (new StringBuilder()).append("select hdheadimginfo.username,hdheadimginfo.imgwidth,hdheadimginfo.imgheigth,hdheadimginfo.imgformat,hdheadimginfo.totallen,hdheadimginfo.startpos,hdheadimginfo.headimgtype,hdheadimginfo.reserved1,hdheadimginfo.reserved2,hdheadimginfo.reserved3,hdheadimginfo.reserved4 from hdheadimginfo   where hdheadimginfo.username = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, hdheadimginfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                hdheadimginfo = new HDHeadImgInfo();
                hdheadimginfo.a(cursor.getString(0));
                hdheadimginfo.a(cursor.getInt(1));
                hdheadimginfo.b(cursor.getInt(2));
                hdheadimginfo.b(cursor.getString(3));
                hdheadimginfo.c(cursor.getInt(4));
                hdheadimginfo.d(cursor.getInt(5));
                hdheadimginfo.e(cursor.getInt(6));
                hdheadimginfo.c(cursor.getString(7));
                hdheadimginfo.d(cursor.getString(8));
                hdheadimginfo.f(cursor.getInt(9));
                hdheadimginfo.g(cursor.getInt(10));
            }
            cursor.close();
        }
        return hdheadimginfo;
    }

    public final boolean a(HDHeadImgInfo hdheadimginfo)
    {
        boolean flag = false;
        if(hdheadimginfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        hdheadimginfo.d();
        android.content.ContentValues contentvalues = hdheadimginfo.c();
        if((int)b.a("hdheadimginfo", "username", contentvalues) != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS hdheadimginfo ( username text  PRIMARY KEY , imgwidth int  , imgheigth int  , imgformat text  , totallen int  , startpos int  , headimgtype int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        a = as;
    }
}

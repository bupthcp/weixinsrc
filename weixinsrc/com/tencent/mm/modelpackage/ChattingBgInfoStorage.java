// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpackage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelpackage:
//            ChattingBgInfo

public class ChattingBgInfoStorage extends MStorage
{

    public ChattingBgInfoStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final Cursor a()
    {
        return b.a("select chattingbginfo.username,chattingbginfo.bgflag,chattingbginfo.path,chattingbginfo.reserved1,chattingbginfo.reserved2,chattingbginfo.reserved3,chattingbginfo.reserved4 from chattingbginfo  ", null);
    }

    public final ChattingBgInfo a(String s)
    {
        ChattingBgInfo chattingbginfo = null;
        String s1 = (new StringBuilder()).append("select chattingbginfo.username,chattingbginfo.bgflag,chattingbginfo.path,chattingbginfo.reserved1,chattingbginfo.reserved2,chattingbginfo.reserved3,chattingbginfo.reserved4 from chattingbginfo   where chattingbginfo.username = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, chattingbginfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                chattingbginfo = new ChattingBgInfo();
                chattingbginfo.a(cursor);
            }
            cursor.close();
        }
        return chattingbginfo;
    }

    public final boolean a(ChattingBgInfo chattingbginfo)
    {
        boolean flag = false;
        if(chattingbginfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        chattingbginfo.b();
        ContentValues contentvalues = chattingbginfo.a();
        if((int)b.a("chattingbginfo", "username", contentvalues) != -1)
        {
            b(chattingbginfo.c());
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean b()
    {
        boolean flag;
        if(b.a("chattingbginfo", null, null) > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean b(ChattingBgInfo chattingbginfo)
    {
        boolean flag;
        flag = true;
        boolean flag1;
        ContentValues contentvalues;
        SqliteDB sqlitedb;
        String as[];
        if(chattingbginfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        contentvalues = chattingbginfo.a();
        if(contentvalues.size() <= 0) goto _L2; else goto _L1
_L1:
        sqlitedb = b;
        as = new String[flag];
        as[0] = chattingbginfo.c();
        if(sqlitedb.a("chattingbginfo", contentvalues, "username= ?", as) <= 0) goto _L2; else goto _L3
_L3:
        b(chattingbginfo.c());
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS chattingbginfo ( username text  PRIMARY KEY , bgflag int  , path text  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        a = as;
    }
}

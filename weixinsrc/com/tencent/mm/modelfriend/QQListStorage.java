// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.TimeLogger;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelfriend:
//            QQList

public class QQListStorage extends MStorage
{

    public QQListStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final Cursor a(int i, String s)
    {
        Log.d("MicroMsg.QQListStorage", (new StringBuilder()).append("getByGroupID: GroupID:").append(i).append(", searchby:").append(s).toString());
        String s1 = (new StringBuilder()).append("select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin from qqlist  where qqlist.groupid = \"").append(i).append("\" and ( ").toString();
        String s2 = (new StringBuilder()).append(s1).append("qqlist.username like '%").append(s).append("%' or ").toString();
        String s3 = (new StringBuilder()).append(s2).append("qqlist.nickname like '%").append(s).append("%' or ").toString();
        String s4 = (new StringBuilder()).append(s3).append("qqlist.pyinitial like '%").append(s).append("%' or ").toString();
        String s5 = (new StringBuilder()).append(s4).append("qqlist.quanpin like '%").append(s).append("%' )").toString();
        String s6 = (new StringBuilder()).append(s5).append(" order by wexinstatus").toString();
        return b.a(s6, null);
    }

    public final QQList a(String s)
    {
        QQList qqlist = null;
        String s1 = (new StringBuilder()).append("select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin from qqlist  where qqlist.username = \"").append(s).append("\"").toString();
        Cursor cursor = b.a(s1, qqlist);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                qqlist = new QQList();
                qqlist.a(cursor);
            }
            cursor.close();
        }
        return qqlist;
    }

    public final boolean a(int i)
    {
        boolean flag = true;
        Log.d("MicroMsg.QQListStorage", (new StringBuilder()).append("delete: GroupID:").append(i).toString());
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        if(sqlitedb.a("qqlist", "groupid= ?", as) <= 0)
            flag = false;
        return flag;
    }

    public final boolean a(List list)
    {
        if(list != null && list.size() > 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L6:
        return flag;
_L2:
        TimeLogger timelogger;
        int i;
        int j;
        timelogger = new TimeLogger("MicroMsg.QQListStorage", "BatchResetGroupQQ transaction");
        timelogger.a("transation begin");
        i = b.b();
        j = 0;
_L4:
        int k;
        if(j >= list.size())
            break; /* Loop/switch isn't completed */
        QQList qqlist = (QQList)list.get(j);
        if(qqlist == null)
            break MISSING_BLOCK_LABEL_149;
        qqlist.b();
        android.content.ContentValues contentvalues = qqlist.a();
        k = (int)b.a("qqlist", "qq", contentvalues);
        Log.d("MicroMsg.QQListStorage", (new StringBuilder()).append("uin:").append(qqlist.c()).append(" res:").append(k).toString());
        if(k == -1)
            break; /* Loop/switch isn't completed */
        j++;
        if(true) goto _L4; else goto _L3
_L3:
        flag = true;
_L7:
        b.b(i);
        b.a(i);
        timelogger.a("transation end");
        timelogger.a();
        c();
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        Log.a("MicroMsg.QQListStorage", (new StringBuilder()).append("").append(exception.getMessage()).toString());
        flag = false;
          goto _L7
    }

    public final Cursor b(int i)
    {
        Log.d("MicroMsg.QQListStorage", (new StringBuilder()).append("getByGroupID: GroupID:").append(i).toString());
        String s = (new StringBuilder()).append("select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin from qqlist  where qqlist.groupid = \"").append(i).append("\"").append(" order by ").append("wexinstatus").toString();
        return b.a(s, null);
    }

    public static final String a[];
    private final SqliteDB b;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS qqlist ( qq long  PRIMARY KEY , wexinstatus int  , groupid int  , username text  , nickname text  , pyinitial text  , quanpin text  , qqnickname text  , qqpyinitial text  , qqquanpin text  , qqremark text  , qqremarkpyinitial text  , qqremarkquanpin text  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS groupid_index ON qqlist ( groupid ) ";
        a = as;
    }
}

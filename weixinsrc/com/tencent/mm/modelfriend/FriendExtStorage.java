// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelfriend:
//            FriendExt

public class FriendExtStorage extends MStorage
{

    public FriendExtStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final boolean a(FriendExt friendext)
    {
        boolean flag;
        flag = true;
        String s = friendext.c();
        String s1 = (new StringBuilder()).append("select friend_ext.username,friend_ext.sex,friend_ext.personalcard,friend_ext.province,friend_ext.city,friend_ext.signature from friend_ext   where friend_ext.username = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, null);
        boolean flag1;
        ContentValues contentvalues1;
        SqliteDB sqlitedb;
        String as[];
        if(cursor.getCount() > 0)
            flag1 = flag;
        else
            flag1 = false;
        cursor.close();
        if(!flag1) goto _L2; else goto _L1
_L1:
        if(friendext == null) goto _L4; else goto _L3
_L3:
        contentvalues1 = friendext.a();
        ContentValues contentvalues;
        int i;
        if(contentvalues1.size() > 0)
        {
            sqlitedb = b;
            as = new String[flag];
            as[0] = "username";
            i = sqlitedb.a("friend_ext", contentvalues1, "username=?", as);
        } else
        {
            i = 0;
        }
        if(i <= 0) goto _L4; else goto _L5
_L5:
        c();
        return flag;
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L2:
        if(friendext != null)
        {
            friendext.b();
            contentvalues = friendext.a();
            if((int)b.a("friend_ext", "username", contentvalues) != -1)
                continue; /* Loop/switch isn't completed */
        }
        flag = false;
        if(true) goto _L5; else goto _L6
_L6:
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
        timelogger = new TimeLogger("MicroMsg.FriendExtStorage", "batchSetFriendExt transaction");
        timelogger.a("transation begin");
        i = b.b();
        j = 0;
_L4:
        if(j >= list.size())
            break; /* Loop/switch isn't completed */
        FriendExt friendext = (FriendExt)list.get(j);
        if(friendext != null)
            a(friendext);
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
        Log.a("MicroMsg.FriendExtStorage", (new StringBuilder()).append("").append(exception.getMessage()).toString());
        flag = false;
          goto _L7
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS friend_ext ( username text  PRIMARY KEY , sex int  , personalcard int  , province text  , city text  , signature text  , reserved1 text  , reserved2 text  , reserved3 text  , reserved4 text  , reserved5 int  , reserved6 int  , reserved7 int  , reserved8 int  ) ";
        a = as;
    }
}

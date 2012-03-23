// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.modelfriend:
//            InviteFriendOpen

public class InviteFriendOpenStorage extends MStorage
{

    public InviteFriendOpenStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final boolean a(InviteFriendOpen invitefriendopen)
    {
        boolean flag = true;
        if(!a(invitefriendopen.c())) goto _L2; else goto _L1
_L1:
        invitefriendopen.b();
        android.content.ContentValues contentvalues1 = invitefriendopen.a();
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(invitefriendopen.c()).toString();
        if(sqlitedb.a("invitefriendopen", contentvalues1, "username=?", as) <= 0)
            flag = false;
_L4:
        return flag;
_L2:
        if(invitefriendopen != null)
        {
            invitefriendopen.b();
            android.content.ContentValues contentvalues = invitefriendopen.a();
            if((int)b.a("invitefriendopen", "username", contentvalues) != -1)
                continue; /* Loop/switch isn't completed */
        }
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a(String s)
    {
        String s1 = (new StringBuilder()).append("select invitefriendopen.username,invitefriendopen.friendtype,invitefriendopen.updatetime,invitefriendopen.reserved1,invitefriendopen.reserved2,invitefriendopen.reserved3,invitefriendopen.reserved4 from invitefriendopen   where invitefriendopen.username = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, null);
        boolean flag;
        if(cursor.getCount() > 0)
            flag = true;
        else
            flag = false;
        cursor.close();
        return flag;
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS invitefriendopen ( username text  PRIMARY KEY , friendtype int  , updatetime int  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        a = as;
    }
}

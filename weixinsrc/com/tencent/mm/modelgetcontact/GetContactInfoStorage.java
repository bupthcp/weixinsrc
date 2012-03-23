// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetcontact;

import android.database.Cursor;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelgetcontact:
//            GetContactInfo

public class GetContactInfoStorage extends MStorage
{

    public GetContactInfoStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final List a()
    {
        Object obj = null;
        Cursor cursor = b.a("select getcontactinfo.username,getcontactinfo.inserttime,getcontactinfo.type,getcontactinfo.lastgettime,getcontactinfo.reserved1,getcontactinfo.reserved2,getcontactinfo.reserved3,getcontactinfo.reserved4 from getcontactinfo  ", ((String []) (obj)));
        if(cursor != null)
        {
            int i = cursor.getCount();
            if(i <= 0)
            {
                cursor.close();
            } else
            {
                obj = new ArrayList();
                for(int j = 0; j < i; j++)
                {
                    cursor.moveToPosition(j);
                    GetContactInfo getcontactinfo = new GetContactInfo();
                    getcontactinfo.a(cursor);
                    ((List) (obj)).add(getcontactinfo);
                }

                cursor.close();
            }
        }
        return ((List) (obj));
    }

    public final boolean a(GetContactInfo getcontactinfo)
    {
        boolean flag = false;
        if(getcontactinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        getcontactinfo.b();
        android.content.ContentValues contentvalues = getcontactinfo.a();
        if((int)b.b("getcontactinfo", "username", contentvalues) != -1)
        {
            b(getcontactinfo.c());
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(String s)
    {
        boolean flag = true;
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        if(sqlitedb.a("getcontactinfo", "username= ?", as) > 0)
            b(s);
        else
            flag = false;
        return flag;
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS getcontactinfo ( username text  PRIMARY KEY , inserttime long  , type int  , lastgettime int  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        a = as;
    }
}

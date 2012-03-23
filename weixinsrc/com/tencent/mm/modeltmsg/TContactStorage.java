// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modeltmsg;

import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modeltmsg:
//            TContact

public class TContactStorage extends MStorage
{

    public TContactStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final TContact a(String s)
    {
        TContact tcontact = null;
        String s1 = (new StringBuilder()).append("select tcontact.username,tcontact.extupdateseq,tcontact.imgupdateseq,tcontact.needupdate,tcontact.reserved1,tcontact.reserved2,tcontact.reserved3,tcontact.reserved4,tcontact.reserved5,tcontact.reserved6,tcontact.reserved7,tcontact.reserved8 from tcontact   where tcontact.username = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, tcontact);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                tcontact = new TContact();
                tcontact.a(cursor.getString(0));
                tcontact.a(cursor.getLong(1));
                tcontact.b(cursor.getLong(2));
                tcontact.b(cursor.getInt(3));
                tcontact.c(cursor.getInt(4));
                tcontact.d(cursor.getInt(5));
                tcontact.e(cursor.getInt(6));
                tcontact.f(cursor.getInt(7));
                tcontact.b(cursor.getString(8));
                tcontact.c(cursor.getString(9));
                tcontact.d(cursor.getString(10));
                tcontact.e(cursor.getString(11));
            }
            cursor.close();
        }
        return tcontact;
    }

    public final boolean a(TContact tcontact)
    {
        boolean flag = false;
        if(tcontact != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        tcontact.a(-1);
        android.content.ContentValues contentvalues = tcontact.a();
        if((int)b.a("tcontact", "username", contentvalues) != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(String s, TContact tcontact)
    {
        boolean flag;
        flag = false;
        boolean flag1;
        if(s != null && s.length() > 0)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        if(tcontact != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        SqliteDB sqlitedb = b;
        android.content.ContentValues contentvalues = tcontact.a();
        String as[] = new String[1];
        as[flag] = s;
        if(sqlitedb.a("tcontact", contentvalues, "username=?", as) > 0)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS tcontact ( username text  PRIMARY KEY , extupdateseq long  , imgupdateseq long  , needupdate int  , reserved1 int  , reserved2 int  , reserved3 int  , reserved4 int  , reserved5 text  , reserved6 text  , reserved7 text  , reserved8 text  ) ";
        a = as;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqmsg;

import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelqmsg:
//            QContact

public class QContactStorage extends MStorage
{

    public QContactStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final QContact a(String s)
    {
        QContact qcontact = null;
        String s1 = (new StringBuilder()).append("select qcontact.username,qcontact.qq,qcontact.extinfo,qcontact.needupdate,qcontact.extupdateseq,qcontact.imgupdateseq,qcontact.reserved1,qcontact.reserved2,qcontact.reserved3,qcontact.reserved4,qcontact.reserved5,qcontact.reserved6,qcontact.reserved7,qcontact.reserved8 from qcontact   where qcontact.username = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, qcontact);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                qcontact = new QContact();
                qcontact.a(cursor.getString(0));
                qcontact.a(cursor.getLong(1));
                qcontact.b(cursor.getString(2));
                qcontact.b(cursor.getInt(3));
                qcontact.b(cursor.getLong(4));
                qcontact.c(cursor.getLong(5));
                qcontact.c(cursor.getInt(6));
                qcontact.d(cursor.getInt(7));
                qcontact.e(cursor.getInt(8));
                qcontact.f(cursor.getInt(9));
                qcontact.c(cursor.getString(10));
                qcontact.d(cursor.getString(11));
                qcontact.e(cursor.getString(12));
                qcontact.f(cursor.getString(13));
            }
            cursor.close();
        }
        return qcontact;
    }

    public final boolean a(QContact qcontact)
    {
        boolean flag = false;
        if(qcontact != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        qcontact.a(-1);
        android.content.ContentValues contentvalues = qcontact.a();
        if((int)b.a("qcontact", "username", contentvalues) != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(String s, QContact qcontact)
    {
        boolean flag;
        flag = false;
        boolean flag1;
        if(s != null && s.length() > 0)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        if(qcontact != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        SqliteDB sqlitedb = b;
        android.content.ContentValues contentvalues = qcontact.a();
        String as[] = new String[1];
        as[flag] = s;
        if(sqlitedb.a("qcontact", contentvalues, "username=?", as) > 0)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS qcontact ( username text  PRIMARY KEY , qq long  , extinfo text  , needupdate int  , extupdateseq long  , imgupdateseq long  , reserved1 int  , reserved2 int  , reserved3 int  , reserved4 int  , reserved5 text  , reserved6 text  , reserved7 text  , reserved8 text  ) ";
        a = as;
    }
}

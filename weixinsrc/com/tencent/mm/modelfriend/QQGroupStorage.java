// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelfriend:
//            QQGroup

public class QQGroupStorage extends MStorage
{

    public QQGroupStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final QQGroup a(int i)
    {
        QQGroup qqgroup = null;
        Cursor cursor = b.a((new StringBuilder()).append("select qqgroup.grouopid,qqgroup.membernum,qqgroup.weixinnum,qqgroup.insert_time,qqgroup.lastupdate_time,qqgroup.needupdate,qqgroup.updatekey,qqgroup.groupname from qqgroup  where grouopid = ").append(i).toString(), qqgroup);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                qqgroup = new QQGroup();
                qqgroup.a(cursor);
            }
            cursor.close();
        }
        return qqgroup;
    }

    public final Map a()
    {
        Object obj = null;
        Cursor cursor = b();
        if(cursor != null)
            if(cursor.getCount() <= 0)
            {
                cursor.close();
            } else
            {
                HashMap hashmap = new HashMap();
                for(int i = 0; i < cursor.getCount(); i++)
                {
                    cursor.moveToPosition(i);
                    QQGroup qqgroup = new QQGroup();
                    qqgroup.a(cursor);
                    hashmap.put(Integer.valueOf(qqgroup.b()), qqgroup);
                }

                cursor.close();
                obj = hashmap;
            }
        return ((Map) (obj));
    }

    public final boolean a(QQGroup qqgroup)
    {
        boolean flag = false;
        if(qqgroup != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Log.d("MicroMsg.QQGroupStorage", (new StringBuilder()).append("insert: name:").append(qqgroup.g()).toString());
        qqgroup.a(-1);
        ContentValues contentvalues = qqgroup.a();
        if((int)b.a("qqgroup", "grouopid", contentvalues) >= 0)
        {
            c();
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final Cursor b()
    {
        return b.a("select qqgroup.grouopid,qqgroup.membernum,qqgroup.weixinnum,qqgroup.insert_time,qqgroup.lastupdate_time,qqgroup.needupdate,qqgroup.updatekey,qqgroup.groupname from qqgroup ", null);
    }

    public final boolean b(int i)
    {
        boolean flag = true;
        Log.d("MicroMsg.QQGroupStorage", (new StringBuilder()).append("delete: id:").append(i).toString());
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        if(sqlitedb.a("qqgroup", "grouopid= ?", as) > 0)
            c();
        else
            flag = false;
        return flag;
    }

    public final boolean b(QQGroup qqgroup)
    {
        boolean flag;
        ContentValues contentvalues;
        flag = false;
        boolean flag1;
        if(qqgroup != null)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        contentvalues = qqgroup.a();
        if(contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.QQGroupStorage", "update failed, no values set");
_L4:
        return flag;
_L2:
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[flag] = (new StringBuilder()).append("").append(qqgroup.b()).toString();
        if(sqlitedb.a("qqgroup", contentvalues, "grouopid= ?", as) > 0)
        {
            c();
            flag = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static final String a[];
    private final SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS qqgroup ( grouopid int PRIMARY KEY,membernum int,weixinnum int,insert_time int,lastupdate_time int,needupdate int,updatekey text,groupname text,reserved1 text ,reserved2 text ,reserved3 int ,reserved4 int )";
        a = as;
    }
}

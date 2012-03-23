// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.storage:
//            RoleInfo

public class RoleStorage extends MStorage
{

    public RoleStorage(SqliteDB sqlitedb)
    {
        b = null;
        b = sqlitedb;
    }

    private void b(RoleInfo roleinfo)
    {
        roleinfo.a(135);
        ContentValues contentvalues = roleinfo.f();
        if(contentvalues.size() > 0 && b.a("role_info", "id", contentvalues) != 0L)
            c();
    }

    public final RoleInfo a(String s)
    {
        RoleInfo roleinfo;
        if(s == null || s.length() <= 0)
        {
            roleinfo = null;
        } else
        {
            roleinfo = new RoleInfo();
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[0] = (new StringBuilder()).append("%").append(s).toString();
            Cursor cursor = sqlitedb.a("role_info", "name LIKE ?", as, null);
            if(cursor.moveToFirst())
                roleinfo.a(cursor);
            else
                roleinfo = null;
            cursor.close();
        }
        return roleinfo;
    }

    public final List a()
    {
        LinkedList linkedlist = new LinkedList();
        Cursor cursor = b.a("role_info", (new StringBuilder()).append("int_reserved1=").append(1).toString(), null, null);
        if(cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            for(; !cursor.isAfterLast(); cursor.moveToNext())
            {
                RoleInfo roleinfo = new RoleInfo();
                roleinfo.a(cursor);
                linkedlist.add(roleinfo);
            }

        }
        cursor.close();
        return linkedlist;
    }

    public final void a(RoleInfo roleinfo)
    {
        ContentValues contentvalues = roleinfo.f();
        if(contentvalues.size() > 0)
        {
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[0] = roleinfo.a();
            int i = sqlitedb.a("role_info", contentvalues, "name like ?", as);
            Log.d("MicroMsg.RoleStorage", (new StringBuilder()).append("update role info, name=").append(roleinfo.a()).append(", res:").append(i).toString());
            if(i > 0)
                c();
        }
    }

    public final void a(String s, int i)
    {
        if(c(s) == null)
        {
            b(new RoleInfo(s, true, i));
            Log.d("MicroMsg.RoleStorage", (new StringBuilder()).append("insert new role, user=").append(s).toString());
        }
    }

    public final void a(String s, boolean flag, int i)
    {
        RoleInfo roleinfo = c(s);
        if(roleinfo == null)
        {
            b(new RoleInfo(s, flag, i));
            Log.d("MicroMsg.RoleStorage", (new StringBuilder()).append("insert new role, user=").append(s).toString());
        } else
        {
            roleinfo.a(flag);
            roleinfo.a(4);
            a(roleinfo);
        }
    }

    public final void a(String s, boolean flag, boolean flag1)
    {
        RoleInfo roleinfo = c(s);
        if(roleinfo == null)
        {
            b(new RoleInfo(s, flag, 2));
            Log.d("MicroMsg.RoleStorage", (new StringBuilder()).append("insert new role, user=").append(s).toString());
        } else
        {
            roleinfo.a(flag);
            roleinfo.b(flag1);
            roleinfo.a(4);
            a(roleinfo);
        }
    }

    public final RoleInfo c(String s)
    {
        RoleInfo roleinfo;
        if(s == null || s.length() <= 0)
        {
            roleinfo = null;
        } else
        {
            roleinfo = new RoleInfo();
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[0] = s;
            Cursor cursor = sqlitedb.a("role_info", "name= ?", as, null);
            if(cursor.moveToFirst())
                roleinfo.a(cursor);
            else
                roleinfo = null;
            cursor.close();
        }
        return roleinfo;
    }

    public final boolean d(String s)
    {
        RoleInfo roleinfo = a((new RoleInfo.Parser(s)).a(""));
        boolean flag;
        if(roleinfo != null && s.equals(roleinfo.a()))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void e(String s)
    {
        boolean flag;
        SqliteDB sqlitedb;
        String as[];
        int i;
        if(s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        sqlitedb = b;
        as = new String[1];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        i = sqlitedb.a("role_info", "name=?", as);
        Log.d("MicroMsg.RoleStorage", (new StringBuilder()).append("delete name name :").append(s).append(", res:").append(i).toString());
        if(i > 0)
            c();
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS role_info ( id TEXT PRIMARY KEY, name TEXT, status INT, text_reserved1 TEXT, text_reserved2 TEXT, text_reserved3 TEXT, text_reserved4 TEXT, int_reserved1 INT, int_reserved2 INT, int_reserved3 INT, int_reserved4 INT )";
        a = as;
    }
}

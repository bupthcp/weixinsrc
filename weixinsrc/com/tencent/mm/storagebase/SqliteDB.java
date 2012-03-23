// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storagebase;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.storagebase:
//            DKTest, DBVerInfoTable

public final class SqliteDB
{

    public SqliteDB()
    {
        a = null;
    }

    public static void a(IFactory ifactory, int i)
    {
        b.put(Integer.valueOf(i), ifactory);
    }

    private static boolean a(SqliteDB sqlitedb)
    {
        int i;
        Iterator iterator;
        i = sqlitedb.b();
        iterator = b.values().iterator();
_L2:
        String as[];
        int j;
        int k;
        if(!iterator.hasNext())
            break MISSING_BLOCK_LABEL_81;
        as = ((IFactory)iterator.next()).a();
        j = as.length;
        k = 0;
_L5:
        if(k >= j) goto _L2; else goto _L1
_L1:
        if(sqlitedb.b(as[k])) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        return flag;
_L4:
        k++;
          goto _L5
        sqlitedb.b(i);
        sqlitedb.a(i);
        flag = true;
          goto _L6
    }

    public final int a(int i)
    {
        int j = 0;
        if(i != c)
        {
            Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("ERROR endTransaction ticket:").append(i).append(" transactionTicket:").append(c).toString());
            j = -1;
        } else
        {
            int k;
            if(a != null)
                k = 1;
            else
                k = j;
            Assert.assertTrue("SQLiteDatabase is null", k);
            a.endTransaction();
            Log.e("MicroMsg.SqliteDB", (new StringBuilder()).append("endTransaction succ transactionTicket:").append(c).toString());
            c = j;
        }
        return j;
    }

    public final int a(String s, ContentValues contentvalues, String s1, String as[])
    {
        int i;
        DKTest.a();
        boolean flag;
        int j;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("SQLiteDatabase is null", flag);
        j = a.update(s, contentvalues, s1, as);
        i = j;
        DKTest.a(s, null, c);
_L2:
        return i;
        Exception exception;
        exception;
        Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("update Error :").append(exception.getMessage()).toString());
        i = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int a(String s, String s1, String as[])
    {
        int i;
        boolean flag;
        int j;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("SQLiteDatabase is null", flag);
        j = a.delete(s, s1, as);
        i = j;
_L2:
        return i;
        Exception exception;
        exception;
        Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("delete Error :").append(exception.getMessage()).toString());
        i = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final long a(String s, String s1, ContentValues contentvalues)
    {
        long l;
        DKTest.a();
        boolean flag;
        long l1;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("SQLiteDatabase is null", flag);
        l1 = a.insert(s, s1, contentvalues);
        l = l1;
        DKTest.a(s, null, c);
_L2:
        return l;
        Exception exception;
        exception;
        Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("insert Error :").append(exception.getMessage()).toString());
        l = -1L;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final Cursor a(String s, String s1, String as[], String s2)
    {
        DKTest.a();
        boolean flag;
        Cursor cursor;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("SQLiteDatabase is null", flag);
        cursor = a.query(s, null, s1, as, null, null, s2);
        DKTest.a(s, cursor, c);
        return cursor;
    }

    public final Cursor a(String s, String as[])
    {
        DKTest.a();
        boolean flag;
        Cursor cursor;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("SQLiteDatabase is null", flag);
        cursor = a.rawQuery(s, as);
        DKTest.a(s, cursor, c);
        return cursor;
    }

    public final void a()
    {
        if(a != null)
        {
            a.close();
            a = null;
        }
    }

    public final boolean a(String s)
    {
label0:
        {
            boolean flag = false;
            boolean flag1;
            if(!Util.i(s))
                flag1 = true;
            else
                flag1 = flag;
            Assert.assertTrue("create SqliteDB dbCachePath == null ", flag1);
            Log.c("MicroMsg.SqliteDB", (new StringBuilder()).append("InitDb :").append(s).toString());
            if(a != null)
                a.close();
            try
            {
                a = SQLiteDatabase.openOrCreateDatabase(s, null);
            }
            catch(Exception exception)
            {
                Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("createDB failed: ").append(exception.getMessage()).toString());
                if(false)
                    ;
                else
                    break label0;
            }
            if(!DBVerInfoTable.a(this))
                Log.a("MicroMsg.SqliteDB", "check DB version failed");
            else
            if(!a(this))
                Log.a("MicroMsg.SqliteDB", "check Tables failed");
            else
                flag = true;
        }
        return flag;
    }

    public final int b()
    {
        int j;
        if(c != 0)
        {
            Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("ERROR beginTransaction transactionTicket:").append(c).toString());
            j = -1;
        } else
        {
            boolean flag;
            int i;
            if(a != null)
                flag = true;
            else
                flag = false;
            Assert.assertTrue("SQLiteDatabase is null", flag);
            a.beginTransaction();
            i = (int)Util.d();
            c = i;
            if(i < 0)
                c = 0x7fffffff & c;
            Log.e("MicroMsg.SqliteDB", (new StringBuilder()).append("beginTransaction succ ticket:").append(c).toString());
            j = c;
        }
        return j;
    }

    public final int b(int i)
    {
        byte byte0 = 0;
        if(c != i)
        {
            Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("ERROR setTransactionSuccessful ticket:").append(i).append(" transactionTicket:").append(c).toString());
            byte0 = -1;
        } else
        {
            byte byte1;
            if(a != null)
                byte1 = 1;
            else
                byte1 = byte0;
            Assert.assertTrue("SQLiteDatabase is null", byte1);
            a.setTransactionSuccessful();
            Log.e("MicroMsg.SqliteDB", (new StringBuilder()).append("setTransactionSuccessful succ transactionTicket:").append(c).toString());
        }
        return byte0;
    }

    public final long b(String s, String s1, ContentValues contentvalues)
    {
        long l;
        DKTest.a();
        boolean flag;
        long l1;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("SQLiteDatabase is null", flag);
        l1 = a.replace(s, s1, contentvalues);
        l = l1;
        DKTest.a(s, null, c);
_L2:
        return l;
        Exception exception;
        exception;
        Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("repalce  Error :").append(exception.getMessage()).toString());
        l = -1L;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final boolean b(String s)
    {
        boolean flag;
        flag = true;
        DKTest.a();
        boolean flag1;
        boolean flag2;
        if(a != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("SQLiteDatabase is null", flag1);
        if(!Util.i(s))
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue("sql is null ", flag2);
        a.execSQL(s);
        DKTest.a(s, null, c);
_L2:
        return flag;
        Exception exception;
        exception;
        Log.a("MicroMsg.SqliteDB", (new StringBuilder()).append("execSQL Error :").append(exception.getMessage()).toString());
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    protected final void finalize()
    {
        if(a != null)
        {
            a.close();
            a = null;
        }
    }

    private static HashMap b = new HashMap();
    private static int c = 0;
    private SQLiteDatabase a;


    private class IFactory
    {

        public abstract String[] a();
    }

}

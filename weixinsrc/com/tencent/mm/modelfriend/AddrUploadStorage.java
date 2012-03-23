// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import b.a.o;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelfriend:
//            AddrUpload

public class AddrUploadStorage extends MStorage
{

    public AddrUploadStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final int a()
    {
        int i = b.a("addr_upload", null, null);
        Log.d("MicroMsg.AddrUploadStorage", "delete addr_upload");
        if(i > 0)
            c();
        return i;
    }

    public final int a(String s, AddrUpload addrupload)
    {
        int i = 0;
        ContentValues contentvalues = addrupload.a();
        if(contentvalues.size() > 0)
        {
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[i] = (new StringBuilder()).append("").append(AddrUpload.a(s)).toString();
            i = sqlitedb.a("addr_upload", contentvalues, "id=?", as);
        }
        if(i > 0)
            c();
        return i;
    }

    public final AddrUpload a(String s)
    {
        boolean flag;
        AddrUpload addrupload;
        String s1;
        Cursor cursor;
        if(s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        addrupload = new AddrUpload();
        s1 = (new StringBuilder()).append("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload where addr_upload.username=\"").append(Util.a(s)).append("\"").toString();
        cursor = b.a(s1, null);
        Log.d("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("get addrUpload :").append(s).append(", resCnt:").append(cursor.getCount()).toString());
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            addrupload.a(cursor);
        }
        cursor.close();
        return addrupload;
    }

    public final boolean a(List list)
    {
        if(list != null && list.size() > 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        TimeLogger timelogger;
        int i;
        timelogger = new TimeLogger("MicroMsg.AddrUploadStorage", "delete transaction");
        timelogger.a("begin");
        i = b.b();
        try
        {
            Iterator iterator = list.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                String s = (String)iterator.next();
                if(s != null && s.length() > 0)
                {
                    SqliteDB sqlitedb = b;
                    String as[] = new String[1];
                    as[0] = (new StringBuilder()).append("").append(AddrUpload.a(s)).toString();
                    int j = sqlitedb.a("addr_upload", "id =?", as);
                    Log.d("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("delete addr_upload md5 :").append(s).append(", res:").append(j).toString());
                }
            } while(true);
            break; /* Loop/switch isn't completed */
        }
        catch(Exception exception)
        {
            flag = false;
        }
_L5:
        b.b(i);
        b.a(i);
        timelogger.a("end");
        timelogger.a();
        if(true) goto _L4; else goto _L3
_L3:
        flag = true;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public final List b()
    {
        Cursor cursor = b.a("select addr_upload.md5 from addr_upload where addr_upload.uploadtime = 0 AND addr_upload.type = 1", null);
        LinkedList linkedlist = new LinkedList();
        for(; cursor.moveToNext(); linkedlist.add(cursor.getString(0)));
        cursor.close();
        return linkedlist;
    }

    public final boolean b(List list)
    {
        if(list != null && list.size() > 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L8:
        return flag;
_L2:
        TimeLogger timelogger;
        int i;
        int j;
        timelogger = new TimeLogger("MicroMsg.AddrUploadStorage", "transaction");
        timelogger.a("transation begin");
        i = b.b();
        j = 0;
_L11:
        AddrUpload addrupload;
        Cursor cursor;
        if(j >= list.size())
            break MISSING_BLOCK_LABEL_361;
        addrupload = (AddrUpload)list.get(j);
        if(addrupload == null)
            break MISSING_BLOCK_LABEL_366;
        String s = addrupload.b();
        String s1 = (new StringBuilder()).append("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload  where addr_upload.id = \"").append(AddrUpload.a(s)).append("\"").toString();
        cursor = b.a(s1, null);
        if(cursor != null) goto _L4; else goto _L3
_L3:
        boolean flag1 = false;
_L7:
        if(!flag1)
        {
            addrupload.a(-1);
            ContentValues contentvalues1 = addrupload.a();
            if((int)b.a("addr_upload", "id", contentvalues1) != -1)
                break MISSING_BLOCK_LABEL_366;
            break MISSING_BLOCK_LABEL_361;
        }
          goto _L5
_L4:
        if(cursor.getCount() <= 0)
            break; /* Loop/switch isn't completed */
        flag1 = true;
_L9:
        cursor.close();
        if(true) goto _L7; else goto _L6
        Exception exception;
        exception;
        Log.a("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("").append(exception.getMessage()).toString());
        flag = false;
_L10:
        b.b(i);
        b.a(i);
        timelogger.a("transation end");
        timelogger.a();
          goto _L8
_L6:
        flag1 = false;
          goto _L9
_L5:
        int l;
        int i1;
        int k = AddrUpload.a(addrupload.b());
        ContentValues contentvalues = addrupload.a();
        l = 0;
        if(contentvalues.size() <= 0)
            break MISSING_BLOCK_LABEL_351;
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(k).toString();
        i1 = sqlitedb.a("addr_upload", contentvalues, "id=?", as);
        l = i1;
        if(l == 0 || l >= 0)
            break MISSING_BLOCK_LABEL_366;
        flag = true;
          goto _L10
        j++;
          goto _L11
    }

    public final AddrUpload c(String s)
    {
        boolean flag;
        AddrUpload addrupload;
        String s1;
        Cursor cursor;
        if(s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        addrupload = new AddrUpload();
        s1 = (new StringBuilder()).append("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload where addr_upload.id=\"").append(AddrUpload.a(s)).append("\"").toString();
        cursor = b.a(s1, null);
        Log.d("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("get addrUpload :").append(s).append(", resCnt:").append(cursor.getCount()).toString());
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            addrupload.a(cursor);
        }
        cursor.close();
        return addrupload;
    }

    public final boolean c(List list)
    {
        TimeLogger timelogger;
        int i;
        timelogger = new TimeLogger("MicroMsg.AddrUploadStorage", "set uploaded transaction");
        timelogger.a("transation begin");
        i = b.b();
        Iterator iterator = list.iterator();
        Exception exception;
        boolean flag;
        do
        {
            if(!iterator.hasNext())
                break;
            String s = (String)iterator.next();
            if(s != null && s.length() > 0)
            {
                AddrUpload addrupload = new AddrUpload();
                addrupload.a(8);
                addrupload.a(Util.c());
                ContentValues contentvalues = addrupload.a();
                if(contentvalues.size() > 0)
                {
                    SqliteDB sqlitedb = b;
                    String as[] = new String[1];
                    as[0] = (new StringBuilder()).append("").append(AddrUpload.a(s)).toString();
                    sqlitedb.a("addr_upload", contentvalues, "id=?", as);
                }
                Log.d("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("local contact uploaded : ").append(s).toString());
            }
        } while(true);
        flag = true;
          goto _L1
        exception;
        Log.a("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("").append(exception.getMessage()).toString());
        flag = false;
_L3:
        b.b(i);
        b.a(i);
        timelogger.a("transation end");
        timelogger.a();
        if(flag)
            c();
        return flag;
_L1:
        if(true) goto _L3; else goto _L2
_L2:
    }

    public final Cursor d()
    {
        String s = (String)MMCore.f().f().a(6);
        Cursor cursor;
        if(s != null && !s.equals(""))
            cursor = b.a((new StringBuilder()).append("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload  where type = 0 and moblie <> ").append(s).append(" order by ").append("status").append(" , ").append("realnamepyinitial").toString(), null);
        else
            cursor = b.a("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload  where type = 0 order by status , realnamepyinitial", null);
        return cursor;
    }

    public final AddrUpload d(String s)
    {
        Object obj = null;
        if(s != null && s.length() > 0)
        {
            String s1 = (new StringBuilder()).append("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload where addr_upload.id=\"").append(AddrUpload.a(s)).append("\"").toString();
            Cursor cursor = b.a(s1, ((String []) (obj)));
            Log.d("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("get addrUpload :").append(s).append(", resCnt:").append(cursor.getCount()).toString());
            if(cursor.getCount() != 0)
            {
                cursor.moveToFirst();
                obj = new AddrUpload();
                ((AddrUpload) (obj)).a(cursor);
            }
            cursor.close();
        }
        return ((AddrUpload) (obj));
    }

    public final List e()
    {
        Cursor cursor = b.a("select addr_upload.moblie , addr_upload.md5 from addr_upload where addr_upload.type = 0", null);
        LinkedList linkedlist = new LinkedList();
        String as[];
        for(; cursor.moveToNext(); linkedlist.add(as))
        {
            as = new String[2];
            as[0] = cursor.getString(0);
            as[1] = cursor.getString(1);
        }

        cursor.close();
        return linkedlist;
    }

    public final List f()
    {
        Cursor cursor = b.a("select addr_upload.moblie from addr_upload where addr_upload.uploadtime = 0 AND addr_upload.type = 0", null);
        LinkedList linkedlist = new LinkedList();
        do
        {
            if(!cursor.moveToNext())
                break;
            String s = o.b(cursor.getString(0));
            if(o.a(s))
                linkedlist.add(s);
        } while(true);
        cursor.close();
        return linkedlist;
    }

    public final List g()
    {
        LinkedList linkedlist = new LinkedList();
        String s = (new StringBuilder()).append("select  *  from addr_upload where ( addr_upload.username IS NOT NULL AND addr_upload.username!=\"").append(Util.a("")).append("\" )").toString();
        Log.d("MicroMsg.AddrUploadStorage", (new StringBuilder()).append("sql : ").append(s).toString());
        Cursor cursor = b.a(s, null);
        cursor.moveToFirst();
        if(cursor.getCount() <= 0)
        {
            cursor.close();
        } else
        {
            do
            {
                AddrUpload addrupload = new AddrUpload();
                addrupload.a(cursor);
                linkedlist.add(addrupload);
            } while(cursor.moveToNext());
            cursor.close();
        }
        return linkedlist;
    }

    public static final String a[];
    private final SqliteDB b;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS addr_upload ( id int  PRIMARY KEY , md5 text  , peopleid text  , uploadtime long  , realname text  , realnamepyinitial text  , realnamequanpin text  , username text  , nickname text  , nicknamepyinitial text  , nicknamequanpin text  , type int  , moblie text  , email text  , status int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS upload_time_index ON addr_upload ( uploadtime ) ";
        a = as;
    }
}

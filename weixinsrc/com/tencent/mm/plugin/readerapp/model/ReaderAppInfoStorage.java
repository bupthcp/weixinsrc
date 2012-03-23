// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.model;

import android.database.Cursor;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.Conversation;
import com.tencent.mm.storage.ConversationStorage;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.plugin.readerapp.model:
//            ReaderAppInfo

public class ReaderAppInfoStorage extends MStorage
{

    public ReaderAppInfoStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    private static String a(String s)
    {
        return (new StringBuilder()).append("select tweetid,time,type,name,title,url,shorturl,longurl,pubtime,sourcename,sourceicon,istop,cover,digest,reserved1,reserved2,reserved3,reserved4 from ").append(s).append("  ").toString();
    }

    private static String c(int i)
    {
        String s;
        if(i == 20)
            s = "readerappnews";
        else
        if(i == 11)
        {
            s = "readerappweibo";
        } else
        {
            Assert.assertTrue("INFO TYPE NEITHER NEWS NOR WEIBO", false);
            s = null;
        }
        return s;
    }

    public final int a(int i)
    {
        int j = 0;
        String s = (new StringBuilder()).append("select count(*) from (SELECT count(*) FROM ").append(c(i)).append(" group by ").append("time").append(")").toString();
        Cursor cursor = b.a(s, null);
        if(cursor.moveToLast())
            j = cursor.getInt(j);
        cursor.close();
        return j;
    }

    public final Cursor a(int i, int j)
    {
        String s = (new StringBuilder()).append("SELECT time from ").append(c(j)).append(" GROUP BY ").append("time").append(" ORDER BY ").append("time").append(" ASC ").append(" LIMIT ").append(i).append(" offset ").append("(SELECT COUNT(*) FROM (SELECT COUNT(*) FROM ").append(c(j)).append(" GROUP BY ").append("time").append(")) -").append(i).toString();
        return b.a(s, null);
    }

    public final List a(long l, int i)
    {
        ArrayList arraylist = new ArrayList();
        String s = (new StringBuilder()).append(a(c(i))).append(" where ").append("time").append(" = ").append(l).append(" order by ").append("istop").append(" desc , ").append("tweetid").append(" asc ").toString();
        Log.d("MicroMsg.ReaderAppInfoStorage", (new StringBuilder()).append("getInfobyGroup :").append(s).toString());
        Cursor cursor = b.a(s, null);
        int j = cursor.getCount();
        if(j <= 0)
        {
            cursor.close();
        } else
        {
            for(int k = 0; k < j; k++)
            {
                cursor.moveToPosition(k);
                ReaderAppInfo readerappinfo = new ReaderAppInfo();
                readerappinfo.a(cursor);
                arraylist.add(readerappinfo);
            }

            cursor.close();
        }
        return arraylist;
    }

    public final void a()
    {
        c();
    }

    public final boolean a(ReaderAppInfo readerappinfo)
    {
        boolean flag = false;
        if(readerappinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        readerappinfo.b();
        android.content.ContentValues contentvalues = readerappinfo.a();
        if((int)b.a(c(readerappinfo.e()), "tweetid", contentvalues) != -1)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void b(int i)
    {
        Conversation conversation = MMCore.f().j().d(ReaderAppInfo.a(i));
        if(conversation != null && conversation.g().equals(ReaderAppInfo.a(i))) goto _L2; else goto _L1
_L1:
        return;
_L2:
        conversation.a(ReaderAppInfo.a(i));
        conversation.b("");
        conversation.e();
        conversation.a(0);
        MMCore.f().j().a(conversation, ReaderAppInfo.a(i));
        String s = (new StringBuilder()).append("delete from ").append(c(i)).toString();
        if(b.b(s))
            c();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void b(long l, int i)
    {
        String s = (new StringBuilder()).append(a(c(i))).append(" group by ").append("time").append(" ORDER BY ").append("time").append(" DESC ").append(" limit 2").toString();
        Cursor cursor = b.a(s, null);
        String s1;
        if(cursor.getCount() == 0)
            cursor.close();
        else
        if(cursor.getCount() == 1)
        {
            cursor.close();
            Conversation conversation1 = new Conversation();
            conversation1.a(ReaderAppInfo.a(i));
            conversation1.b("");
            conversation1.a(0L);
            conversation1.e();
            conversation1.a(0);
            MMCore.f().j().a(conversation1, ReaderAppInfo.a(i));
        } else
        {
            cursor.moveToFirst();
            ReaderAppInfo readerappinfo = new ReaderAppInfo();
            readerappinfo.a(cursor);
            cursor.close();
            Conversation conversation = new Conversation();
            conversation.a(ReaderAppInfo.a(i));
            conversation.b((new StringBuilder()).append("[").append(readerappinfo.f()).append("]").toString());
            conversation.a(readerappinfo.d());
            conversation.e();
            conversation.a(0);
            MMCore.f().j().a(conversation, ReaderAppInfo.a(i));
        }
        s1 = (new StringBuilder()).append("delete from ").append(c(i)).append(" where ").append("time").append(" = ").append(l).toString();
        if(b.b(s1))
            c();
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[4];
        as[0] = "CREATE TABLE IF NOT EXISTS readerappnews ( tweetid text  PRIMARY KEY , time long  , type int  , name text  , title text  , url text  , shorturl text  , longurl text  , pubtime long  , sourcename text  , sourceicon text  , istop int  , cover text  , digest text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        as[1] = "CREATE TABLE IF NOT EXISTS readerappweibo ( tweetid text  PRIMARY KEY , time long  , type int  , name text  , title text  , url text  , shorturl text  , longurl text  , pubtime long  , sourcename text  , sourceicon text  , istop int  , cover text  , digest text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        as[2] = "CREATE INDEX IF NOT EXISTS  readerapptime ON readerappnews ( time )";
        as[3] = "CREATE INDEX IF NOT EXISTS  readerapptime ON readerappweibo ( time )";
        a = as;
    }
}

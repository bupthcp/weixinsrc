// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public class ChatroomMembersStorage extends MStorage
{

    public ChatroomMembersStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    private static List e(String s)
    {
        LinkedList linkedlist = new LinkedList();
        LinkedList linkedlist1;
        if(s.equals(""))
        {
            linkedlist1 = linkedlist;
        } else
        {
            String as[] = s.split(";");
            for(int i = 0; i < as.length; i++)
                linkedlist.add(as[i]);

            linkedlist1 = linkedlist;
        }
        return linkedlist1;
    }

    public final String a(String s)
    {
        boolean flag = true;
        boolean flag1;
        String s1;
        Cursor cursor;
        int i;
        String s2;
        if(s.length() > 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        s1 = (new StringBuilder()).append("select * from chatroom_members where ChatRoomName='").append(Util.a(s)).append("'").toString();
        cursor = b.a(s1, null);
        i = cursor.getCount();
        if(i > flag)
            flag = false;
        Assert.assertTrue(flag);
        if(i <= 0)
        {
            Log.a("MicroMsg.ChatroomMembersStorage", (new StringBuilder()).append("getDisplayName:").append(s).append(" getCount ==0").toString());
            cursor.close();
            s2 = null;
        } else
        {
            cursor.moveToFirst();
            s2 = cursor.getString(4);
            cursor.close();
        }
        return s2;
    }

    public final List a()
    {
        Log.d("MicroMsg.ChatroomMembersStorage", "getAllGroupCard : select * from chatroom_members where ChatRoomName like '%@groupcard'");
        Cursor cursor = b.a("select * from chatroom_members where ChatRoomName like '%@groupcard'", null);
        int i = cursor.getCount();
        String s = "";
        List list;
        if(i == 0)
        {
            cursor.close();
            list = null;
        } else
        {
            cursor.moveToFirst();
            do
            {
                String s1 = cursor.getString(0);
                s = (new StringBuilder()).append(s).append(s1).append(";").toString();
            } while(cursor.moveToNext());
            cursor.close();
            list = e(s);
        }
        return list;
    }

    public final boolean a(String s, List list, String s1)
    {
        boolean flag = true;
        String s2;
        boolean flag1;
        String s3;
        Cursor cursor;
        int i;
        boolean flag2;
        int j;
        if(list == null || list.size() == 0)
        {
            s2 = "";
        } else
        {
            s2 = "";
            int k = 0;
            while(k < list.size()) 
            {
                s2 = (new StringBuilder()).append(s2).append((String)list.get(k)).toString();
                if(k < -1 + list.size())
                    s2 = (new StringBuilder()).append(s2).append(";").toString();
                k++;
            }
        }
        if(s.length() > 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        s3 = (new StringBuilder()).append("select * from chatroom_members where ChatRoomName='").append(Util.a(s)).append("'").toString();
        cursor = b.a(s3, null);
        i = cursor.getCount();
        cursor.close();
        if(i <= flag)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(i > 0)
            j = ((flag) ? 1 : 0);
        else
            j = 0;
        if(j != 0)
        {
            boolean flag4;
            ContentValues contentvalues1;
            SqliteDB sqlitedb;
            String as[];
            if(s.length() > 0)
                flag4 = flag;
            else
                flag4 = false;
            Assert.assertTrue(flag4);
            contentvalues1 = new ContentValues();
            contentvalues1.put("username", s2);
            contentvalues1.put("AddTime", Long.valueOf(Util.c()));
            contentvalues1.put("reserved2", s1);
            sqlitedb = b;
            as = new String[flag];
            as[0] = (new StringBuilder()).append("").append(s).toString();
            if(sqlitedb.a("chatroom_members", contentvalues1, "ChatRoomName=?", as) != 0)
                c();
            else
                flag = false;
        } else
        {
            boolean flag3;
            ContentValues contentvalues;
            long l;
            if(s.length() > 0)
                flag3 = flag;
            else
                flag3 = false;
            Assert.assertTrue(flag3);
            contentvalues = new ContentValues();
            contentvalues.put("ChatRoomName", s);
            contentvalues.put("username", s2);
            contentvalues.put("AddTime", Long.valueOf(Util.c()));
            contentvalues.put("reserved2", s1);
            l = b.a("chatroom_members", null, contentvalues);
            if(l < 0L)
            {
                Log.a("MicroMsg.ChatroomMembersStorage", (new StringBuilder()).append("Insert [").append(s).append(",").append(s2).append("] err:").append(l).toString());
                flag = false;
            } else
            {
                c();
            }
        }
        return flag;
    }

    public final List c(String s)
    {
        boolean flag = false;
        boolean flag1;
        String s1;
        Cursor cursor;
        int i;
        String s2;
        List list;
        if(s.length() > 0)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        s1 = (new StringBuilder()).append("select * from chatroom_members where ChatRoomName='").append(Util.a(s)).append("'").toString();
        cursor = b.a(s1, null);
        i = cursor.getCount();
        if(i <= 1)
            flag = true;
        Assert.assertTrue(flag);
        if(i <= 0)
        {
            Log.a("MicroMsg.ChatroomMembersStorage", (new StringBuilder()).append("getMemberListByChatroomName chatroomName:").append(s).append(" getCount ==0").toString());
            cursor.close();
            s2 = null;
        } else
        {
            cursor.moveToFirst();
            s2 = cursor.getString(1);
            cursor.close();
        }
        if(s2 == null)
            list = null;
        else
            list = e(s2);
        return list;
    }

    public final boolean d(String s)
    {
        boolean flag = false;
        boolean flag1;
        SqliteDB sqlitedb;
        String as[];
        if(s.length() > 0)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        sqlitedb = b;
        as = new String[1];
        as[flag] = s;
        if(sqlitedb.a("chatroom_members", "ChatRoomName=?", as) != 0)
        {
            c();
            flag = true;
        }
        return flag;
    }

    public static final String a[];
    private final SqliteDB b;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS chatroom_members ( ChatRoomName VARCHAR(40),username TEXT,AddTime LONG,reserved1 INT DEFAULT 0,reserved2 TEXT )";
        as[1] = "CREATE UNIQUE INDEX IF NOT EXISTS ChatRoomMembersChatRoomNameIndex ON chatroom_members ( ChatRoomName )";
        a = as;
    }
}

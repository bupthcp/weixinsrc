// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.algorithm.LRUMap;
import com.tencent.mm.model.ContactStorageLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.MStorageEvent;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.storage:
//            NotifyInfo, MsgInfo, IOnMsgChange

public class MsgInfoStorage extends MStorage
{

    public MsgInfoStorage(SqliteDB sqlitedb)
    {
        g = sqlitedb;
        if(b == null)
            b = new LinkedList();
        b.clear();
        b.add(new MsgTable(1, "message", 1L, 0xf4240L));
        b.add(new MsgTable(2, "qmessage", 0xf4241L, 0x16e360L));
        b.add(new MsgTable(4, "tmessage", 0x16e361L, 0x1e8480L));
        b.add(new MsgTable(8, "bottlemessage", 0x1e8481L, 0x2625a0L));
        for(int i1 = 0; i1 < b.size(); i1++)
        {
            Cursor cursor = g.a((new StringBuilder()).append("select max(msgid) from ").append(((MsgTable)b.get(i1)).a()).toString(), null);
            if(cursor.moveToFirst())
            {
                int j1 = cursor.getInt(0);
                if((long)j1 >= ((MsgTable)b.get(i1)).b())
                    ((MsgTable)b.get(i1)).a(j1 + 1);
            }
            cursor.close();
            Log.b("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("loading new msg id:").append(((MsgTable)b.get(i1)).b()).toString());
        }

    }

    private void a(NotifyInfo notifyinfo)
    {
        if(h.b(notifyinfo))
            h.a();
    }

    private void e()
    {
        boolean flag;
        long l1;
        HashSet hashset;
        if(b != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        l1 = Util.d() - 0x927c0L;
        hashset = new HashSet();
        for(int i1 = 0; i1 < b.size(); i1++)
        {
            String s1 = (new StringBuilder()).append("select talker from ").append(((MsgTable)b.get(i1)).a()).append(" where ").append("createTime").append("<").append(l1).append(" and ").append("status").append("=").append(1).toString();
            Cursor cursor = g.a(s1, null);
            if(cursor.moveToFirst())
                do
                {
                    if(cursor.isAfterLast())
                        break;
                    String s3 = cursor.getString(0);
                    cursor.moveToNext();
                    if(!Util.i(s3))
                        hashset.add(s3);
                } while(true);
            cursor.close();
            String s2 = (new StringBuilder()).append("update ").append(((MsgTable)b.get(i1)).a()).append(" set ").append("status").append("=").append(5).append(" where ").append("createTime").append("<").append(l1).append(" and ").append("status").append("=").append(1).toString();
            g.a(s2, null).close();
        }

        for(Iterator iterator = hashset.iterator(); iterator.hasNext(); a(new NotifyInfo((String)iterator.next(), "update", null)))
            c();

    }

    private static String f(long l1)
    {
        int i1 = 0;
_L3:
        if(i1 >= b.size())
            break MISSING_BLOCK_LABEL_57;
        if(!((MsgTable)b.get(i1)).a(l1)) goto _L2; else goto _L1
_L1:
        String s1 = ((MsgTable)b.get(i1)).a();
_L4:
        return s1;
_L2:
        i1++;
          goto _L3
        Assert.assertTrue(false);
        s1 = null;
          goto _L4
    }

    private static String r(String s1)
    {
        boolean flag;
        if(s1 != null && s1.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        return t(s1).a();
    }

    private static MsgTable s(String s1)
    {
        int i1;
        MsgTable msgtable;
        boolean flag;
        if(s1 != null && s1.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        i1 = 0;
_L3:
        if(i1 >= b.size())
            break MISSING_BLOCK_LABEL_80;
        if(!s1.equals(((MsgTable)b.get(i1)).a())) goto _L2; else goto _L1
_L1:
        msgtable = (MsgTable)b.get(i1);
_L4:
        return msgtable;
_L2:
        i1++;
          goto _L3
        Assert.assertTrue(false);
        msgtable = null;
          goto _L4
    }

    private static MsgTable t(String s1)
    {
        boolean flag;
        MsgTable msgtable;
        if(s1 != null && s1.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(s1.endsWith("@t.qq.com"))
            msgtable = s("tmessage");
        else
        if(s1.endsWith("@qqim"))
            msgtable = s("qmessage");
        else
        if(ContactStorageLogic.t(s1))
            msgtable = s("bottlemessage");
        else
            msgtable = s("message");
        return msgtable;
    }

    public final int a(int i1, long l1)
    {
        int j1 = 0;
        int k1 = 0;
        for(; j1 < b.size(); j1++)
            if((i1 & ((MsgTable)b.get(j1)).d()) != 0)
            {
                String s1 = (new StringBuilder()).append("select *  from ").append(((MsgTable)b.get(j1)).a()).append(" where ").append(((MsgTable)b.get(j1)).a()).append(".").append("status").append(" != ").append(4).append(" and ").append(((MsgTable)b.get(j1)).a()).append(".").append("isSend").append(" = ").append(0).append(" and ").append(((MsgTable)b.get(j1)).a()).append(".").append("createTime").append(" > ").append(l1).toString();
                Cursor cursor = g.a(s1, null);
                k1 += cursor.getCount();
                cursor.close();
            }

        return k1;
    }

    public final long a(MsgInfo msginfo)
    {
        if(msginfo.h() == null || msginfo.h().length() <= 0) goto _L2; else goto _L1
_L1:
        long l1;
        MsgTable msgtable = t(msginfo.h());
        boolean flag;
        ContentValues contentvalues;
        if(msgtable != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        msginfo.a(msgtable.b());
        msgtable.c();
        msginfo.a(-1);
        contentvalues = msginfo.a();
        Log.e("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("insert: talker=").append(msginfo.h()).append(" localId=").append(msginfo.b()).toString());
        if(g.a(msgtable.a(), "msgId", contentvalues) == -1L) goto _L2; else goto _L3
_L3:
        c();
        a(new NotifyInfo(msginfo.h(), "insert", msginfo));
        l1 = msginfo.b();
_L5:
        return l1;
_L2:
        l1 = -1L;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final MsgInfo a(int i1)
    {
        int j1 = 0;
        int k1;
        MsgInfo msginfo;
        long l1;
        if(b != null)
            k1 = 1;
        else
            k1 = j1;
        Assert.assertTrue(k1);
        msginfo = new MsgInfo();
        l1 = 0L;
        for(; j1 < b.size(); j1++)
        {
            if((i1 & ((MsgTable)b.get(j1)).d()) == 0)
                continue;
            String s1 = (new StringBuilder()).append("select * from ").append(((MsgTable)b.get(j1)).a()).append("  order by ").append("createTime").append(" DESC limit 1").toString();
            Cursor cursor = g.a(s1, null);
            if(cursor.getCount() != 0)
            {
                cursor.moveToFirst();
                if(l1 < cursor.getLong(6))
                {
                    l1 = cursor.getLong(6);
                    msginfo.a(cursor);
                }
            }
            cursor.close();
        }

        return msginfo;
    }

    public final MsgInfo a(long l1)
    {
        MsgInfo msginfo = new MsgInfo();
        SqliteDB sqlitedb = g;
        String s1 = f(l1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l1).toString();
        Cursor cursor = sqlitedb.a(s1, "msgId=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            msginfo.a(cursor);
        }
        cursor.close();
        return msginfo;
    }

    public final MsgInfo a(String s1)
    {
        MsgInfo msginfo = new MsgInfo();
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(s1).toString();
        Cursor cursor = sqlitedb.a(s2, "talker=?", as, "msgSvrId  DESC limit 1 ");
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            msginfo.a(cursor);
        }
        cursor.close();
        return msginfo;
    }

    public final MsgInfo a(String s1, int i1)
    {
        MsgInfo msginfo = new MsgInfo();
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i1).toString();
        Cursor cursor = sqlitedb.a(s2, "msgSvrId=?", as, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            msginfo.a(cursor);
        }
        cursor.close();
        return msginfo;
    }

    public final List a()
    {
        int i1 = 0;
        e();
        ArrayList arraylist = new ArrayList();
        int j1;
        if(b != null)
            j1 = 1;
        else
            j1 = i1;
        Assert.assertTrue(j1);
        for(; i1 < b.size(); i1++)
        {
            Cursor cursor = g.a(((MsgTable)b.get(i1)).a(), "status=1 and isSend=1", null, "createTime DESC ");
            if(cursor.moveToFirst())
                do
                {
                    if(cursor.isAfterLast())
                        break;
                    MsgInfo msginfo = new MsgInfo();
                    msginfo.a(cursor);
                    cursor.moveToNext();
                    if(msginfo.o() || msginfo.n())
                        arraylist.add(msginfo);
                } while(true);
            cursor.close();
        }

        return arraylist;
    }

    public final void a(int i1, MsgInfo msginfo)
    {
        boolean flag;
        SqliteDB sqlitedb;
        String s1;
        ContentValues contentvalues;
        String as[];
        if(Util.h(msginfo.h()).length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("no talker set when update by svrid", flag);
        sqlitedb = g;
        s1 = r(msginfo.h());
        contentvalues = msginfo.a();
        as = new String[1];
        as[0] = (new StringBuilder()).append("").append(i1).toString();
        if(sqlitedb.a(s1, contentvalues, "msgSvrId=?", as) != 0)
        {
            c();
            a(new NotifyInfo(msginfo.h(), "update", msginfo));
        }
    }

    public final void a(long l1, MsgInfo msginfo)
    {
        SqliteDB sqlitedb = g;
        String s1 = f(l1);
        ContentValues contentvalues = msginfo.a();
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l1).toString();
        if(sqlitedb.a(s1, contentvalues, "msgId=?", as) != 0)
        {
            c();
            a(new NotifyInfo(msginfo.h(), "update", msginfo));
        }
    }

    public final void a(IOnMsgChange ionmsgchange)
    {
        h.a(ionmsgchange);
    }

    public final int b(long l1)
    {
        String s1 = a(l1).h();
        SqliteDB sqlitedb = g;
        String s2 = f(l1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(l1).toString();
        int i1 = sqlitedb.a(s2, "msgId=?", as);
        if(i1 != 0)
        {
            c();
            a(new NotifyInfo(s1, "delete", null));
        }
        return i1;
    }

    public final List b()
    {
        int i1 = 0;
        e();
        ArrayList arraylist = new ArrayList();
        int j1;
        if(b != null)
            j1 = 1;
        else
            j1 = i1;
        Assert.assertTrue(j1);
        for(; i1 < b.size(); i1++)
        {
            Cursor cursor = g.a(((MsgTable)b.get(i1)).a(), "status=1 and isSend=1", null, "createTime DESC ");
            if(cursor.moveToFirst())
                do
                {
                    if(cursor.isAfterLast())
                        break;
                    MsgInfo msginfo = new MsgInfo();
                    msginfo.a(cursor);
                    cursor.moveToNext();
                    if(msginfo.q())
                        arraylist.add(msginfo);
                } while(true);
            cursor.close();
        }

        return arraylist;
    }

    public final boolean b(String s1, int i1)
    {
        MsgInfo msginfo = a(s1, i1);
        boolean flag;
        if(msginfo != null && msginfo.c() > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int c(String s1, int i1)
    {
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i1).toString();
        int j1 = sqlitedb.a(s2, "msgSvrId=?", as);
        if(j1 != 0)
        {
            c();
            a(new NotifyInfo(s1, "delete", null));
        }
        return j1;
    }

    public final long c(long l1)
    {
        long l2 = -1L;
        String s1 = (new StringBuilder()).append("select * from message where type = 35 and msgId < ").append(l1).append(" order by ").append("msgId").append(" DESC limit 1").toString();
        Cursor cursor = g.a(s1, null);
        if(cursor == null)
            Log.a("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("getPrevMailId fail, cursor is null, currentId = ").append(l1).toString());
        else
        if(cursor.getCount() == 0)
        {
            Log.c("MicroMsg.MsgInfoStorage", "getPrevMailId fail, cu getcount == 0");
            cursor.close();
        } else
        {
            MsgInfo msginfo = new MsgInfo();
            if(cursor.moveToFirst())
                msginfo.a(cursor);
            cursor.close();
            l2 = msginfo.b();
        }
        return l2;
    }

    public final MsgInfo c(String s1)
    {
        MsgInfo msginfo = new MsgInfo();
        String s2 = (new StringBuilder()).append("select * from ").append(r(s1)).append(" where ").append("talker").append(" = '").append(Util.a(s1)).append("'  order by ").append("createTime").append(" DESC limit 1").toString();
        Cursor cursor = g.a(s2, null);
        if(cursor.getCount() != 0)
        {
            cursor.moveToFirst();
            msginfo.a(cursor);
        }
        cursor.close();
        return msginfo;
    }

    public final int d(long l1)
    {
        int i1 = 0;
        String s1 = (new StringBuilder()).append("select count(*) from message where type = 35 and msgId >= ").append(l1).append(" order by ").append("msgId").append(" ASC").toString();
        Cursor cursor = g.a(s1, null);
        if(cursor == null)
        {
            Log.a("MicroMsg.MsgInfoStorage", "getIdxOfMail, cursor is null");
            i1 = -1;
        } else
        {
            if(cursor.moveToLast())
                i1 = cursor.getInt(i1);
            cursor.close();
        }
        return i1;
    }

    public final int d(String s1, int i1)
    {
        MsgInfo msginfo = a(s1, i1);
        Assert.assertTrue(s1.equals(msginfo.h()));
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[2];
        as[0] = (new StringBuilder()).append("").append(msginfo.g()).toString();
        as[1] = s1;
        int j1 = sqlitedb.a(s2, "createTime<=? AND talker=?", as);
        if(j1 != 0)
        {
            c();
            a(new NotifyInfo(s1, "delete", null));
        }
        return j1;
    }

    public final Cursor d()
    {
        boolean flag;
        SqliteDB sqlitedb;
        String s1;
        String as[];
        if(b.size() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        sqlitedb = g;
        s1 = ((MsgTable)b.get(0)).a();
        as = new String[1];
        as[0] = "-1";
        return sqlitedb.a(s1, "msgId=?", as, null);
    }

    public final List d(String s1)
    {
        Object obj = null;
        Cursor cursor = g.a((new StringBuilder()).append("select * from ").append(s1).toString(), ((String []) (obj)));
        if(cursor != null)
        {
            int i1 = cursor.getCount();
            if(i1 == 0)
            {
                cursor.close();
            } else
            {
                obj = new ArrayList();
                for(int j1 = 0; j1 < i1; j1++)
                {
                    cursor.moveToPosition(j1);
                    MsgInfo msginfo = new MsgInfo();
                    msginfo.a(cursor);
                    ((List) (obj)).add(msginfo);
                }

                cursor.close();
            }
        }
        return ((List) (obj));
    }

    public final long e(long l1)
    {
        long l2 = -1L;
        String s1 = (new StringBuilder()).append("select * from message where type = 35 and msgId > ").append(l1).append(" order by ").append("msgId").append(" ASC limit 1").toString();
        Cursor cursor = g.a(s1, null);
        if(cursor == null)
            Log.a("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("getNextMailId fail, cursor is null, currentId = ").append(l1).toString());
        else
        if(cursor.getCount() == 0)
        {
            Log.c("MicroMsg.MsgInfoStorage", "getNextMailId fail, cu getcount == 0");
            cursor.close();
        } else
        {
            MsgInfo msginfo = new MsgInfo();
            if(cursor.moveToFirst())
                msginfo.a(cursor);
            cursor.close();
            l2 = msginfo.b();
        }
        return l2;
    }

    public final Cursor e(String s1, int i1)
    {
        MsgInfo msginfo = a(s1, i1);
        Assert.assertTrue(s1.equals(msginfo.h()));
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(msginfo.g()).toString();
        return sqlitedb.a(s2, "createTime<=? AND talker=?", as, null);
    }

    public final void e(String s1)
    {
        if(g.b((new StringBuilder()).append("delete from ").append(s1).toString()))
            c();
    }

    public final int f(String s1)
    {
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(s1).toString();
        int i1 = sqlitedb.a(s2, "talker=?", as);
        if(i1 != 0)
        {
            c();
            a(new NotifyInfo(s1, "delete", null));
        }
        return i1;
    }

    public final Cursor f(String s1, int i1)
    {
        String s2 = (new StringBuilder()).append("SELECT * FROM ").append(r(s1)).append(" WHERE ").append("talker").append("= '").append(Util.a(s1)).append("' ORDER BY ").append("createTime").append(" ASC LIMIT ").append(i1).append(" offset ").append("(SELECT count(*) FROM ").append(r(s1)).append(" WHERE ").append("talker").append("= '").append(Util.a(s1)).append("' ) -").append(i1).toString();
        Log.d("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("getCursor talk:").append(s1).append(" limit:").append(i1).append(" [").append(s2).append("]").toString());
        return g.a(s2, null);
    }

    public final int g(String s1, int i1)
    {
        int j1 = 0;
        String s2 = (new StringBuilder()).append("SELECT COUNT(*) FROM ").append(r(s1)).append(" WHERE ").append("talker").append("='").append(Util.a(s1)).append("' AND ").append("type").append(" = ").append(i1).toString();
        Cursor cursor = g.a(s2, null);
        if(cursor.moveToLast())
            j1 = cursor.getInt(j1);
        cursor.close();
        return j1;
    }

    public final boolean g(String s1)
    {
        boolean flag = g.b((new StringBuilder()).append("delete from ").append(r(s1)).append(" where talker like '%").append(s1).append("'").toString());
        if(flag)
            c();
        return flag;
    }

    public final int h(String s1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("status", Integer.valueOf(4));
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[3];
        as[0] = s1;
        as[1] = "0";
        as[2] = "4";
        int i1 = sqlitedb.a(s2, contentvalues, "talker=? AND isSend=? AND status!=? ", as);
        if(i1 != 0)
        {
            c();
            a(new NotifyInfo(s1, "update", null));
        }
        return i1;
    }

    public final Cursor i(String s1)
    {
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[1];
        as[0] = s1;
        return sqlitedb.a(s2, "talker=?", as, "createTime ASC ");
    }

    public final Cursor j(String s1)
    {
        String s2 = (new StringBuilder()).append("SELECT * FROM message WHERE talker like '%").append(Util.a(s1)).append("' ORDER BY ").append("msgId").append(" ASC").toString();
        return g.a(s2, null);
    }

    public final Cursor k(String s1)
    {
        SqliteDB sqlitedb = g;
        String s2 = r(s1);
        String as[] = new String[3];
        as[0] = "0";
        as[1] = s1;
        as[2] = "4";
        return sqlitedb.a(s2, "isSend=? AND talker=? AND status!=?", as, null);
    }

    public final MsgInfo.MailContent l(String s1)
    {
        MsgInfo.MailContent mailcontent = (MsgInfo.MailContent)c.a(Integer.valueOf(s1.hashCode()));
        if(mailcontent == null)
        {
            mailcontent = MsgInfo.MailContent.a(s1);
            c.a(Integer.valueOf(s1.hashCode()), mailcontent);
        }
        return mailcontent;
    }

    public final MsgInfo.VerifyContent m(String s1)
    {
        MsgInfo.VerifyContent verifycontent = (MsgInfo.VerifyContent)d.a(Integer.valueOf(s1.hashCode()));
        if(verifycontent == null)
        {
            verifycontent = MsgInfo.VerifyContent.a(s1);
            d.a(Integer.valueOf(s1.hashCode()), verifycontent);
        }
        return verifycontent;
    }

    public final MsgInfo.FriendContent n(String s1)
    {
        MsgInfo.FriendContent friendcontent = (MsgInfo.FriendContent)e.a(Integer.valueOf(s1.hashCode()));
        if(friendcontent == null)
        {
            friendcontent = MsgInfo.FriendContent.a(s1);
            e.a(Integer.valueOf(s1.hashCode()), friendcontent);
        }
        return friendcontent;
    }

    public final MsgInfo.LocationContent o(String s1)
    {
        MsgInfo.LocationContent locationcontent = (MsgInfo.LocationContent)f.a(Integer.valueOf(s1.hashCode()));
        if(locationcontent == null)
        {
            locationcontent = MsgInfo.LocationContent.a(s1);
            f.a(Integer.valueOf(s1.hashCode()), locationcontent);
        }
        return locationcontent;
    }

    public final int p(String s1)
    {
        int i1 = 0;
        String s2 = (new StringBuilder()).append("SELECT COUNT(*) FROM ").append(r(s1)).append(" WHERE ").append("talker").append("='").append(Util.a(s1)).append("'").toString();
        Cursor cursor = g.a(s2, null);
        if(cursor.moveToLast())
            i1 = cursor.getInt(i1);
        cursor.close();
        return i1;
    }

    public final void q(String s1)
    {
        String s2 = (new StringBuilder()).append("select createTime from ").append(r(s1)).append(" where ").append("talker=\"").append(Util.a(s1)).append("\" order by ").append("createTime").append(" desc limit -1 offset ").append(100).toString();
        Cursor cursor = g.a(s2, null);
        cursor.moveToFirst();
        long l1 = 0L;
        if(cursor.moveToFirst())
            for(; !cursor.isAfterLast(); cursor.moveToNext())
                if(l1 < cursor.getLong(0))
                    l1 = cursor.getLong(0);

        cursor.close();
        long l2 = Util.d() - 0x240c8400L;
        if(l1 > l2)
            l1 = l2;
        Log.d("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("deleteOldMsgByTalker get max time :").append(l1).toString());
        int i1 = g.a(r(s1), (new StringBuilder()).append("( talker=\"").append(Util.a(s1)).append("\"").append(") and (").append("createTime").append(" < ").append(l1).append(")").toString(), null);
        Log.d("MicroMsg.MsgInfoStorage", (new StringBuilder()).append("deleted message count:").append(i1).toString());
    }

    public static final String a[];
    private static List b;
    private final LRUMap c = new LRUMap(100);
    private final LRUMap d = new LRUMap(100);
    private final LRUMap e = new LRUMap(100);
    private final LRUMap f = new LRUMap(100);
    private final SqliteDB g;
    private final MStorageEvent h = new _cls1();

    static 
    {
        String as[] = new String[20];
        as[0] = "CREATE TABLE IF NOT EXISTS message ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT )";
        as[1] = "CREATE INDEX IF NOT EXISTS  messageSvrIdIndex ON message ( msgSvrId )";
        as[2] = "CREATE INDEX IF NOT EXISTS  messageTalkerIndex ON message ( talker )";
        as[3] = "CREATE INDEX IF NOT EXISTS  messageStatusIndex ON message ( status )";
        as[4] = "CREATE INDEX IF NOT EXISTS  messageCreateTimeIndex ON message ( createTime )";
        as[5] = "CREATE TABLE IF NOT EXISTS qmessage ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT )";
        as[6] = "CREATE INDEX IF NOT EXISTS  qmessageSvrIdIndex ON qmessage ( msgSvrId )";
        as[7] = "CREATE INDEX IF NOT EXISTS  qmessageTalkerIndex ON qmessage ( talker )";
        as[8] = "CREATE INDEX IF NOT EXISTS  qmessageStatusIndex ON qmessage ( status )";
        as[9] = "CREATE INDEX IF NOT EXISTS  qmessageCreateTimeIndex ON qmessage ( createTime )";
        as[10] = "CREATE TABLE IF NOT EXISTS tmessage ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT )";
        as[11] = "CREATE INDEX IF NOT EXISTS  tmessageSvrIdIndex ON tmessage ( msgSvrId )";
        as[12] = "CREATE INDEX IF NOT EXISTS  tmessageTalkerIndex ON tmessage ( talker )";
        as[13] = "CREATE INDEX IF NOT EXISTS  tmessageStatusIndex ON tmessage ( status )";
        as[14] = "CREATE INDEX IF NOT EXISTS  tmessageCreateTimeIndex ON tmessage ( createTime )";
        as[15] = "CREATE TABLE IF NOT EXISTS bottlemessage ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT )";
        as[16] = "CREATE INDEX IF NOT EXISTS  bmessageSvrIdIndex ON bottlemessage ( msgSvrId )";
        as[17] = "CREATE INDEX IF NOT EXISTS  bmessageTalkerIndex ON bottlemessage ( talker )";
        as[18] = "CREATE INDEX IF NOT EXISTS  bmessageStatusIndex ON bottlemessage ( status )";
        as[19] = "CREATE INDEX IF NOT EXISTS  bmessageCreateTimeIndex ON bottlemessage ( createTime )";
        a = as;
    }

    private class _cls1 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            IOnMsgChange ionmsgchange = (IOnMsgChange)obj;
            NotifyInfo notifyinfo = (NotifyInfo)obj1;
            ionmsgchange.a(a, notifyinfo);
        }

        private MsgInfoStorage a;

        _cls1()
        {
            a = MsgInfoStorage.this;
            super();
        }
    }


    private class MsgTable
    {

        public final String a()
        {
            return e;
        }

        public final void a(int i1)
        {
            a = i1;
        }

        public final boolean a(long l1)
        {
            boolean flag;
            if(l1 >= b && l1 <= c)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public final long b()
        {
            return a;
        }

        public final void c()
        {
            a = 1L + a;
            boolean flag;
            if(a >= b && a <= c)
                flag = true;
            else
                flag = false;
            Assert.assertTrue(flag);
        }

        public final int d()
        {
            return d;
        }

        private long a;
        private long b;
        private long c;
        private int d;
        private String e;

        public MsgTable(int i1, String s1, long l1, long l2)
        {
            boolean flag = true;
            super();
            boolean flag1;
            if(s1 != null && s1.length() > 0)
                flag1 = flag;
            else
                flag1 = false;
            Assert.assertTrue(flag1);
            if(l2 < l1)
                flag = false;
            Assert.assertTrue(flag);
            e = s1;
            a = l1;
            b = l1;
            c = l2;
            d = i1;
        }
    }

}

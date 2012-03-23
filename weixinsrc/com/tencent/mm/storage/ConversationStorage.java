// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.database.Cursor;
import com.tencent.mm.model.ContactStorageLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.MStorageEvent;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tencent.mm.storage:
//            IOnMsgChange, Conversation, NotifyInfo, MsgInfoStorage, 
//            MsgInfo

public class ConversationStorage extends MStorage
    implements IOnMsgChange
{

    public ConversationStorage(SqliteDB sqlitedb)
    {
        c = new _cls1();
        d = new _cls2();
        b = sqlitedb;
    }

    private static String j(String s)
    {
        Log.e("MicroMsg.ConversationStorage", (new StringBuilder()).append("talker :").append(s).toString());
        String s1;
        if(ContactStorageLogic.t(s))
            s1 = "bottleconversation";
        else
            s1 = "conversation";
        return s1;
    }

    public final int a(Conversation conversation, String s)
    {
        int k = 0;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.ConversationStorage", "update conversation failed");
_L4:
        return k;
_L2:
        SqliteDB sqlitedb = b;
        String s1 = j(s);
        android.content.ContentValues contentvalues = conversation.a();
        String as[] = new String[1];
        as[k] = s;
        k = sqlitedb.a(s1, contentvalues, "username=?", as);
        if(k != 0)
            b(s);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final long a(Conversation conversation)
    {
        long l = -1L;
        String s = Util.h(conversation.g());
        if(s.length() <= 0)
        {
            Log.a("MicroMsg.ConversationStorage", "insert conversation failed, username empty");
        } else
        {
            long l1 = b.a(j(s), null, conversation.a());
            if(l1 != l)
                b(conversation.g());
            l = l1;
        }
        return l;
    }

    public final Cursor a(String s, List list)
    {
        String s1 = (new StringBuilder()).append("select unReadCount, status, isSend, createTime, conversation.username, content, conversation.reserved, nickname from conversation,contact where conversation.username = contact.username").append(Util.h(s)).toString();
        String s2 = "";
        if(list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            String s5;
            String s6;
            for(s5 = s2; iterator.hasNext(); s5 = (new StringBuilder()).append(s5).append(" and conversation.username != '").append(s6).append("'").toString())
                s6 = (String)iterator.next();

            s2 = s5;
        }
        String s3 = (new StringBuilder()).append(s1).append(s2).toString();
        String s4 = (new StringBuilder()).append(s3).append(" order by createTime desc").toString();
        return b.a(s4, null);
    }

    public final void a(IConversationExtension iconversationextension)
    {
        d.a(iconversationextension);
    }

    public final void a(MsgInfoStorage msginfostorage, NotifyInfo notifyinfo)
    {
        String s = notifyinfo.a;
        Conversation conversation = d(s);
        boolean flag;
        MsgInfo msginfo;
        SqliteDB sqlitedb;
        String s1;
        String as[];
        Cursor cursor;
        if(conversation == null)
        {
            conversation = new Conversation(s);
            flag = true;
        } else
        {
            flag = false;
        }
        c.b(conversation);
        c.a();
        if(s == null || s.equals(conversation.g())) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.ConversationStorage", "process message for conversation failed: inconsist username");
_L4:
        return;
_L2:
        msginfo = msginfostorage.c(s);
        if(msginfo == null || msginfo.b() == 0L)
            break; /* Loop/switch isn't completed */
        if(notifyinfo.b.equals("insert") && notifyinfo.c.f() == 0)
            conversation.a(1 + conversation.b());
        conversation.a(msginfo);
        conversation.c(Integer.toString(msginfo.d()));
        sqlitedb = b;
        s1 = j(s);
        as = new String[1];
        as[0] = s;
        cursor = sqlitedb.a(s1, "username=?", as, null);
        if(cursor.getCount() <= 0)
            a(conversation);
        else
            a(conversation, s);
        cursor.close();
_L5:
        d.b(conversation);
        d.a();
        if(true) goto _L4; else goto _L3
_L3:
        Log.c("MicroMsg.ConversationStorage", (new StringBuilder()).append("update null conversation with talker ").append(s).toString());
        if(!flag)
        {
            conversation.j();
            a(conversation, s);
        }
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public final void a(String s)
    {
        SqliteDB sqlitedb = b;
        String s1 = j(s);
        String as[] = new String[1];
        as[0] = s;
        if(sqlitedb.a(s1, "username=?", as) != 0)
            b(s);
    }

    public final boolean a()
    {
        if(b.b("delete from conversation"))
            c();
        boolean flag = b.b("delete from bottleconversation");
        if(flag)
            c();
        return flag;
    }

    public final void b(IConversationExtension iconversationextension)
    {
        c.a(iconversationextension);
    }

    public final boolean b()
    {
        boolean flag = b.b("delete from bottleconversation");
        if(flag)
            c();
        return flag;
    }

    public final boolean c(String s)
    {
        boolean flag = b.b((new StringBuilder()).append("delete from ").append(j(s)).append(" where username like '%").append(s).append("'").toString());
        if(flag)
            b(s);
        return flag;
    }

    public final Cursor d()
    {
        return b.a("select * from bottleconversation order by createTime desc", null);
    }

    public final Conversation d(String s)
    {
        Object obj = null;
        SqliteDB sqlitedb = b;
        String s1 = j(s);
        String as[] = new String[1];
        as[0] = s;
        Cursor cursor = sqlitedb.a(s1, "username=?", as, ((String) (obj)));
        if(cursor.getCount() <= 0)
        {
            Log.b("MicroMsg.ConversationStorage", (new StringBuilder()).append("get null with username:").append(s).toString());
            cursor.close();
        } else
        {
            cursor.moveToFirst();
            obj = new Conversation();
            ((Conversation) (obj)).a(cursor);
            cursor.close();
        }
        return ((Conversation) (obj));
    }

    public final int e()
    {
        int k = 0;
        Cursor cursor = b.a("select count(*) from bottleconversation where unReadCount > 0", null);
        if(cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            k = cursor.getInt(k);
        }
        cursor.close();
        return k;
    }

    public final boolean e(String s)
    {
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        boolean flag;
        Log.a("MicroMsg.ConversationStorage", "update conversation failed");
        flag = false;
_L4:
        return flag;
_L2:
        flag = b.b((new StringBuilder()).append("update ").append(j(s)).append(" set ").append("unReadCount").append(" = 0 where ").append("username").append(" = \"").append(Util.a(s)).append("\"").toString());
        if(flag)
            b(s);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final Cursor f(String s)
    {
        String s1 = (new StringBuilder()).append("select unReadCount, status, isSend, createTime, conversation.username, content, conversation.reserved, nickname from conversation,contact where conversation.username = contact.username").append(Util.h(s)).append(" order by ").append("createTime").append(" desc").toString();
        return b.a(s1, null);
    }

    public final boolean g(String s)
    {
        boolean flag = true;
        SqliteDB sqlitedb = b;
        String s1 = j(s);
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        Cursor cursor = sqlitedb.a(s1, "username=?", as, null);
        if(cursor.getCount() <= 0)
            flag = false;
        cursor.close();
        return flag;
    }

    public final int h(String s)
    {
        int k = 0;
        String s1 = (new StringBuilder()).append("select sum(unReadCount) from conversation,contact where conversation.username = contact.username").append(Util.h(s)).toString();
        Cursor cursor = b.a(s1, null);
        if(cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            k = cursor.getInt(k);
        }
        cursor.close();
        return k;
    }

    public final int i(String s)
    {
        int k = 0;
        String s1 = (new StringBuilder()).append("select count(conversation.username) from conversation,contact where conversation.username = contact.username").append(Util.h(s)).append(" and ").append("unReadCount").append(" > 0").toString();
        Cursor cursor = b.a(s1, null);
        if(cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            k = cursor.getInt(k);
        }
        cursor.close();
        return k;
    }

    public static final String a[];
    private final SqliteDB b;
    private MStorageEvent c;
    private MStorageEvent d;

    static 
    {
        String as[] = new String[4];
        as[0] = "CREATE TABLE IF NOT EXISTS conversation ( unReadCount INTEGER, status INT, isSend INT, createTime LONG, username VARCHAR(40), content TEXT, reserved TEXT )";
        as[1] = "CREATE UNIQUE INDEX IF NOT EXISTS  conversationUsername ON conversation ( username )";
        as[2] = "CREATE TABLE IF NOT EXISTS bottleconversation ( unReadCount INTEGER, status INT, isSend INT, createTime LONG, username VARCHAR(40), content TEXT, reserved TEXT )";
        as[3] = "CREATE UNIQUE INDEX IF NOT EXISTS  btconversationUsername ON bottleconversation ( username )";
        a = as;
    }

    private class _cls1 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            ((IConversationExtension)obj).a((Conversation)obj1, a);
        }

        private ConversationStorage a;

        _cls1()
        {
            a = ConversationStorage.this;
            super();
        }

        private class IConversationExtension
        {

            public abstract void a(Conversation conversation, ConversationStorage conversationstorage);
        }

    }


    private class _cls2 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            ((IConversationExtension)obj).a((Conversation)obj1, a);
        }

        private ConversationStorage a;

        _cls2()
        {
            a = ConversationStorage.this;
            super();
        }
    }

}

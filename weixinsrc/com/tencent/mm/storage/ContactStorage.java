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
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.storage:
//            Contact

public class ContactStorage extends MStorage
{

    public ContactStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
        Cursor cursor = b.a(" select * from sqlite_master where tbl_name=\"contact_ext\" and type = \"table\" and (sql like \"% weiboflag %\"  or sql like \"%(weiboflag %\"  or sql like \"%,weiboflag %\" )", null);
        if(cursor.getCount() <= 0)
            b.b("Alter table contact_ext add weiboflag INT DEFAULT 0 ");
        cursor.close();
        Cursor cursor1 = b.a(" select * from sqlite_master where tbl_name=\"contact_ext\" and type = \"table\" and ( sql like \"% weibonickname %\"  or sql like \"%(weibonickname %\"  or sql like \"%,weibonickname %\" )", null);
        if(cursor1.getCount() <= 0)
            b.b("Alter table contact_ext add weibonickname TEXT ");
        cursor1.close();
    }

    public static String a(String s, String as[])
    {
        int j = as.length;
        String s1 = " and ( 1 != 1 ";
        int k = 0;
        while(k < j) 
        {
            String s2 = as[k];
            if("@all.android".equals(s2))
                s1 = (new StringBuilder()).append(s1).append(" or 1 = 1").toString();
            else
            if("@micromsg.qq.com".equals(s2))
                s1 = (new StringBuilder()).append(s1).append(" or ").append(s).append(" not like '%@%'").toString();
            else
            if("@chatroom".equals(s2))
                s1 = (new StringBuilder()).append(s1).append(" or ").append(s).append(" like '%").append("@chatroom").append("'").toString();
            else
            if("@t.qq.com".equals(s2))
                s1 = (new StringBuilder()).append(s1).append(" or ").append(s).append(" like '%").append("@t.qq.com").append("'").toString();
            else
            if("@qqim".equals(s2))
                s1 = (new StringBuilder()).append(s1).append(" or ").append(s).append(" like '%").append("@qqim").append("'").toString();
            k++;
        }
        return (new StringBuilder()).append(s1).append(" ) ").toString();
    }

    private static String a(boolean flag)
    {
        String s = (new StringBuilder()).append("contact.type & ").append(1).append("!=0").toString();
        if(flag)
            s = (new StringBuilder()).append(s).append(" or contact.type & ").append(16).append("!=0").toString();
        String s1 = (new StringBuilder()).append(" where (").append(s).append(") and ").toString();
        String s2 = (new StringBuilder()).append(s1).append("contact.type & ").append(32).append("=0 and ").toString();
        return (new StringBuilder()).append(s2).append("contact.type & ").append(8).append("=0").toString();
    }

    private static String b(String s, String s1, List list)
    {
        boolean flag = true;
        String s2;
        String s3;
        if(s == null || s.equals("@all.android"))
            s2 = (new StringBuilder()).append("").append(a(flag)).toString();
        else
        if(s.equals("@black.android"))
            s2 = (new StringBuilder()).append("").append((new StringBuilder()).append(" where contact.type & ").append(8).append("!=0").toString()).toString();
        else
        if(s.equals("@t.qq.com"))
            s2 = (new StringBuilder()).append("").append((new StringBuilder()).append(" where contact.username like '%").append("@t.qq.com").append("'").toString()).toString();
        else
        if(s.equals("@domain.android"))
        {
            StringBuilder stringbuilder2 = (new StringBuilder()).append("");
            String s9 = a(flag);
            if(s9 == null || s9.length() <= 0)
                flag = false;
            Assert.assertTrue(flag);
            s2 = stringbuilder2.append((new StringBuilder()).append(s9).append(" and contact_ext.DomainList like '%").append(s1).append("%'").toString()).toString();
        } else
        if(s.equals("@micromsg.qq.com"))
        {
            StringBuilder stringbuilder1 = (new StringBuilder()).append("");
            String s7 = a(false);
            String s8;
            if(s7 == null || s7.length() <= 0)
                flag = false;
            Assert.assertTrue(flag);
            s8 = (new StringBuilder()).append(" or (").append(f()).append(')').toString();
            s2 = stringbuilder1.append((new StringBuilder()).append(s7).append(" and ( contact.username not like '%@%'").append(s8).append(")").toString()).toString();
        } else
        if(s.equals("@qqim"))
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("");
            String s6 = a(false);
            if(s6 == null || s6.length() <= 0)
                flag = false;
            Assert.assertTrue(flag);
            s2 = stringbuilder.append((new StringBuilder()).append(s6).append(" and contact.username like '%").append("@qqim").append("'").toString()).toString();
        } else
        {
            Log.d("MicroMsg.ContactStorage", "unknow role type");
            s2 = (new StringBuilder()).append("").append(a(false)).toString();
        }
        s3 = "";
        if(list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            String s4;
            String s5;
            for(s4 = s3; iterator.hasNext(); s4 = (new StringBuilder()).append(s4).append(" and contact.username != '").append(s5).append("'").toString())
                s5 = (String)iterator.next();

            s3 = s4;
        }
        return (new StringBuilder()).append(s2).append(s3).toString();
    }

    private static String e()
    {
        String s = (new StringBuilder()).append(" order by ").append("showHead asc, ").toString();
        String s1 = (new StringBuilder()).append(s).append("contact_ext.ConRemark_PYShort asc, ").toString();
        String s2 = (new StringBuilder()).append(s1).append("contact_ext.ConRemark_PYFull asc, ").toString();
        String s3 = (new StringBuilder()).append(s2).append("contact.pyInitial asc, ").toString();
        String s4 = (new StringBuilder()).append(s3).append("contact.quanPin asc, ").toString();
        String s5 = (new StringBuilder()).append(s4).append("contact.nickname asc, ").toString();
        return (new StringBuilder()).append(s5).append("contact.username asc ").toString();
    }

    private static String f()
    {
        String s = (new StringBuilder()).append("contact.type & ").append(1).append("!=0").toString();
        return (new StringBuilder()).append("( (").append(s).append(") and ").append("contact").append(".").append("type").append(" & ").append(8).append("=0").append(" and ").append("contact").append(".").append("username").append(" like '%").append("@chatroom").append("')").toString();
    }

    private Contact g(String s)
    {
        Contact contact = (Contact)c.b(s);
        if(contact != null)
            contact.a(-2L);
        else
            contact = null;
        return contact;
    }

    private void h(String s)
    {
        c.c(s);
        d.c(s);
    }

    private static String i(String s)
    {
        String s1;
        if(s == null || s.equals(""))
        {
            s1 = "";
        } else
        {
            String s2 = (new StringBuilder()).append(" and (").append("contact_ext.ConRemark like '%").append(s).append("%' or ").toString();
            String s3 = (new StringBuilder()).append(s2).append("contact.reserved like '%").append(s).append("%' or ").toString();
            String s4 = (new StringBuilder()).append(s3).append("contact.username like '%").append(s).append("%' or ").toString();
            String s5 = (new StringBuilder()).append(s4).append("contact.nickname like '%").append(s).append("%' or ").toString();
            String s6 = (new StringBuilder()).append(s5).append("contact.pyInitial like '%").append(s).append("%' or ").toString();
            s1 = (new StringBuilder()).append(s6).append("contact.quanPin like '%").append(s).append("%' )").toString();
        }
        return s1;
    }

    public final int a(String s, Contact contact)
    {
        int j = 0;
        if(ContactStorageLogic.t(s))
            s = ContactStorageLogic.u(s);
        h(s);
        contact.e(contact.d());
        e.b(contact);
        e.a();
        ContentValues contentvalues = contact.a();
        int k;
        ContentValues contentvalues1;
        if(contentvalues.size() > 0)
        {
            SqliteDB sqlitedb1 = b;
            String as1[] = new String[1];
            as1[j] = (new StringBuilder()).append("").append(s).toString();
            k = sqlitedb1.a("contact", contentvalues, "username=?", as1);
        } else
        {
            k = j;
        }
        contentvalues1 = contact.b();
        if(contentvalues1.size() > 0)
        {
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[j] = (new StringBuilder()).append("").append(s).toString();
            j = sqlitedb.a("contact_ext", contentvalues1, "username=?", as);
            if(j == 0 && b.a("contact_ext", "username", contentvalues1) != -1L)
                j = 1;
        }
        if(k != 0 || j != 0)
            b(s);
        if(k == 0)
            k = j;
        return k;
    }

    public final Cursor a(String s, String s1, List list)
    {
        String s2 = (new StringBuilder()).append("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username ").append(b(s, s1, list)).append(e()).toString();
        Log.e("MicroMsg.ContactStorage", s2);
        return b.a(s2, null);
    }

    public final Cursor a(List list)
    {
        int j = 0;
        int k;
        String s;
        if(list.size() > 0)
            k = 1;
        else
            k = j;
        Assert.assertTrue(k);
        s = (new StringBuilder()).append("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username ").append(" where ").toString();
        while(j < list.size()) 
        {
            if(j != -1 + list.size())
                s = (new StringBuilder()).append(s).append("contact.username = '").append((String)list.get(j)).append("' OR ").toString();
            else
                s = (new StringBuilder()).append(s).append("contact.username = '").append((String)list.get(j)).append("'").toString();
            j++;
        }
        String s1 = (new StringBuilder()).append(s).append(e()).toString();
        return b.a(s1, null);
    }

    public final void a()
    {
        c.a();
        d.a();
    }

    public final void a(IContactExtension icontactextension)
    {
        e.a(icontactextension);
    }

    public final boolean a(Contact contact)
    {
        boolean flag = true;
        if(!d(contact.s())) goto _L2; else goto _L1
_L1:
        if(a(contact.s(), contact) != 0)
            flag = false;
_L4:
        return flag;
_L2:
        contact.a(-1L);
        if(c(contact) < 0)
            flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a(String s)
    {
        boolean flag;
        if(Util.i(s) || s.contains("@"))
        {
            flag = false;
        } else
        {
            Integer integer = (Integer)d.a(s);
            if(integer != null)
            {
                flag = Contact.a(integer.intValue());
            } else
            {
                Contact contact = c(s);
                if(contact == null || !contact.s().equals(s))
                {
                    d.a(s, Integer.valueOf(0));
                    flag = false;
                } else
                {
                    d.a(s, Integer.valueOf(contact.q()));
                    flag = Contact.a(contact.q());
                }
            }
        }
        return flag;
    }

    public final int[] a(String s, String s1, String s2, List list)
    {
        String s3 = (new StringBuilder()).append("select distinct contact.showHead from contact left join contact_ext on contact.username = contact_ext.username").append(b(s, s1, list)).append(i(s2)).append(e()).toString();
        Cursor cursor = b.a(s3, null);
        int j;
        int ai[];
        if(cursor.getCount() >= 0)
            j = cursor.getCount();
        else
            j = 0;
        ai = new int[j];
        if(cursor.getCount() > 0)
        {
            for(int k = 0; k < j; k++)
            {
                cursor.moveToPosition(k);
                ai[k] = cursor.getInt(0);
            }

        }
        cursor.close();
        return ai;
    }

    public final Cursor b()
    {
        String s = (new StringBuilder()).append("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username ").append(" where ").toString();
        String s1 = (new StringBuilder()).append(s).append(f()).toString();
        return b.a(s1, null);
    }

    public final boolean b(Contact contact)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        ContentValues contentvalues;
        boolean flag3;
        ContentValues contentvalues1;
        boolean flag4;
        if(contact != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("contact NULL !", flag1);
        if(contact.c() == -2L)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue("convert flag should be FLAG_NULL_ID", flag2);
        h(contact.s());
        contact.e(contact.d());
        e.b(contact);
        e.a();
        contentvalues = contact.a();
        if(b.b("contact", "contactID", contentvalues) > 0L)
            flag3 = flag;
        else
            flag3 = false;
        contentvalues1 = contact.b();
        if(b.b("contact_ext", "contactID", contentvalues1) > 0L)
            flag4 = flag;
        else
            flag4 = false;
        if(!flag3 || !flag4)
            flag = false;
        else
            b(contact.s());
        return flag;
    }

    public final int[] b(String s, String s1, String s2, List list)
    {
        int ai[] = null;
        String s3 = (new StringBuilder()).append("select count(*) from contact left join contact_ext on contact.username = contact_ext.username").append(b(s, s1, list)).append(i(s2)).toString();
        String s4 = (new StringBuilder()).append(s3).append(" group by contact.showHead").toString();
        Cursor cursor = b.a(s4, ai);
        if(cursor.getCount() > 0)
        {
            int j = cursor.getCount();
            ai = new int[j];
            for(int k = 0; k < j; k++)
            {
                cursor.moveToPosition(k);
                ai[k] = cursor.getInt(0);
            }

        }
        cursor.close();
        return ai;
    }

    public final int c(Contact contact)
    {
        byte byte0 = -1;
        if(Util.h(contact.s()).length() <= 0)
        {
            Log.a("MicroMsg.ContactStorage", "FATAL ERROR, invalid contact, empty username");
        } else
        {
            contact.e(contact.d());
            e.b(contact);
            e.a();
            ContentValues contentvalues = contact.a();
            int j = (int)b.a("contact", "contactID", contentvalues);
            ContentValues contentvalues1 = contact.b();
            int k;
            if(contentvalues1.size() > 0)
            {
                SqliteDB sqlitedb = b;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append("").append(contact.s()).toString();
                sqlitedb.a("contact_ext", "username=?", as);
                k = (int)b.a("contact_ext", "username", contentvalues1);
            } else
            {
                k = 0;
            }
            if(j != byte0 && k != byte0)
            {
                b(contact.s());
                byte0 = 0;
            } else
            {
                Log.a("MicroMsg.ContactStorage", (new StringBuilder()).append("insert failed: username=").append(contact.s()).toString());
            }
        }
        return byte0;
    }

    public final Cursor c(String s, String s1, String s2, List list)
    {
        String s3 = (new StringBuilder()).append("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username ").append(b(s1, s2, list)).append(i(s)).append(e()).toString();
        return b.a(s3, null);
    }

    public final Contact c(String s)
    {
        boolean flag;
        Contact contact;
        if(s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(ContactStorageLogic.t(s))
            s = ContactStorageLogic.u(s);
        contact = g(s);
        if(contact == null)
        {
            contact = new Contact();
            String s1 = (new StringBuilder()).append("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username where contact.username=\"").append(Util.a(s)).append("\"").toString();
            Cursor cursor = b.a(s1, null);
            if(cursor.getCount() != 0)
            {
                cursor.moveToFirst();
                contact.a(cursor);
                c.a(contact.s(), contact);
                d.a(contact.s(), Integer.valueOf(contact.q()));
            }
            cursor.close();
        }
        return contact;
    }

    public final Cursor d()
    {
        return b.a("select * from contact where contactID = -1", null);
    }

    public final boolean d(String s)
    {
        boolean flag = true;
        boolean flag1;
        if(s.length() > 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(ContactStorageLogic.t(s))
            s = ContactStorageLogic.u(s);
        if(g(s) == null)
        {
            String s1 = (new StringBuilder()).append("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username where contact.username=\"").append(Util.a(s)).append("\"").toString();
            Cursor cursor = b.a(s1, null);
            Log.d("MicroMsg.ContactStorage", (new StringBuilder()).append("isUserExist :").append(s).append(", resCnt:").append(cursor.getCount()).toString());
            if(cursor.getCount() <= 0)
                flag = false;
            cursor.close();
        }
        return flag;
    }

    public final boolean e(String s)
    {
        Cursor cursor = a(s, null, null);
        Log.d("MicroMsg.ContactStorage", (new StringBuilder()).append("isBlackList : resCnt:").append(cursor.getCount()).toString());
        boolean flag;
        if(cursor.getCount() > 0)
            flag = true;
        else
            flag = false;
        cursor.close();
        return flag;
    }

    public final int f(String s)
    {
        int j;
        boolean flag;
        SqliteDB sqlitedb;
        String as[];
        if(s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(ContactStorageLogic.t(s))
            s = ContactStorageLogic.u(s);
        h(s);
        sqlitedb = b;
        as = new String[1];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        j = sqlitedb.a("contact", "username=?", as);
        Log.d("MicroMsg.ContactStorage", (new StringBuilder()).append("delete contact user :").append(s).append(", res:").append(j).toString());
        if(j != 0) goto _L2; else goto _L1
_L1:
        return j;
_L2:
        SqliteDB sqlitedb1 = b;
        String as1[] = new String[1];
        as1[0] = (new StringBuilder()).append("").append(s).toString();
        j = sqlitedb1.a("contact_ext", "username=?", as1);
        Log.d("MicroMsg.ContactStorage", (new StringBuilder()).append("delete contact_ext user :").append(s).append(", res:").append(j).toString());
        if(j != 0)
            b(s);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String a[];
    private final SqliteDB b;
    private final LRUMap c = new LRUMap(200);
    private final LRUMap d = new LRUMap(2000);
    private final MStorageEvent e = new _cls1();

    static 
    {
        String as[] = new String[4];
        as[0] = "CREATE TABLE IF NOT EXISTS contact ( contactID INTEGER PRIMARY KEY, sex INT, type INT, showHead INT, username VARCHAR(40), nickname VARCHAR(40), pyInitial VARCHAR(40), quanPin VARCHAR(60), reserved TEXT )";
        as[1] = "CREATE UNIQUE INDEX IF NOT EXISTS  serverContactIndex ON contact ( username )";
        as[2] = "CREATE TABLE IF NOT EXISTS contact_ext ( username VARCHAR(40), Uin INTEGER DEFAULT 0, Email VARCHAR(128), Mobile VARCHAR(40), ShowFlag INTEGER DEFAULT 0 , ConType INTEGER DEFAULT 0 , ConRemark TEXT, ConRemark_PYShort TEXT, ConRemark_PYFull TEXT, ConQQMBlog TEXT, ConSMBlog TEXT, DomainList TEXT, reserved1 INT DEFAULT 0 , reserved2 INT DEFAULT 0 , reserved3 INT DEFAULT 0 , reserved4 INT DEFAULT 0 , reserved5 INT DEFAULT 0 , reserved6 TEXT, reserved7 TEXT, reserved8 TEXT, reserved9 TEXT, reserved10 TEXT, weiboflag  INT DEFAULT 0 ,weibonickname TEXT  )";
        as[3] = "CREATE UNIQUE INDEX IF NOT EXISTS serverContactExtIndex  ON contact_ext ( username )";
        a = as;
    }

    private class _cls1 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            ((IContactExtension)obj).a((Contact)obj1);
        }

        private ContactStorage a;

        _cls1()
        {
            a = ContactStorage.this;
            super();
        }

        private class IContactExtension
        {

            public abstract void a(Contact contact);
        }

    }

}

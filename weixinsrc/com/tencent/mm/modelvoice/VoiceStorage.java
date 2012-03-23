// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.text.SimpleDateFormat;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvoice:
//            VoiceInfo, AmrFileOperator

public class VoiceStorage extends MStorage
{

    public VoiceStorage(SqliteDB sqlitedb, String s)
    {
        e = new HashMap();
        b = sqlitedb;
        c = s;
    }

    public static String a(String s)
    {
        long l = System.currentTimeMillis();
        String s1 = (new SimpleDateFormat("ssHHmmMMddyy")).format(new Date(l));
        if(s != null && s.length() > 1)
            s1 = (new StringBuilder()).append(s1).append(MD5.a(s.getBytes()).substring(0, 7)).toString();
        String s2 = (new StringBuilder()).append(s1).append(l % 10000L).toString();
        StringBuilder stringbuilder = (new StringBuilder()).append(s2);
        long l1 = d;
        d = 1L + l1;
        return stringbuilder.append(l1).toString();
    }

    public final VoiceInfo a(int i)
    {
        Object obj = null;
        String s = (new StringBuilder()).append("SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2").append(" FROM voiceinfo WHERE MsgId=").append(i).toString();
        Cursor cursor = b.a(s, ((String []) (obj)));
        if(cursor.moveToFirst())
        {
            obj = new VoiceInfo();
            ((VoiceInfo) (obj)).a(cursor);
        }
        cursor.close();
        return ((VoiceInfo) (obj));
    }

    public final String a()
    {
        return c;
    }

    public final boolean a(VoiceInfo voiceinfo)
    {
        ContentValues contentvalues;
        boolean flag = true;
        boolean flag1;
        if(voiceinfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        contentvalues = voiceinfo.d();
        if(contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.VoiceStorage", "insert falied, no values set");
_L6:
        flag = false;
_L4:
        return flag;
_L2:
        if(b.a("voiceinfo", "FileName", contentvalues) == -1L)
            continue; /* Loop/switch isn't completed */
        c();
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final boolean a(String s, VoiceInfo voiceinfo)
    {
        boolean flag;
        ContentValues contentvalues;
        flag = true;
        boolean flag1;
        boolean flag2;
        if(s.length() > 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(voiceinfo != null)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        contentvalues = voiceinfo.d();
        if(contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.VoiceStorage", "update failed, no values set");
_L6:
        flag = false;
_L4:
        return flag;
_L2:
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = s;
        if(sqlitedb.a("voiceinfo", contentvalues, "FileName= ?", as) <= 0)
            continue; /* Loop/switch isn't completed */
        c();
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final List b()
    {
        Object obj = null;
        String s = (new StringBuilder()).append("SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2").append(" FROM voiceinfo").toString();
        String s1 = (new StringBuilder()).append(s).append(" WHERE Status<97 and User!=\"_USER_FOR_THROWBOTTLE_\"   order by CreateTime").toString();
        Cursor cursor = b.a(s1, ((String []) (obj)));
        int i = cursor.getCount();
        Log.d("MicroMsg.VoiceStorage", (new StringBuilder()).append("getUnfinishInfo resCount:").append(i).toString());
        if(i == 0)
        {
            cursor.close();
        } else
        {
            obj = new ArrayList();
            for(int j = 0; j < i; j++)
            {
                cursor.moveToPosition(j);
                VoiceInfo voiceinfo = new VoiceInfo();
                voiceinfo.a(cursor);
                ((List) (obj)).add(voiceinfo);
            }

            cursor.close();
        }
        return ((List) (obj));
    }

    public final AmrFileOperator c(String s)
    {
        if(e.get(s) == null)
            e.put(s, new AmrFileOperator(s));
        return (AmrFileOperator)e.get(s);
    }

    public final void d(String s)
    {
        AmrFileOperator amrfileoperator = (AmrFileOperator)e.get(s);
        if(amrfileoperator != null)
        {
            amrfileoperator.a();
            e.remove(s);
        }
    }

    public final boolean e(String s)
    {
        boolean flag;
        SqliteDB sqlitedb;
        String as[];
        if(s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        sqlitedb = b;
        as = new String[1];
        as[0] = s;
        if(sqlitedb.a("voiceinfo", "FileName= ?", as) <= 0)
            Log.b("MicroMsg.VoiceStorage", (new StringBuilder()).append("delete failed, no such file:").append(s).toString());
        return true;
    }

    public final VoiceInfo f(String s)
    {
        VoiceInfo voiceinfo = null;
        String s1 = (new StringBuilder()).append("SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2").append(" FROM voiceinfo WHERE FileName= ?").toString();
        SqliteDB sqlitedb = b;
        String as[] = new String[1];
        as[0] = s;
        Cursor cursor = sqlitedb.a(s1, as);
        if(cursor.moveToFirst())
        {
            voiceinfo = new VoiceInfo();
            voiceinfo.a(cursor);
        }
        cursor.close();
        return voiceinfo;
    }

    public static final String a[];
    private static long d = 0L;
    private SqliteDB b;
    private String c;
    private Map e;

    static 
    {
        String as[] = new String[4];
        as[0] = "CREATE TABLE IF NOT EXISTS voiceinfo ( FileName TEXT PRIMARY KEY, User TEXT, MsgId INT, NetOffset INT, FileNowSize INT, TotalLen INT, Status INT, CreateTime INT, LastModifyTime INT, ClientId TEXT, VoiceLength INT, MsgLocalId INT, Human TEXT, reserved1 INT, reserved2 TEXT )";
        as[1] = "CREATE INDEX IF NOT EXISTS voiceinfomsgidindex ON voiceinfo ( MsgId ) ";
        as[2] = "CREATE UNIQUE INDEX IF NOT EXISTS voiceinfouniqueindex ON voiceinfo ( FileName )";
        as[3] = "DELETE FROM voiceinfo WHERE Status = 99";
        a = as;
    }
}

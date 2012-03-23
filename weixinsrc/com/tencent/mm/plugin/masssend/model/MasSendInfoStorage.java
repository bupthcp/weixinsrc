// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.model;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import b.a.e;
import b.a.q;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Conversation;
import com.tencent.mm.storage.ConversationStorage;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.plugin.masssend.model:
//            MasSendInfo

public class MasSendInfoStorage extends MStorage
{

    public MasSendInfoStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public static Bitmap a(String s, float f)
    {
        Bitmap bitmap = null;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return bitmap;
_L2:
        String s1 = s.trim();
        Bitmap bitmap1 = e.a((new StringBuilder()).append(MMCore.f().M()).append(s1).toString(), f);
        if(bitmap1 != null)
            bitmap1 = Bitmap.createScaledBitmap(bitmap1, (int)(f * (float)bitmap1.getWidth()), (int)(f * (float)bitmap1.getHeight()), true);
        if(bitmap1 != null)
            bitmap = Util.a(bitmap1, bitmap1.getWidth() / 15);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static MasSendInfo a(String s, String s1, int i)
    {
        if(FileOperation.c(s)) goto _L2; else goto _L1
_L1:
        MasSendInfo massendinfo = null;
_L8:
        return massendinfo;
_L2:
        String s2;
        int j;
        String s3;
        android.graphics.BitmapFactory.Options options;
        s2 = MMCore.f().M();
        j = q.a(s);
        s3 = MD5.a((new StringBuilder()).append(s).append(System.currentTimeMillis()).toString().getBytes());
        Log.d("MicroMsg.MasSendInfoStorage", (new StringBuilder()).append("insert : original img path = ").append(s).toString());
        options = Util.f(s);
        if(FileOperation.a(s) <= 0x32000 && (options == null || options.outHeight <= 960 && options.outWidth <= 960)) goto _L4; else goto _L3
_L3:
        if(Util.a(s, 960, 960, android.graphics.Bitmap.CompressFormat.JPEG, 70, s2, s3)) goto _L6; else goto _L5
_L5:
        massendinfo = null;
          goto _L7
_L6:
        FileOperation.a(s2, s3, (new StringBuilder()).append(s3).append(".jpg").toString());
_L9:
        String s4 = (new StringBuilder()).append(s3).append(".jpg").toString();
        Log.d("MicroMsg.MasSendInfoStorage", (new StringBuilder()).append("insert: compressed bigImgPath = ").append(s4).toString());
        if(j != 0 && !Util.a((new StringBuilder()).append(s2).append(s4).toString(), j, android.graphics.Bitmap.CompressFormat.JPEG, s2, (new StringBuilder()).append(s3).append(".jpg").toString()))
        {
            massendinfo = null;
        } else
        {
            String s5 = MD5.a((new StringBuilder()).append(s4).append(System.currentTimeMillis()).toString().getBytes());
            if(!Util.a((new StringBuilder()).append(s2).append(s4).toString(), 100, 100, android.graphics.Bitmap.CompressFormat.JPEG, 60, s2, s5))
            {
                massendinfo = null;
            } else
            {
                Log.d("MicroMsg.MasSendInfoStorage", (new StringBuilder()).append("insert: thumbName = ").append(s5).toString());
                massendinfo = new MasSendInfo();
                massendinfo.c(3);
                massendinfo.d(s1);
                massendinfo.b(i);
                massendinfo.c(s5);
                massendinfo.b(s4);
            }
        }
_L7:
        if(true) goto _L8; else goto _L4
_L4:
        FileOperation.a(s2, s3, ".jpg", FileOperation.a(s, 0, FileOperation.a(s)));
          goto _L9
    }

    private static String b(MasSendInfo massendinfo)
    {
        massendinfo.j();
        JVM INSTR lookupswitch 4: default 48
    //                   1: 62
    //                   3: 70
    //                   34: 85
    //                   43: 100;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = MMCore.c().getResources().getString(0x7f0a029b);
_L7:
        return s;
_L2:
        s = massendinfo.f();
        continue; /* Loop/switch isn't completed */
_L3:
        s = MMCore.c().getResources().getString(0x7f0a0022);
        continue; /* Loop/switch isn't completed */
_L4:
        s = MMCore.c().getResources().getString(0x7f0a0023);
        continue; /* Loop/switch isn't completed */
_L5:
        s = MMCore.c().getResources().getString(0x7f0a0024);
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static void d()
    {
        if(MMCore.f().j().d("masssendapp") == null)
        {
            Conversation conversation = new Conversation();
            conversation.a("masssendapp");
            conversation.b(MMCore.c().getResources().getString(0x7f0a029b));
            conversation.a(Util.d());
            conversation.e();
            conversation.a(0);
            MMCore.f().j().a(conversation);
        }
    }

    public final Cursor a(int i)
    {
        String s = (new StringBuilder()).append("select massendinfo.clientid,massendinfo.status,massendinfo.createtime,massendinfo.lastmodifytime,massendinfo.filename,massendinfo.thumbfilename,massendinfo.tolist,massendinfo.tolistcount,massendinfo.msgtype,massendinfo.mediatime,massendinfo.datanetoffset,massendinfo.datalen,massendinfo.thumbnetoffset,massendinfo.thumbtotallen,massendinfo.reserved1,massendinfo.reserved2,massendinfo.reserved3,massendinfo.reserved4 from massendinfo   ORDER BY createtime ASC  LIMIT ").append(i).append(" offset ").append("(SELECT count(*) FROM ").append("massendinfo").append(" ) -").append(i).toString();
        Log.e("MicroMsg.MasSendInfoStorage", (new StringBuilder()).append("getCursor sql:").append(s).toString());
        return b.a(s, null);
    }

    public final MasSendInfo a(String s)
    {
        MasSendInfo massendinfo = null;
        String s1 = (new StringBuilder()).append("select massendinfo.clientid,massendinfo.status,massendinfo.createtime,massendinfo.lastmodifytime,massendinfo.filename,massendinfo.thumbfilename,massendinfo.tolist,massendinfo.tolistcount,massendinfo.msgtype,massendinfo.mediatime,massendinfo.datanetoffset,massendinfo.datalen,massendinfo.thumbnetoffset,massendinfo.thumbtotallen,massendinfo.reserved1,massendinfo.reserved2,massendinfo.reserved3,massendinfo.reserved4 from massendinfo   where massendinfo.clientid = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, massendinfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                massendinfo = new MasSendInfo();
                massendinfo.a(cursor);
            }
            cursor.close();
        }
        return massendinfo;
    }

    public final void a()
    {
        if(b.b("delete from massendinfo"))
            c();
    }

    public final boolean a(MasSendInfo massendinfo)
    {
        boolean flag = false;
        if(massendinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        massendinfo.b();
        android.content.ContentValues contentvalues = massendinfo.a();
        if((int)b.a("massendinfo", "clientid", contentvalues) != -1)
        {
            int i;
            Conversation conversation;
            if(MMCore.f().j().d("masssendapp") == null)
                i = 1;
            else
                i = ((flag) ? 1 : 0);
            conversation = new Conversation();
            conversation.a("masssendapp");
            conversation.b(b(massendinfo));
            conversation.a(massendinfo.e());
            conversation.e();
            conversation.a(flag);
            if(i != 0)
                MMCore.f().j().a(conversation);
            else
                MMCore.f().j().a(conversation, "masssendapp");
            c();
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final int b()
    {
        int i = 0;
        Cursor cursor = b.a("SELECT count(*) FROM massendinfo", null);
        if(cursor.moveToLast())
            i = cursor.getInt(i);
        cursor.close();
        return i;
    }

    public final boolean c(String s)
    {
        boolean flag = true;
        Cursor cursor = b.a("select * from massendinfo ORDER BY createtime DESC  limit 2", null);
        SqliteDB sqlitedb;
        String as[];
        if(cursor != null)
            if(cursor.getCount() == 0)
                cursor.close();
            else
            if(cursor.getCount() == flag)
            {
                cursor.moveToFirst();
                MasSendInfo massendinfo1 = new MasSendInfo();
                massendinfo1.a(cursor);
                cursor.close();
                Conversation conversation1 = new Conversation();
                conversation1.a("masssendapp");
                conversation1.b(MMCore.c().getResources().getString(0x7f0a029b));
                conversation1.a(massendinfo1.e());
                conversation1.e();
                conversation1.a(0);
                MMCore.f().j().a(conversation1, "masssendapp");
            } else
            {
                cursor.moveToPosition(flag);
                MasSendInfo massendinfo = new MasSendInfo();
                massendinfo.a(cursor);
                cursor.close();
                Conversation conversation = new Conversation();
                conversation.a("masssendapp");
                conversation.b(b(massendinfo));
                conversation.a(massendinfo.e());
                conversation.e();
                conversation.a(0);
                MMCore.f().j().a(conversation, "masssendapp");
            }
        sqlitedb = b;
        as = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        if(sqlitedb.a("massendinfo", "clientid= ?", as) > 0)
            c();
        else
            flag = false;
        return flag;
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS massendinfo ( clientid text  PRIMARY KEY , status int  , createtime long  , lastmodifytime long  , filename text  , thumbfilename text  , tolist text  , tolistcount int  , msgtype int  , mediatime int  , datanetoffset int  , datalen int  , thumbnetoffset int  , thumbtotallen int  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS  massendinfostatus_index ON massendinfo ( status )";
        a = as;
    }
}

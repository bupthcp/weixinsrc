// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import android.database.Cursor;
import com.tencent.mm.algorithm.LRUMap;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelavatar:
//            ImgFlag

public class ImgFlagStorage extends MStorage
{

    public ImgFlagStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final ImgFlag a(String s)
    {
        ImgFlag imgflag = (ImgFlag)c.b(s);
        if(imgflag == null || !imgflag.c().equals(s))
        {
            String s1 = (new StringBuilder()).append("select img_flag.username,img_flag.imgflag,img_flag.lastupdatetime,img_flag.reserved1,img_flag.reserved2,img_flag.reserved3,img_flag.reserved4 from img_flag where img_flag.username=\"").append(Util.a(s)).append("\"").toString();
            Cursor cursor = b.a(s1, null);
            if(cursor == null)
            {
                imgflag = null;
            } else
            {
                if(cursor.getCount() != 0)
                {
                    cursor.moveToFirst();
                    imgflag = new ImgFlag();
                    imgflag.a(cursor);
                }
                cursor.close();
                c.a(s, imgflag);
            }
        }
        return imgflag;
    }

    public final void a()
    {
        c.a();
    }

    public final boolean a(ImgFlag imgflag)
    {
        boolean flag = true;
        if(a(imgflag.c()) != null) goto _L2; else goto _L1
_L1:
        c.a(imgflag.c(), imgflag);
        boolean flag2;
        android.content.ContentValues contentvalues1;
        if(imgflag != null && imgflag.c() != null)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        imgflag.c((int)(System.currentTimeMillis() / 1000L));
        imgflag.a(-1);
        contentvalues1 = imgflag.a();
        if((int)b.a("img_flag", "username", contentvalues1) < 0)
            flag = false;
_L4:
        return flag;
_L2:
        c.c(imgflag.c());
        boolean flag1;
        android.content.ContentValues contentvalues;
        SqliteDB sqlitedb;
        String as[];
        if(imgflag != null && imgflag.c() != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        imgflag.c((int)(System.currentTimeMillis() / 1000L));
        imgflag.a(4 | imgflag.b());
        contentvalues = imgflag.a();
        sqlitedb = b;
        as = new String[flag];
        as[0] = (new StringBuilder()).append("").append(imgflag.c()).toString();
        if(sqlitedb.a("img_flag", contentvalues, "username=?", as) <= 0)
            flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a(List list)
    {
        if(list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L6:
        return flag;
_L2:
        int i;
        int j;
        i = b.b();
        j = 0;
_L4:
        if(j >= list.size())
            break; /* Loop/switch isn't completed */
        a((ImgFlag)list.get(j));
        j++;
        if(true) goto _L4; else goto _L3
_L3:
        flag = true;
_L7:
        b.b(i);
        b.a(i);
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        Log.a("MicroMsg.ImgFlagStorage", (new StringBuilder()).append("").append(exception.getMessage()).toString());
        flag = false;
          goto _L7
    }

    public final List b()
    {
        Object obj = null;
        Cursor cursor = b.a("select username from img_flag where username not in (select username from contact ) and username not like \"%@qqim\" and username not like \"%@bottle\";", ((String []) (obj)));
        int i = cursor.getCount();
        if(i == 0)
        {
            cursor.close();
        } else
        {
            obj = new ArrayList();
            cursor.moveToFirst();
            for(int j = 0; j < i; j++)
            {
                cursor.moveToPosition(j);
                ((List) (obj)).add(cursor.getString(0));
            }

            cursor.close();
        }
        return ((List) (obj));
    }

    public final boolean b(ImgFlag imgflag)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        android.content.ContentValues contentvalues;
        if(imgflag != null && imgflag.c() != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("imgFlag is NULL", flag1);
        if(imgflag.b() == -1)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue("ConvertFlag should FLAG_ALL", flag2);
        imgflag.c((int)(System.currentTimeMillis() / 1000L));
        contentvalues = imgflag.a();
        c.a(imgflag.c(), imgflag);
        if(b.b("img_flag", "username", contentvalues) <= 0L)
            flag = false;
        return flag;
    }

    public final boolean b(List list)
    {
        if(list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L6:
        return flag;
_L2:
        int i;
        int j;
        i = b.b();
        j = 0;
_L4:
        if(j >= list.size())
            break; /* Loop/switch isn't completed */
        b((ImgFlag)list.get(j));
        j++;
        if(true) goto _L4; else goto _L3
_L3:
        flag = true;
_L7:
        b.b(i);
        b.a(i);
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        Log.a("MicroMsg.ImgFlagStorage", (new StringBuilder()).append("").append(exception.getMessage()).toString());
        flag = false;
          goto _L7
    }

    public final void c(String s)
    {
        if(!Util.i(s))
        {
            c.c(s);
            SqliteDB sqlitedb = b;
            String as[] = new String[1];
            as[0] = (new StringBuilder()).append("").append(s).toString();
            sqlitedb.a("img_flag", "username=?", as);
        }
    }

    public static final String a[];
    private SqliteDB b;
    private final LRUMap c = new LRUMap(500);

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS img_flag ( username VARCHAR(40) PRIMARY KEY , imgflag int , lastupdatetime int , reserved1 text ,reserved2 text ,reserved3 int ,reserved4 int )";
        a = as;
    }
}

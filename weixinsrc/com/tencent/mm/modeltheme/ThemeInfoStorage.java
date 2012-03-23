// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modeltheme;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import b.a.e;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modeltheme:
//            ThemeInfo

public class ThemeInfoStorage extends MStorage
{

    public ThemeInfoStorage(SqliteDB sqlitedb, String s)
    {
        b = sqlitedb;
        c = s;
    }

    public static int a(int i, String s, byte abyte0[])
    {
        byte byte0;
        File file = new File(s);
        if(file.length() != (long)i)
        {
            Log.a("MicroMsg.ThemeInfoStorage", (new StringBuilder()).append("write apk file:").append(s).append(" file len:").append(file.length()).append(" off:").append(i).toString());
            byte0 = -1;
            break MISSING_BLOCK_LABEL_150;
        }
        RandomAccessFile randomaccessfile = new RandomAccessFile(s, "rw");
        randomaccessfile.seek(i);
        randomaccessfile.write(abyte0);
        randomaccessfile.close();
        byte0 = 0;
        break MISSING_BLOCK_LABEL_150;
        Exception exception;
        exception;
        Log.a("MicroMsg.ThemeInfoStorage", (new StringBuilder()).append("write apk file:").append(s).append(" e:").append(exception.getMessage()).toString());
        byte0 = -2;
        return byte0;
    }

    public static int a(String s)
    {
        (new File(s)).delete();
        int i = 0;
_L2:
        return i;
        Exception exception;
        exception;
        Log.a("MicroMsg.ThemeInfoStorage", (new StringBuilder()).append("resetTheme delete file failed file:").append(s).toString());
        i = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static int f(int i)
    {
        int j = 0;
        a(MMCore.f().Q().a(i));
        ThemeInfo themeinfo = new ThemeInfo();
        themeinfo.f(1006);
        themeinfo.e(j);
        themeinfo.a(24);
        if(!MMCore.f().Q().b(themeinfo))
            j = -2;
        return j;
    }

    public final Cursor a()
    {
        return b.a("select themeinfo.themeid,themeinfo.themever,themeinfo.themesize,themeinfo.offset,themeinfo.status,themeinfo.themename,themeinfo.packname,themeinfo.reserved1,themeinfo.reserved2,themeinfo.reserved3,themeinfo.reserved4 from themeinfo   order by status", null);
    }

    public final String a(int i)
    {
        return (new StringBuilder()).append(c).append(i).append(".apk").toString();
    }

    public final boolean a(ThemeInfo themeinfo)
    {
        boolean flag = false;
        if(themeinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        themeinfo.a(-1);
        ContentValues contentvalues = themeinfo.a();
        if((int)b.a("themeinfo", "themeid", contentvalues) != -1)
        {
            c();
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final String b(int i)
    {
        return (new StringBuilder()).append(c).append(i).append(".png").toString();
    }

    public final List b()
    {
        Object obj = null;
        Cursor cursor = b.a("select themeinfo.themeid,themeinfo.themever,themeinfo.themesize,themeinfo.offset,themeinfo.status,themeinfo.themename,themeinfo.packname,themeinfo.reserved1,themeinfo.reserved2,themeinfo.reserved3,themeinfo.reserved4 from themeinfo  ", ((String []) (obj)));
        int i = cursor.getCount();
        Log.d("MicroMsg.ThemeInfoStorage", (new StringBuilder()).append("getUnfinishInfo resCount:").append(i).toString());
        if(i == 0)
        {
            cursor.close();
        } else
        {
            obj = new ArrayList();
            for(int j = 0; j < i; j++)
            {
                cursor.moveToPosition(j);
                ThemeInfo themeinfo = new ThemeInfo();
                themeinfo.a(cursor);
                ((List) (obj)).add(themeinfo);
            }

            cursor.close();
        }
        return ((List) (obj));
    }

    public final boolean b(ThemeInfo themeinfo)
    {
        boolean flag;
        flag = true;
        boolean flag1;
        ContentValues contentvalues;
        SqliteDB sqlitedb;
        String as[];
        if(themeinfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        contentvalues = themeinfo.a();
        if(contentvalues.size() <= 0) goto _L2; else goto _L1
_L1:
        sqlitedb = b;
        as = new String[flag];
        as[0] = (new StringBuilder()).append("").append(themeinfo.c()).toString();
        if(sqlitedb.a("themeinfo", contentvalues, "themeid= ?", as) <= 0) goto _L2; else goto _L3
_L3:
        c();
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final Bitmap c(int i)
    {
        return b.a.e.a(b(i), 1F);
    }

    public final boolean d(int i)
    {
        return (new File(a(i))).exists();
    }

    public final ThemeInfo e(int i)
    {
        ThemeInfo themeinfo = null;
        String s = (new StringBuilder()).append("select themeinfo.themeid,themeinfo.themever,themeinfo.themesize,themeinfo.offset,themeinfo.status,themeinfo.themename,themeinfo.packname,themeinfo.reserved1,themeinfo.reserved2,themeinfo.reserved3,themeinfo.reserved4 from themeinfo   where themeinfo.themeid = \"").append(Util.a((new StringBuilder()).append("").append(i).toString())).append("\"").toString();
        Cursor cursor = b.a(s, themeinfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                themeinfo = new ThemeInfo();
                themeinfo.a(cursor);
            }
            cursor.close();
        }
        return themeinfo;
    }

    public static final String a[];
    private SqliteDB b;
    private String c;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS themeinfo ( themeid int  PRIMARY KEY , themever int  , themesize int  , offset int  , status int  , themename text  , packname text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        a = as;
    }
}

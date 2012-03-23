// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.io.File;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelpackage:
//            PackageInfo

public class PackageInfoStorage extends MStorage
{

    public PackageInfoStorage(SqliteDB sqlitedb, String s)
    {
        b = sqlitedb;
        c = s;
    }

    public static int a(Context context)
    {
        byte byte0;
        byte byte1;
        byte0 = 1;
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if(displaymetrics.heightPixels > displaymetrics.widthPixels)
            byte1 = byte0;
        else
            byte1 = 0;
        if(displaymetrics.density > 1F) goto _L2; else goto _L1
_L1:
        if(byte1 != 0)
            byte0 = 4;
        else
            byte0 = 2;
_L4:
        return byte0;
_L2:
        if(byte1 != 0)
            byte0 = 3;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String b(int i, int j)
    {
        return (new StringBuilder()).append(i).append("_").append(j).append("_thumb.jpg").toString();
    }

    public static String c(int i, int j)
    {
        j;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 33
    //                   1 39
    //                   2 62;
           goto _L1 _L2 _L3 _L4
_L1:
        String s = "";
_L6:
        return s;
_L2:
        s = "";
        continue; /* Loop/switch isn't completed */
_L3:
        s = (new StringBuilder()).append(i).append("_session_bg.zip").toString();
        continue; /* Loop/switch isn't completed */
_L4:
        s = (new StringBuilder()).append(i).append("_emoji_art.temp").toString();
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final PackageInfo a(int i, int j)
    {
        PackageInfo packageinfo = null;
        String s = (new StringBuilder()).append("select packageinfo2.localId,packageinfo2.id,packageinfo2.version,packageinfo2.name,packageinfo2.size,packageinfo2.packname,packageinfo2.status,packageinfo2.type,packageinfo2.reserved1,packageinfo2.reserved2,packageinfo2.reserved3,packageinfo2.reserved4 from packageinfo2   where packageinfo2.id = \"").append(Util.a((new StringBuilder()).append("").append(i).toString())).append("\"").append(" and ").append("packageinfo2").append(".").append("type").append(" = \"").append(Util.a((new StringBuilder()).append("").append(j).toString())).append("\"").toString();
        Cursor cursor = b.a(s, packageinfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                packageinfo = new PackageInfo();
                packageinfo.a(cursor);
            }
            cursor.close();
        }
        return packageinfo;
    }

    public final String a()
    {
        return c;
    }

    public final String a(String s, int i)
    {
        i;
        JVM INSTR tableswitch 1 4: default 32
    //                   1 46
    //                   2 46
    //                   3 36
    //                   4 36;
           goto _L1 _L2 _L2 _L3 _L3
_L1:
        String s1 = null;
_L5:
        return s1;
_L3:
        s1 = a(s, true);
        continue; /* Loop/switch isn't completed */
_L2:
        s1 = a(s, false);
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final String a(String s, boolean flag)
    {
        String s1;
        if(flag)
            s1 = (new StringBuilder()).append(c).append(s).append("_chatting_bg_vertical.jpg").toString();
        else
            s1 = (new StringBuilder()).append(c).append(s).append("_chatting_bg_horizontal.jpg").toString();
        return s1;
    }

    public final boolean a(int i)
    {
        String s = (new StringBuilder()).append("update packageinfo2 set status = 2 where status = 1 and type = ").append(i).append(";").toString();
        boolean flag = b.b(s);
        c();
        return flag;
    }

    public final boolean a(PackageInfo packageinfo)
    {
        boolean flag = false;
        if(packageinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        packageinfo.a(-1);
        ContentValues contentvalues = packageinfo.a();
        if((int)b.a("packageinfo2", "localId", contentvalues) != -1)
        {
            c();
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final Cursor b(int i)
    {
        String s = (new StringBuilder()).append("select packageinfo2.localId,packageinfo2.id,packageinfo2.version,packageinfo2.name,packageinfo2.size,packageinfo2.packname,packageinfo2.status,packageinfo2.type,packageinfo2.reserved1,packageinfo2.reserved2,packageinfo2.reserved3,packageinfo2.reserved4 from packageinfo2   where packageinfo2.type=").append(i).toString();
        return b.a(s, null);
    }

    public final boolean b(PackageInfo packageinfo)
    {
        boolean flag;
        flag = true;
        boolean flag1;
        ContentValues contentvalues;
        SqliteDB sqlitedb;
        String as[];
        if(packageinfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        contentvalues = packageinfo.a();
        if(contentvalues.size() <= 0) goto _L2; else goto _L1
_L1:
        sqlitedb = b;
        as = new String[2];
        as[0] = (new StringBuilder()).append(packageinfo.b()).append("").toString();
        as[flag] = (new StringBuilder()).append(packageinfo.e()).append("").toString();
        if(sqlitedb.a("packageinfo2", contentvalues, "id= ? and type =?", as) <= 0) goto _L2; else goto _L3
_L3:
        c();
_L5:
        return flag;
_L2:
        c();
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final int c(int i)
    {
        Cursor cursor = b(i);
        int j = cursor.getCount();
        cursor.close();
        return j;
    }

    public final boolean c(PackageInfo packageinfo)
    {
        a(packageinfo.e());
        packageinfo.f(1);
        return b(packageinfo);
    }

    public final String d(int i, int j)
    {
        j;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 33
    //                   1 39
    //                   2 122;
           goto _L1 _L2 _L3 _L4
_L1:
        String s = "";
_L6:
        return s;
_L2:
        s = "";
        continue; /* Loop/switch isn't completed */
_L3:
        s = (new StringBuilder()).append(c).append(i).append("_session_bg/").toString();
        try
        {
            File file = new File(s);
            if(!file.exists())
                file.mkdirs();
        }
        catch(Exception exception)
        {
            Log.a("MicroMsg.PackageInfoStorage", (new StringBuilder()).append("can not create dir, dir = ").append(s).toString());
        }
        continue; /* Loop/switch isn't completed */
_L4:
        s = "";
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final PackageInfo[] d(int i)
    {
        Object aobj[] = null;
        String s = (new StringBuilder()).append("select packageinfo2.localId,packageinfo2.id,packageinfo2.version,packageinfo2.name,packageinfo2.size,packageinfo2.packname,packageinfo2.status,packageinfo2.type,packageinfo2.reserved1,packageinfo2.reserved2,packageinfo2.reserved3,packageinfo2.reserved4 from packageinfo2   where packageinfo2.type=").append(i).toString();
        Cursor cursor = b.a(s, ((String []) (aobj)));
        int j = cursor.getCount();
        Log.d("MicroMsg.PackageInfoStorage", (new StringBuilder()).append("getInfoByType : count:").append(j).append(" type:").append(i).toString());
        if(j == 0)
        {
            cursor.close();
        } else
        {
            aobj = new PackageInfo[j];
            for(int k = 0; k < j; k++)
            {
                cursor.moveToPosition(k);
                PackageInfo packageinfo = new PackageInfo();
                packageinfo.a(cursor);
                aobj[k] = packageinfo;
            }

            cursor.close();
        }
        return ((PackageInfo []) (aobj));
    }

    public final String e(int i, int j)
    {
        j;
        JVM INSTR tableswitch 1 4: default 32
    //                   1 36
    //                   2 64
    //                   3 92
    //                   4 120;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = null;
_L7:
        return s;
_L2:
        s = (new StringBuilder()).append(d(i, 1)).append("horizontal_hdpi.jpg").toString();
        continue; /* Loop/switch isn't completed */
_L3:
        s = (new StringBuilder()).append(d(i, 1)).append("horizontal_ldpi.jpg").toString();
        continue; /* Loop/switch isn't completed */
_L4:
        s = (new StringBuilder()).append(d(i, 1)).append("vertical_hdpi.jpg").toString();
        continue; /* Loop/switch isn't completed */
_L5:
        s = (new StringBuilder()).append(d(i, 1)).append("vertical_ldpi.jpg").toString();
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final void f(int i, int j)
    {
        FileOperation.d((new StringBuilder()).append(c).append(c(i, j)).toString());
        PackageInfo packageinfo = a(i, j);
        if(packageinfo != null)
        {
            packageinfo.f(5);
            MMCore.f().T().b(packageinfo);
        }
    }

    public static final String a[];
    private SqliteDB b;
    private String c;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS packageinfo ( id int  PRIMARY KEY, version int  , name text  , size int  , packname text  , status int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        as[1] = "CREATE TABLE IF NOT EXISTS packageinfo2 ( localId text  PRIMARY KEY , id int  , version int  , name text  , size int  , packname text  , status int  , type int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        a = as;
    }
}

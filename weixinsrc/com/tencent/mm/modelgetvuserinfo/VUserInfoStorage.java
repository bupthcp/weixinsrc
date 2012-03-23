// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetvuserinfo;

import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.modelgetvuserinfo:
//            VUserInfo

public class VUserInfoStorage extends MStorage
{

    public VUserInfoStorage(SqliteDB sqlitedb, String s)
    {
        b = sqlitedb;
        c = s;
    }

    public final String a(int i, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(c).append("vuserpic_").append(i);
        String s;
        if(flag)
            s = "_HD";
        else
            s = "";
        return stringbuilder.append(s).append(".png").toString();
    }

    public final boolean a()
    {
        b.b("delete from vuserpicinfo");
        return true;
    }

    public final boolean a(VUserInfo vuserinfo)
    {
        boolean flag = false;
        if(vuserinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        vuserinfo.b();
        android.content.ContentValues contentvalues = vuserinfo.a();
        if(-1 != (int)b.a("vuserpicinfo", "id", contentvalues))
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String a[];
    private SqliteDB b;
    private String c;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS vuserpicinfo ( id int  PRIMARY KEY , desc text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        a = as;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.storage:
//            ConfigDBStorage, ConfigFileStorage, IConfigStorage

public class ConfigStorage extends MStorage
{

    public ConfigStorage(SqliteDB sqlitedb)
    {
        b = null;
        b = new ConfigDBStorage(sqlitedb);
    }

    public ConfigStorage(String s)
    {
        b = null;
        b = new ConfigFileStorage(s);
    }

    public final Object a(int i)
    {
        return b.a(i);
    }

    public final void a(int i, Object obj)
    {
        b.a(i, obj);
        b((new StringBuilder()).append("").append(i).toString());
    }

    public static final String a[];
    private IConfigStorage b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS userinfo ( id INTEGER PRIMARY KEY, type INT, value TEXT )";
        a = as;
    }
}

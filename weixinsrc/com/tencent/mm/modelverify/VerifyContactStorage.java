// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelverify;

import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

public class VerifyContactStorage extends MStorage
{

    public VerifyContactStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS verifycontact ( id INTEGER PRIMARY KEY, username varchar(40), nickname varchar(40), fullpy varchar(60), shortpy varchar(40), imgflag int, scene int, content text, status int, reserved1 int,reserved2 int,reserved3 text,reserved4 text)";
        as[1] = "CREATE UNIQUE INDEX IF NOT EXISTS verifyContactIndex  ON verifycontact ( username )";
        a = as;
    }
}

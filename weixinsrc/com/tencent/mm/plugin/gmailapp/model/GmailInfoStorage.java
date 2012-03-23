// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.gmailapp.model;

import com.tencent.mm.storagebase.MStorage;

public class GmailInfoStorage extends MStorage
{

    private static String a[];

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS gmailinfo ( gmailacct text  PRIMARY KEY , gmailswitch int  , gmailerrcode int  , isusing int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ";
        a = as;
    }
}

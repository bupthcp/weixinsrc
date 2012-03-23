// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.storagebase.MStorage;

public class AlbumLikeMembersStorage extends MStorage
{

    private static String a[];

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS albumLikeMember ( pcId TEXT, userName VARCHAR(40), likecount INT, likeMembers TEXT, commentcount INT, commentMembers INT, reserved1 TEXT  , reserved2 TEXT  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS serverAlbumNameIndex ON albumLikeMember ( pcId )";
        a = as;
    }
}

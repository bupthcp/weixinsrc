// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.database.Cursor;
import com.tencent.mm.protocal.protobuf.CommentInfo;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumComment

public class AlbumCommentStorage extends MStorage
{

    public static AlbumComment a(String s, CommentInfo commentinfo, CommentInfo commentinfo1)
    {
        AlbumComment albumcomment = new AlbumComment();
        albumcomment.d(commentinfo.d());
        albumcomment.d(commentinfo.e());
        albumcomment.a(s);
        albumcomment.g(0);
        albumcomment.e(commentinfo1.e());
        albumcomment.f(commentinfo1.i());
        albumcomment.c(commentinfo.f());
        albumcomment.b(commentinfo.c());
        albumcomment.c(commentinfo.g());
        albumcomment.e(commentinfo.i());
        albumcomment.b(commentinfo.h());
        return null;
    }

    public final Cursor a()
    {
        return a.a("select AlbumComment.albumCommentId,AlbumComment.pcID,AlbumComment.userName,AlbumComment.talker,AlbumComment.svrCmdId,AlbumComment.source,AlbumComment.commentType,AlbumComment.time,AlbumComment.content,AlbumComment.referTime,AlbumComment.referContent,AlbumComment.readState, from AlbumComment  ", null);
    }

    private static String b[];
    private SqliteDB a;

    static 
    {
        String as[] = new String[3];
        as[0] = "CREATE TABLE IF NOT EXISTS AlbumComment ( albumCommentId  INTEGER PRIMARY KEY, pcID TEXT, userName VARCHAR(40), talker VARCHAR(40),svrCmdId INT, source INT, commentType INT, time INT, content TEXT, referTime INT, referContent TEXT, readState INT, reserved1 INT  , reserved2 INT  , reserved3 INT  , reserved4 TEXT  , reserved5 TEXT  , reserved6 TEXT  , reserved7 TEXT  , reserved8 TEXT  ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS AlbumCommentPcIdIndex ON AlbumComment ( pcID )";
        as[2] = "CREATE INDEX IF NOT EXISTS serverAlbumCommentTimeIndex ON AlbumComment ( time )";
        b = as;
    }
}

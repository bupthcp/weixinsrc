.class public Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private a:Lcom/tencent/mm/storagebase/SqliteDB;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS AlbumComment ( albumCommentId  INTEGER PRIMARY KEY, pcID TEXT, userName VARCHAR(40), talker VARCHAR(40),svrCmdId INT, source INT, commentType INT, time INT, content TEXT, referTime INT, referContent TEXT, readState INT, reserved1 INT  , reserved2 INT  , reserved3 INT  , reserved4 TEXT  , reserved5 TEXT  , reserved6 TEXT  , reserved7 TEXT  , reserved8 TEXT  ) "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX IF NOT EXISTS AlbumCommentPcIdIndex ON AlbumComment ( pcID )"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE INDEX IF NOT EXISTS serverAlbumCommentTimeIndex ON AlbumComment ( time )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/CommentInfo;Lcom/tencent/mm/protocal/protobuf/CommentInfo;)Lcom/tencent/mm/plugin/album/model/AlbumComment;
    .locals 2

    new-instance v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->d(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->g(I)V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->f(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;->a:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select AlbumComment.albumCommentId,AlbumComment.pcID,AlbumComment.userName,AlbumComment.talker,AlbumComment.svrCmdId,AlbumComment.source,AlbumComment.commentType,AlbumComment.time,AlbumComment.content,AlbumComment.referTime,AlbumComment.referContent,AlbumComment.readState, from AlbumComment  "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/tencent/mm/plugin/album/model/AlbumLikeMembersStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS albumLikeMember ( pcId TEXT, userName VARCHAR(40), likecount INT, likeMembers TEXT, commentcount INT, commentMembers INT, reserved1 TEXT  , reserved2 TEXT  ) "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX IF NOT EXISTS serverAlbumNameIndex ON albumLikeMember ( pcId )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/plugin/album/model/AlbumLikeMembersStorage;->a:[Ljava/lang/String;

    return-void
.end method

.class final Lcom/tencent/mm/model/AccountStorage$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storagebase/SqliteDB$IFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mm/storage/ChatroomMembersStorage;->a:[Ljava/lang/String;

    return-object v0
.end method

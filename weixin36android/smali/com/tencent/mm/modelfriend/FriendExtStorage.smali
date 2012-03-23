.class public Lcom/tencent/mm/modelfriend/FriendExtStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storagebase/SqliteDB;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS friend_ext ( username text  PRIMARY KEY , sex int  , personalcard int  , province text  , city text  , signature text  , reserved1 text  , reserved2 text  , reserved3 text  , reserved4 text  , reserved5 int  , reserved6 int  , reserved7 int  , reserved8 int  ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/modelfriend/FriendExt;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FriendExt;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select friend_ext.username,friend_ext.sex,friend_ext.personalcard,friend_ext.province,friend_ext.city,friend_ext.signature from friend_ext   where friend_ext.username = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FriendExt;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "friend_ext"

    const-string v5, "username=?"

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "username"

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-lez v0, :cond_2

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FriendExtStorage;->c()V

    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FriendExt;->b()V

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FriendExt;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "friend_ext"

    const-string v5, "username"

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    long-to-int v0, v3

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)Z
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    new-instance v4, Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v0, "MicroMsg.FriendExtStorage"

    const-string v1, "batchSetFriendExt transaction"

    invoke-direct {v4, v0, v1}, Lcom/tencent/mm/platformtools/TimeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transation begin"

    invoke-virtual {v4, v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v5

    const/4 v1, 0x1

    move v3, v2

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/FriendExt;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelfriend/FriendExtStorage;->a(Lcom/tencent/mm/modelfriend/FriendExt;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/FriendExtStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    const-string v1, "transation end"

    invoke-virtual {v4, v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FriendExtStorage;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.FriendExtStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2
.end method

.class public Lcom/tencent/mm/modelshake/ShakeItemStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storagebase/SqliteDB;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS shakeitem1 ( shakeItemID INTEGER PRIMARY KEY, username TEXT, nickname TEXT, province TEXT, city TEXT, signature TEXT, distance TEXT, sex INT, imgstatus INT, hasHDImg INT, insertBatch INT, reserved1 INT, reserved2 INT, reserved3 TEXT, reserved4 TEXT )"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE UNIQUE INDEX IF NOT EXISTS shakeItemUsernameIndex ON shakeitem1 ( username )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select shakeitem1.shakeItemID,shakeitem1.username,shakeitem1.nickname,shakeitem1.province,shakeitem1.city,shakeitem1.signature,shakeitem1.distance,shakeitem1.sex,shakeitem1.imgstatus,shakeitem1.hasHDImg,shakeitem1.insertBatch,shakeitem1.reserved1,shakeitem1.reserved2,shakeitem1.reserved3,shakeitem1.reserved4 from shakeitem1   order by  case when insertBatch = ? then 0 else 1 end , reserved2 desc, shakeItemID desc "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/mm/modelshake/ShakeItem;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-direct {v0}, Lcom/tencent/mm/modelshake/ShakeItem;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelshake/ShakeItem;->g(I)V

    iget-object v2, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "shakeitem1"

    const-string v4, "username = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelshake/ShakeItem;->a(Landroid/database/Cursor;)V

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    const-string v0, "MicroMsg.ShakeItemStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delOldRecord count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM shakeitem1 WHERE shakeItemID NOT IN ( SELECT shakeItemID FROM shakeitem1 ORDER BY shakeItemID DESC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x64

    if-le v0, p1, :cond_1

    rsub-int/lit8 v0, p1, 0x64

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.ShakeItemStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delOldRecord success count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->c()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/modelshake/ShakeItem;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "shakeitem1"

    const-string v5, "username=?"

    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->c()V

    const-string v4, "MicroMsg.ShakeItemStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delByusername:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " result:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/tencent/mm/modelshake/ShakeItem;->g(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelshake/ShakeItem;->s()Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "shakeitem1"

    const-string v5, "shakeItemID"

    invoke-virtual {v3, v4, v5, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->c()V

    const-string v3, "MicroMsg.ShakeItemStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final b()Landroid/database/Cursor;
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select shakeitem1.shakeItemID,shakeitem1.username,shakeitem1.nickname,shakeitem1.province,shakeitem1.city,shakeitem1.signature,shakeitem1.distance,shakeitem1.sex,shakeitem1.imgstatus,shakeitem1.hasHDImg,shakeitem1.insertBatch,shakeitem1.reserved1,shakeitem1.reserved2,shakeitem1.reserved3,shakeitem1.reserved4 from shakeitem1   where insertBatch != ?  order by reserved2 desc, shakeItemID desc "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-direct {v0}, Lcom/tencent/mm/modelshake/ShakeItem;-><init>()V

    invoke-virtual {v0, v7}, Lcom/tencent/mm/modelshake/ShakeItem;->f(I)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelshake/ShakeItem;->g(I)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "shakeitem1"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->s()Landroid/content/ContentValues;

    move-result-object v0

    const-string v4, "username=? and insertBatch=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v6, "2"

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->c()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "delete from shakeitem1"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->c()V

    return v0
.end method

.method public final e()V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "MicroMsg.ShakeItemStorage"

    const-string v1, "setAllOld"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-direct {v0}, Lcom/tencent/mm/modelshake/ShakeItem;-><init>()V

    invoke-virtual {v0, v7}, Lcom/tencent/mm/modelshake/ShakeItem;->f(I)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelshake/ShakeItem;->g(I)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "shakeitem1"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->s()Landroid/content/ContentValues;

    move-result-object v0

    const-string v4, "insertBatch!=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->c()V

    :cond_0
    return-void
.end method

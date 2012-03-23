.class public Lcom/tencent/mm/storage/RoleStorage;
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

    const-string v2, "CREATE TABLE IF NOT EXISTS role_info ( id TEXT PRIMARY KEY, name TEXT, status INT, text_reserved1 TEXT, text_reserved2 TEXT, text_reserved3 TEXT, text_reserved4 TEXT, int_reserved1 INT, int_reserved2 INT, int_reserved3 INT, int_reserved4 INT )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/RoleStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    iput-object p1, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method

.method private b(Lcom/tencent/mm/storage/RoleInfo;)V
    .locals 4

    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/RoleInfo;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/RoleInfo;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "role_info"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/RoleStorage;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;
    .locals 9

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
    new-instance v0, Lcom/tencent/mm/storage/RoleInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/RoleInfo;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "role_info"

    const-string v4, "name LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/RoleInfo;->a(Landroid/database/Cursor;)V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "role_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int_reserved1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/mm/storage/RoleInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/RoleInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/RoleInfo;->a(Landroid/database/Cursor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/storage/RoleInfo;)V
    .locals 7

    invoke-virtual {p1}, Lcom/tencent/mm/storage/RoleInfo;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "role_info"

    const-string v3, "name like ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "MicroMsg.RoleStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update role info, name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/RoleStorage;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/RoleStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/RoleInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/tencent/mm/storage/RoleInfo;-><init>(Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/RoleStorage;->b(Lcom/tencent/mm/storage/RoleInfo;)V

    const-string v0, "MicroMsg.RoleStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert new role, user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZI)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/RoleStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/RoleInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/mm/storage/RoleInfo;-><init>(Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/RoleStorage;->b(Lcom/tencent/mm/storage/RoleInfo;)V

    const-string v0, "MicroMsg.RoleStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert new role, user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/RoleInfo;->a(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleInfo;->a(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/RoleStorage;->a(Lcom/tencent/mm/storage/RoleInfo;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/RoleStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/RoleInfo;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/tencent/mm/storage/RoleInfo;-><init>(Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/RoleStorage;->b(Lcom/tencent/mm/storage/RoleInfo;)V

    const-string v0, "MicroMsg.RoleStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert new role, user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/RoleInfo;->a(Z)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/storage/RoleInfo;->b(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleInfo;->a(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/RoleStorage;->a(Lcom/tencent/mm/storage/RoleInfo;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;
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
    new-instance v0, Lcom/tencent/mm/storage/RoleInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/RoleInfo;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "role_info"

    const-string v4, "name= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/RoleInfo;->a(Landroid/database/Cursor;)V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/tencent/mm/storage/RoleInfo$Parser;

    invoke-direct {v0, p1}, Lcom/tencent/mm/storage/RoleInfo$Parser;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/storage/RoleStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "role_info"

    const-string v4, "name=?"

    new-array v1, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v3, v4, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "MicroMsg.RoleStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete name name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/RoleStorage;->c()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

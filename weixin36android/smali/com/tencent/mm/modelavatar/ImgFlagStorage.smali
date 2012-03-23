.class public Lcom/tencent/mm/modelavatar/ImgFlagStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storagebase/SqliteDB;

.field private final c:Lcom/tencent/mm/algorithm/LRUMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS img_flag ( username VARCHAR(40) PRIMARY KEY , imgflag int , lastupdatetime int , reserved1 text ,reserved2 text ,reserved3 int ,reserved4 int )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/ImgFlag;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select img_flag.username,img_flag.imgflag,img_flag.lastupdatetime,img_flag.reserved1,img_flag.reserved2,img_flag.reserved3,img_flag.reserved4 from img_flag where img_flag.username=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v3, v2, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Landroid/database/Cursor;)V

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/LRUMap;->a()V

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelavatar/ImgFlag;)Z
    .locals 9

    const-wide/16 v5, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/ImgFlag;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->c(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "img_flag"

    const-string v5, "username"

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    long-to-int v0, v3

    if-ltz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/algorithm/LRUMap;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->b()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "img_flag"

    const-string v5, "username=?"

    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v4

    move v3, v2

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Lcom/tencent/mm/modelavatar/ImgFlag;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.ImgFlagStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final b()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v1, "select username from img_flag where username not in (select username from contact ) and username not like \"%@qqim\" and username not like \"%@bottle\";"

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v3, v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/modelavatar/ImgFlag;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "imgFlag is NULL"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v3, "ConvertFlag should FLAG_ALL"

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->b()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "img_flag"

    const-string v5, "username"

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final b(Ljava/util/List;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v4

    move v3, v2

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b(Lcom/tencent/mm/modelavatar/ImgFlag;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.ImgFlagStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final c(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/algorithm/LRUMap;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "img_flag"

    const-string v2, "username=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Lcom/tencent/mm/modelfriend/AddrUploadStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/tencent/mm/storagebase/SqliteDB;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS addr_upload ( id int  PRIMARY KEY , md5 text  , peopleid text  , uploadtime long  , realname text  , realnamepyinitial text  , realnamequanpin text  , username text  , nickname text  , nicknamepyinitial text  , nicknamequanpin text  , type int  , moblie text  , email text  , status int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX IF NOT EXISTS upload_time_index ON addr_upload ( uploadtime ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "addr_upload"

    invoke-virtual {v0, v1, v2, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "MicroMsg.AddrUploadStorage"

    const-string v2, "delete addr_upload"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->c()V

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/AddrUpload;)I
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "addr_upload"

    const-string v4, "id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->c()V

    :cond_1
    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload where addr_upload.username=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "MicroMsg.AddrUploadStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get addrUpload :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 13

    const/4 v1, 0x1

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
    new-instance v3, Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v0, "MicroMsg.AddrUploadStorage"

    const-string v4, "delete transaction"

    invoke-direct {v3, v0, v4}, Lcom/tencent/mm/platformtools/TimeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "begin"

    invoke-virtual {v3, v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v7, "addr_upload"

    const-string v8, "id =?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const-string v7, "MicroMsg.AddrUploadStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete addr_upload md5 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", res:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    const-string v1, "end"

    invoke-virtual {v3, v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final b()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select addr_upload.md5 from addr_upload where addr_upload.uploadtime = 0 AND addr_upload.type = 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public final b(Ljava/util/List;)Z
    .locals 13

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v4, Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v0, "MicroMsg.AddrUploadStorage"

    const-string v1, "transaction"

    invoke-direct {v4, v0, v1}, Lcom/tencent/mm/platformtools/TimeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transation begin"

    invoke-virtual {v4, v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v5

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/AddrUpload;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload  where addr_upload.id = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v6, "addr_upload"

    const-string v7, "id"

    invoke-virtual {v2, v6, v7, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    long-to-int v0, v6

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.AddrUploadStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    const-string v1, "transation end"

    invoke-virtual {v4, v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->a()Landroid/content/ContentValues;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v7, "addr_upload"

    const-string v8, "id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :cond_6
    if-eqz v0, :cond_2

    if-gez v0, :cond_2

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload where addr_upload.id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "MicroMsg.AddrUploadStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get addrUpload :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)Z
    .locals 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v0, "MicroMsg.AddrUploadStorage"

    const-string v4, "set uploaded transaction"

    invoke-direct {v3, v0, v4}, Lcom/tencent/mm/platformtools/TimeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transation begin"

    invoke-virtual {v3, v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    new-instance v6, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v6}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(J)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelfriend/AddrUpload;->a()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v8, "addr_upload"

    const-string v9, "id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    const-string v6, "MicroMsg.AddrUploadStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local contact uploaded : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.AddrUploadStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    const-string v1, "transation end"

    invoke-virtual {v3, v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->c()V

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final d()Landroid/database/Cursor;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload  where type = 0 and moblie <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " order by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "realnamepyinitial"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload  where type = 0 order by status , realnamepyinitial"

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status from addr_upload where addr_upload.id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "MicroMsg.AddrUploadStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get addrUpload :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Landroid/database/Cursor;)V

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final e()Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select addr_upload.moblie , addr_upload.md5 from addr_upload where addr_upload.type = 0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public final f()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select addr_upload.moblie from addr_upload where addr_upload.uploadtime = 0 AND addr_upload.type = 0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/o;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public final g()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select  *  from addr_upload where ( addr_upload.username IS NOT NULL AND addr_upload.username!=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroMsg.AddrUploadStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Landroid/database/Cursor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

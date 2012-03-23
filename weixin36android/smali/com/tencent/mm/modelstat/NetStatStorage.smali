.class public Lcom/tencent/mm/modelstat/NetStatStorage;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storagebase/SqliteDB;

.field private c:Ljava/lang/String;

.field private final e:Lcom/tencent/mm/modelstat/NetStatInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS netstat ( id INTEGER PRIMARY KEY, peroid INT, textCountIn INT, textBytesIn INT, imageCountIn INT, imageBytesIn INT, voiceCountIn INT, voiceBytesIn INT, videoCountIn INT, videoBytesIn INT, mobileBytesIn INT, wifiBytesIn INT, sysMobileBytesIn INT, sysWifiBytesIn INT, textCountOut INT, textBytesOut INT, imageCountOut INT, imageBytesOut INT, voiceCountOut INT, voiceBytesOut INT, videoCountOut INT, videoBytesOut INT, mobileBytesOut INT, wifiBytesOut INT, sysMobileBytesOut INT, sysWifiBytesOut INT, reserved1 INT, reserved2 INT, reserved3 TEXT )"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX IF NOT EXISTS  statInfoIndex ON netstat ( peroid ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelstat/NetStatStorage;->a:[Ljava/lang/String;

    const-string v0, "NetStat.tmp"

    sput-object v0, Lcom/tencent/mm/modelstat/NetStatStorage;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    iput-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->c:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->b()Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    iput-object p1, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    iput-object p2, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->c:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/tencent/mm/modelstat/NetStatInfo;)J
    .locals 4

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->d()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "netstat"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->e()Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->c(Lcom/tencent/mm/modelstat/NetStatInfo;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->d()V

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->c(Lcom/tencent/mm/modelstat/NetStatInfo;)V

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->b()Lcom/tencent/mm/modelstat/NetStatInfo;

    :cond_1
    return-void
.end method

.method private c(Lcom/tencent/mm/modelstat/NetStatInfo;)V
    .locals 6

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->b(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->d(I)Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)Z

    const-string v1, "MicroMsg.NetStatStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->d()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "netstat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peroid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    const-string v0, "MicroMsg.NetStatStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert append "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelstat/NetStatStorage;->b(Lcom/tencent/mm/modelstat/NetStatInfo;)J

    goto :goto_0
.end method

.method private d(Lcom/tencent/mm/modelstat/NetStatInfo;)I
    .locals 7

    const/16 v6, 0x19

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->b(I)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->e()Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-direct {p0, v1}, Lcom/tencent/mm/modelstat/NetStatStorage;->c(Lcom/tencent/mm/modelstat/NetStatInfo;)V

    :cond_1
    :goto_0
    if-nez p1, :cond_4

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    array-length v1, v2

    if-eq v1, v6, :cond_5

    :cond_2
    const/4 v0, -0x1

    :goto_2
    return v0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)Z

    goto :goto_0

    :cond_4
    new-array v1, v6, [I

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->e()I

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->f()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->g()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->h()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->i()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->j()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->k()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->l()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->m()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x9

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0xb

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->p()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0xc

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->q()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0xd

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->r()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0xe

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->s()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0xf

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->t()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x10

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->u()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x11

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->v()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x12

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->w()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x13

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->x()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->y()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x15

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x16

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x17

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->B()I

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x18

    invoke-virtual {p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->C()I

    move-result v3

    aput v3, v1, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_5
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/tencent/mm/modelstat/NetStatStorage;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    move v1, v0

    :goto_3
    if-ge v1, v6, :cond_6

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 v0, -0x2

    goto/16 :goto_2
.end method

.method private d(I)Lcom/tencent/mm/modelstat/NetStatInfo;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "netstat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peroid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelstat/NetStatStorage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    return-void
.end method

.method private e()Lcom/tencent/mm/modelstat/NetStatInfo;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v7, 0x19

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/mm/modelstat/NetStatStorage;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v3, 0x19

    new-array v3, v3, [I

    :goto_1
    if-ge v1, v7, :cond_2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    array-length v1, v3

    if-ne v1, v7, :cond_0

    new-instance v1, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->b(I)V

    const/4 v2, 0x1

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->c(I)V

    const/4 v2, 0x2

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->d(I)V

    const/4 v2, 0x3

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->e(I)V

    const/4 v2, 0x4

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->f(I)V

    const/4 v2, 0x5

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->g(I)V

    const/4 v2, 0x6

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->h(I)V

    const/4 v2, 0x7

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->i(I)V

    const/16 v2, 0x8

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->j(I)V

    const/16 v2, 0x9

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->k(I)V

    const/16 v2, 0xa

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->l(I)V

    const/16 v2, 0xb

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->m(I)V

    const/16 v2, 0xc

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->n(I)V

    const/16 v2, 0xd

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->o(I)V

    const/16 v2, 0xe

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->p(I)V

    const/16 v2, 0xf

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->q(I)V

    const/16 v2, 0x10

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->r(I)V

    const/16 v2, 0x11

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->s(I)V

    const/16 v2, 0x12

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->t(I)V

    const/16 v2, 0x13

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->u(I)V

    const/16 v2, 0x14

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->v(I)V

    const/16 v2, 0x15

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->w(I)V

    const/16 v2, 0x16

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->x(I)V

    const/16 v2, 0x17

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->y(I)V

    const/16 v2, 0x18

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelstat/NetStatInfo;->z(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/modelstat/NetStatInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->d(Lcom/tencent/mm/modelstat/NetStatInfo;)I

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->e:Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->b()Lcom/tencent/mm/modelstat/NetStatInfo;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)Lcom/tencent/mm/modelstat/NetStatInfo;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->c()V

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelstat/NetStatStorage;->d(I)Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->f()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->a(I)Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->b(I)V

    invoke-direct {p0, v1}, Lcom/tencent/mm/modelstat/NetStatStorage;->b(Lcom/tencent/mm/modelstat/NetStatInfo;)J

    goto :goto_0
.end method

.method public final b()J
    .locals 6

    const-wide/32 v4, 0x5265c00

    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->c()V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->f()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const-string v1, "SELECT peroid FROM netstat  WHERE peroid <  ( SELECT MAX ( peroid ) FROM netstat)"

    iget-object v2, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "peroid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    int-to-long v0, v0

    mul-long/2addr v0, v4

    return-wide v0
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->d()V

    iget-object v0, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "netstat"

    invoke-virtual {v0, v1, v2, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->b(I)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->b(Lcom/tencent/mm/modelstat/NetStatInfo;)J

    return-void
.end method

.method public final c(I)Lcom/tencent/mm/modelstat/NetStatInfo;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelstat/NetStatStorage;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT MAX( id), MAX( peroid), SUM( textCountIn), SUM( textBytesIn), SUM( imageCountIn), SUM( imageBytesIn), SUM( voiceCountIn), SUM( voiceBytesIn), SUM( videoCountIn), SUM( videoBytesIn), SUM( mobileBytesIn), SUM( wifiBytesIn), SUM( sysMobileBytesIn), SUM( sysWifiBytesIn), SUM( textCountOut), SUM( textBytesOut), SUM( imageCountOut), SUM( imageBytesOut), SUM( voiceCountOut), SUM( voiceBytesOut), SUM( videoCountOut), SUM( videoBytesOut), SUM( mobileBytesOut), SUM( wifiBytesOut), SUM( sysMobileBytesOut), SUM( sysWifiBytesOut ) FROM netstat WHERE peroid >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelstat/NetStatStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

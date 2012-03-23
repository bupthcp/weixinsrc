.class Lcom/tencent/mm/model/AccountStorage$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/model/AccountStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/AccountStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const v5, 0x10301

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v6, v7

    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->b(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/ErrLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->b(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/ErrLog;->c()Lcom/tencent/mm/model/ErrLog$Error;

    move-result-object v9

    const-string v0, "MicroMsg.AccountStorage"

    invoke-virtual {v9}, Lcom/tencent/mm/model/ErrLog$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->b(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/ErrLog;->b()I

    move-result v0

    if-lt v12, v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->s()Lcom/tencent/mm/model/CrashUpload;

    move-result-object v1

    const-string v0, "MicroMsg.CrashUpload"

    const-string v2, "catch crashLog"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/tencent/mm/model/ErrLog$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    new-instance v5, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v5}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/tencent/mm/model/ErrLog$Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/Zlib;->a([B)[B

    move-result-object v0

    const-string v3, "weixin#$()%d%d"

    new-array v10, v12, [Ljava/lang/Object;

    sget v11, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v5, v0, v10}, Lcom/tencent/mm/algorithm/DES;->a(Lcom/tencent/mm/pointers/PByteArray;[B[B)I

    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/mm/model/CrashUpload$1;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/model/CrashUpload$1;-><init>(Lcom/tencent/mm/model/CrashUpload;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pointers/PByteArray;)V

    const-string v1, "crashupload"

    invoke-direct {v10, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage$1;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->c(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpReport;

    iget-object v2, v9, Lcom/tencent/mm/model/ErrLog$Error;->a:Ljava/lang/String;

    iget-wide v10, v9, Lcom/tencent/mm/model/ErrLog$Error;->b:J

    iget-object v3, v9, Lcom/tencent/mm/model/ErrLog$Error;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v10, v11, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    goto/16 :goto_1

    :cond_2
    move v6, v8

    goto/16 :goto_0

    :cond_3
    return-void
.end method

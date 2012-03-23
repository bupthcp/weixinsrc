.class final Lcom/tencent/mm/modelmulti/SyncBuilder;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;)Lcom/tencent/mm/protocal/MMSync$CmdItem;
    .locals 8

    new-instance v1, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;

    new-instance v4, Lcom/tencent/mm/protocal/MMSync$CmdKvStat$CmdKvStatItem;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/MMSync$CmdKvStat$CmdKvStatItem;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/protocal/MMSync$CmdKvStat$CmdKvStatItem;->a(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/protocal/MMSync$CmdKvStat$CmdKvStatItem;->a(Ljava/lang/String;)V

    const-string v5, "MicroMsg.SyncBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add kv stat: key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->b(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->a(Ljava/util/List;)V

    return-object v1
.end method

.method public static a()V
    .locals 9

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0x400

    :goto_0
    invoke-virtual {v1}, Lcom/tencent/mm/model/ErrLog;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/model/ErrLog;->c()Lcom/tencent/mm/model/ErrLog$Error;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/ErrLog$Error;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MicroMsg.SyncBuilder"

    invoke-static {v4, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/storage/OpLogStorage$OpReport;

    iget-object v6, v2, Lcom/tencent/mm/model/ErrLog$Error;->a:Ljava/lang/String;

    iget-wide v7, v2, Lcom/tencent/mm/model/ErrLog$Error;->b:J

    iget-object v2, v2, Lcom/tencent/mm/model/ErrLog$Error;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/tencent/mm/storage/OpLogStorage$OpReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

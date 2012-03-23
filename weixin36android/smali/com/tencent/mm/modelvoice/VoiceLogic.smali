.class public final Lcom/tencent/mm/modelvoice/VoiceLogic;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/modelvoice/VoiceInfo;[BI)I
    .locals 12

    const/16 v10, 0x63

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    if-nez p0, :cond_1

    const-string v0, "MicroMsg.VoiceLogic"

    const-string v1, "setRecvSync voice is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(I)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v0

    if-eq v0, v10, :cond_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v6

    if-ne v0, v6, :cond_3

    if-eqz v5, :cond_0

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "checktime :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    array-length v0, p1

    if-le v0, v2, :cond_10

    if-eqz v5, :cond_4

    const-string v0, "MicroMsg.VoiceLogic"

    const-string v6, "Sync Voice Buf , But  VoiceInfo is not new !"

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, p1, v7, v1}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a([BII)I

    move-result v6

    if-gez v6, :cond_6

    const-string v7, "MicroMsg.VoiceLogic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Write Failed File:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " newOffset:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    const-string v6, "MicroMsg.VoiceLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checktime :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v6

    or-int/lit16 v6, v6, 0x100

    invoke-virtual {p0, v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    if-eqz v0, :cond_8

    invoke-virtual {p0, v10}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v6

    or-int/lit8 v6, v6, 0x40

    invoke-virtual {p0, v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    if-nez v5, :cond_c

    new-instance v6, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v6}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->p()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    :goto_4
    invoke-static {v6}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v6

    const-string v8, "MicroMsg.VoiceLogic"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "checktime :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(I)V

    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    const-string v3, "MicroMsg.VoiceLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert fileName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stat:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " net:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert Error fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " net:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    array-length v7, p1

    if-eq v7, v6, :cond_7

    const-string v7, "MicroMsg.VoiceLogic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Write File:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " fileOff:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " bufLen:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    :cond_7
    const-string v6, "MicroMsg.VoiceLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeVoiceFile file:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] + buf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->c(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    goto/16 :goto_3

    :cond_9
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v3, "MicroMsg.VoiceLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "checktime :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_e

    move v1, v2

    goto/16 :goto_0

    :cond_c
    const-string v3, "MicroMsg.VoiceLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync Update file:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " stat:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v3

    if-nez v3, :cond_d

    const/16 v1, -0x2c

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move v1, v2

    goto/16 :goto_0

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->m()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    if-ne v0, v2, :cond_f

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->m()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;I)I

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync TotalLen not Change (send endflag but TotoalLen == FileLen) :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    goto/16 :goto_2
.end method

.method public static a(I)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/VoiceLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/tencent/mm/platformtools/FilesCopy;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v0

    invoke-static {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->r()I

    move-result v2

    const/16 v3, 0x50

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->r()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i(I)V

    const/16 v0, 0x2000

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x61

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StopRecord fileName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v2

    if-eq v2, v6, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    :goto_1
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    invoke-virtual {v1, p1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c(I)V

    const/16 v2, 0xd60

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {v2, p0}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 6

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    const/16 v0, 0x110

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    if-lt p1, v2, :cond_2

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    const/16 v0, 0x63

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "END!!! updateRecv  file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newsize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->c(Ljava/lang/String;)V

    :cond_2
    const-string v2, "MicroMsg.VoiceLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRecv file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newsize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x3

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/VoiceStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z
    .locals 5

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set msg content :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(ILcom/tencent/mm/storage/MsgInfo;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/VoiceStorage;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelvoice/VoiceInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(J)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel null download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SvrlId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;I)I

    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel null record : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel record : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LocalId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->b(J)I

    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/VoiceStorage;->e(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set error failed file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x62

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    const/16 v0, 0x140

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v0

    const-string v2, "MicroMsg.VoiceLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setError file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old stat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v1, "MicroMsg.VoiceLogic"

    const-string v2, "setError failed msg null"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "MicroMsg.VoiceLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setError failed msg id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->a(J)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const/16 v1, 0x108

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    goto/16 :goto_0
.end method

.method public static j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/VoiceStorage;->f(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v0

    return-object v0
.end method

.class Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x3

    const/4 v9, -0x1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v1, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get info Failed file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v2

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;I)I

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->b(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v1

    const-string v2, "doScene failed"

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-interface {v1, v10, v9, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v3

    if-eq v10, v3, :cond_5

    const/16 v3, 0x8

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->q()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1e

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    const-string v1, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ModifyTime in Read file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v2

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;I)I

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->b(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v1

    const-string v2, "doScene failed"

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-interface {v1, v10, v9, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v5}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->c(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimerExpired :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v5}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " but last send time:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v5}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->c(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v4

    const/16 v5, 0x1770

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(II)Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;

    move-result-object v3

    const-string v4, "MicroMsg.NetSceneUploadVoice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pusher doscene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v6}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " readByte:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v3, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_5

    move v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/network/IDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->b(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v1

    if-ne v1, v9, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v2

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;I)I

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->b(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v1

    const-string v2, "doScene failed"

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;->a:Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-interface {v1, v10, v9, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

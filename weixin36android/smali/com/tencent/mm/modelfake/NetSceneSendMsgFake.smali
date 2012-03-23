.class public Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/storage/MsgInfo;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v1, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake$1;-><init>(Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;)V

    iput-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {p1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->G(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneSendMsgFake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new msg inserted to db , local id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 4

    iput-object p2, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v0, "MicroMsg.NetSceneSendMsgFake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send local msg, msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/16 v0, 0x3e7

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "MicroMsg.NetSceneSendMsgFake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recv local msg, msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v6, v6, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

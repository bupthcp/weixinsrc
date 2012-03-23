.class public Lcom/tencent/mm/modelsimple/NetSceneSendCard;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSendCard$MMReqRespSendCard;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneSendCard$MMReqRespSendCard;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSendCard$Req;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->b(Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneSendCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSendCard$Req;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "empty sendcard"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSendCard$MMReqRespSendCard;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneSendCard$MMReqRespSendCard;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSendCard$Req;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->b(Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneSendCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v2, 0x10401

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->b(I)V

    const-string v1, "empty sendcard"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSendCard$MMReqRespSendCard;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneSendCard$MMReqRespSendCard;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSendCard$Req;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->b(Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneSendCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v4, 0x10401

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->b(I)V

    if-eqz p2, :cond_0

    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v4, v1, 0x0

    if-eqz p3, :cond_1

    const/4 v1, 0x4

    :goto_1
    or-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x8

    const-string v2, "empty sendcard"

    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSendCard$Req;->a(I)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMBase$Resp;->H()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.class public Lcom/tencent/mm/modelshake/NetSceneShakeReport;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;

.field private d:[B

.field private e:I


# direct methods
.method public constructor <init>(FFIILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x100a

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelshake/NetSceneShakeReport$MMReqRespShakeReport;

    invoke-direct {v0}, Lcom/tencent/mm/modelshake/NetSceneShakeReport$MMReqRespShakeReport;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeReport$Req;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->b(I)V

    invoke-virtual {v0, p5}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->e(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x100b

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->d(I)V

    add-int/lit8 v0, v1, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 2

    const-string v0, "MicroMsg.NetSceneShakeReport"

    const-string v1, "doScene"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 4

    const-string v0, "MicroMsg.NetSceneShakeReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMShakeReport$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->d()I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->e:I

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->e()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->e()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMShakeReport$Req;->h()I

    move-result v1

    if-eq v2, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e_()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->f()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/modelshake/NetSceneShakeImg;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->f()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;-><init>(II)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->d:[B

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->d:[B

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->e:I

    return v0
.end method

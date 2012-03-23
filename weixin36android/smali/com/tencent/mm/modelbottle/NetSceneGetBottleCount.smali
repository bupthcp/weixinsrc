.class public Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;

    invoke-direct {v0}, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetBottleCount$Req;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetBottleCount$Req;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetBottleCount$Req;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->e()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/modelbottle/BottleLogic;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->d()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(I)V

    :cond_0
    :goto_0
    const-string v1, "MicroMsg.NetSceneGetBottleCount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pickCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " throwCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->b()I

    move-result v0

    invoke-interface {v1, v4, v0, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->b()I

    move-result v1

    const/16 v2, -0x7d2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;->b()I

    move-result v1

    const/16 v2, -0x38

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-static {v4}, Lcom/tencent/mm/modelbottle/BottleLogic;->b(I)V

    invoke-static {v4}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

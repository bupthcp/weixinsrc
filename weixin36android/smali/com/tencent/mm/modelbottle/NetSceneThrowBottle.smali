.class public Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:I

.field private e:Lcom/tencent/mm/modelvoice/AmrFileOperator;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    iput v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle$MMReqRespThrowBottle;

    invoke-direct {v0}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle$MMReqRespThrowBottle;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b(I)V

    iget v1, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->c(I)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->e(I)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    iput v1, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle$MMReqRespThrowBottle;

    invoke-direct {v0}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle$MMReqRespThrowBottle;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->e(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b(I)V

    iget v1, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a(I)V

    :cond_0
    return-void
.end method

.method private a(I)I
    .locals 8

    const/4 v3, 0x0

    new-instance v5, Lcom/tencent/mm/modelbottle/BottleInfo;

    invoke-direct {v5}, Lcom/tencent/mm/modelbottle/BottleInfo;-><init>()V

    invoke-virtual {v5, p1}, Lcom/tencent/mm/modelbottle/BottleInfo;->c(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v1}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->b(I)V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->h()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->d(I)V

    :goto_0
    const-string v0, ""

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/modelbottle/BottleInfo;->a(J)V

    move v2, v3

    :goto_2
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->H()Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/modelbottle/BottleInfoStorage;->a(Lcom/tencent/mm/modelbottle/BottleInfo;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    return v3
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 7

    const/4 v3, 0x3

    const/4 v1, -0x1

    const/4 v6, 0x0

    iput-object p2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a(I)V

    invoke-virtual {v0, v6}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b(I)V

    iget-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->e:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    if-nez v2, :cond_1

    new-instance v2, Lcom/tencent/mm/modelvoice/AmrFileOperator;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelvoice/AmrFileOperator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->e:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    iput v6, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d(I)V

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->e:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    iget v3, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    const/16 v4, 0x1770

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(II)Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene Read Voice file Failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->e:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a()V

    move v0, v1

    goto :goto_1

    :cond_2
    const-string v3, "MicroMsg.NetSceneThrowBottle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doScene READ file["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] read ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " readlen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " line:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    if-ltz v3, :cond_3

    iget v3, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "MicroMsg.NetSceneThrowBottle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Err doScene READ file["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] read ret:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " readlen:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " newOff:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " netOff:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->e:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a()V

    move v0, v1

    goto/16 :goto_1

    :cond_4
    iget v1, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    new-array v1, v1, [B

    iget-object v3, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->a:[B

    iget v2, v2, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-static {v3, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a([B)V

    iget v1, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->c(I)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "MicroMsg.NetSceneThrowBottle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScene Error Msg type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 3

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->e()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->b(I)V

    const-string v0, "MicroMsg.NetSceneThrowBottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd errtype:"

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

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    packed-switch p3, :pswitch_data_0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->f()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/modelbottle/BottleLogic;->b(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->e()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(I)V

    :cond_0
    :pswitch_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    const-string v0, "MicroMsg.NetSceneThrowBottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd errtype:"

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

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStartPos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThrowCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPickCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDistance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.NetSceneThrowBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBottleList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    const-string v4, "MicroMsg.NetSceneThrowBottle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bott id:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b()I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0, v7}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a(I)I

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->f:I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f()I

    move-result v0

    if-lt v2, v0, :cond_6

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->f()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->b(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->e()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(I)V

    invoke-direct {p0, v8}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a(I)I

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v8, v6, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x38
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 3

    const-string v0, "MicroMsg.NetSceneThrowBottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecurityCheckError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMThrowBottle$Resp;->h()I

    move-result v0

    return v0
.end method

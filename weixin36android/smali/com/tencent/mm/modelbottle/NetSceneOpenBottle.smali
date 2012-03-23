.class public Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Lcom/tencent/mm/modelvoice/AmrFileOperator;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    iput v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->g:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle$MMReqRespOpenBottle;

    invoke-direct {v0}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle$MMReqRespOpenBottle;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->c:Lcom/tencent/mm/network/IReqResp;

    iput-object p1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->d:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    return-void
.end method

.method private g()I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMOpenBottle$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v1}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;

    new-instance v2, Lcom/tencent/mm/modelbottle/BottleInfo;

    invoke-direct {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelbottle/BottleInfo;->c(I)V

    invoke-virtual {v2, v5}, Lcom/tencent/mm/modelbottle/BottleInfo;->a(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelbottle/BottleInfo;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelbottle/BottleInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelbottle/BottleInfo;->a(J)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->d(I)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->H()Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelbottle/BottleInfoStorage;->a(Lcom/tencent/mm/modelbottle/BottleInfo;)Z

    return v5

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbottle/BottleInfo;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 4

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMOpenBottle$Req;

    iget v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->b(I)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "MicroMsg.NetSceneOpenBottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene Error Msg type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 3

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMOpenBottle$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->c()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->e()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->d()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->d()I

    move-result v0

    if-gt v1, v0, :cond_3

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->b(I)V

    const-string v0, "MicroMsg.NetSceneOpenBottle"

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

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneOpenBottle"

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

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMOpenBottle$Req;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;

    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->g()I

    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v2, v8}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->c()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->c(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    const-string v0, "MicroMsg.NetSceneOpenBottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/modelvoice/AmrFileOperator;

    iget-object v3, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelvoice/AmrFileOperator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->g:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    iput v8, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->f:I

    :cond_4
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->e()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    const-string v0, "MicroMsg.NetSceneOpenBottle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd tot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v6, v7, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->f:I

    if-eq v2, v3, :cond_6

    const-string v0, "MicroMsg.NetSceneOpenBottle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v6, v7, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->g:Lcom/tencent/mm/modelvoice/AmrFileOperator;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a([BII)I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v4

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_7

    const-string v0, "MicroMsg.NetSceneOpenBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->f()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " writeRet:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v6, v7, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    iput v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->f:I

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->e()I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->f:I

    if-le v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v6, v7, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->g()I

    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const-string v3, "bottle"

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->b()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5, v8}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v2, v8}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMOpenBottle$Req;->c()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->c(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    const-string v0, "MicroMsg.NetSceneOpenBottle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMOpenBottle$Resp;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

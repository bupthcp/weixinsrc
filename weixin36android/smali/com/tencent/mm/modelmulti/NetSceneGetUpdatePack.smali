.class public Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

.field private final d:Lcom/tencent/mm/network/IReqResp;

.field private e:I

.field private f:I

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput-object p4, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->c:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    iput-object p2, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->e:I

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->f:I

    const-string v0, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneGetUpdatePack : temp path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack$MMReqRespGetUpdatePack;

    invoke-direct {v0}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack$MMReqRespGetUpdatePack;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->d:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetUpdatePack$Req;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Req;->a(I)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/storage/ConstantsStorage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 2

    iput-object p2, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetUpdatePack$Req;

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Req;->c(I)V

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Req;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->e:I

    if-ltz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v5, -0x1

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd : file dir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/storage/ConstantsStorage;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd : total len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd : start pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd : data len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->f()[B

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "MicroMsg.NetSceneGetUpdatePack"

    const-string v1, "data is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->f()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v2

    if-eq v1, v2, :cond_5

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data len not match with data buf, dataLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data buf len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->f()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v2

    if-le v1, v2, :cond_7

    :cond_6
    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v1

    if-gtz v1, :cond_8

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalLen is invalid: totalLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/tencent/mm/storage/ConstantsStorage;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g:Ljava/lang/String;

    const-string v3, ".temp"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->f()[B

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->f:I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->e:I

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->c:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v3

    invoke-interface {v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->e()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUpdatePack$Resp;->b()I

    move-result v0

    if-lt v1, v0, :cond_9

    sget-object v0, Lcom/tencent/mm/storage/ConstantsStorage;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v6, v6, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/storage/ConstantsStorage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

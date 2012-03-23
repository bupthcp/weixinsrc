.class public Lcom/tencent/mm/modelshake/NetSceneShakeMatch;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static synthetic a(Lcom/tencent/mm/modelshake/NetSceneShakeMatch;)Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelshake/NetSceneShakeMatch;)Lcom/tencent/mm/modelbase/IOnSceneEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 4

    const-string v0, "MicroMsg.NetSceneShakeMatch"

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

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeMatch$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeMatch$Resp;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeMatch$Resp;->b()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->g:I

    const-string v1, "MicroMsg.NetSceneShakeMatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->e:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeMatch$Resp;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->d:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;-><init>(Lcom/tencent/mm/modelshake/NetSceneShakeMatch;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.NetSceneShakeMatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd callback to UI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method protected final c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.class public abstract Lcom/tencent/mm/modelbase/NetSceneBase;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field protected b:J

.field private c:Lcom/tencent/mm/network/IDispatcher;

.field private d:I

.field private e:I

.field private f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    const/16 v0, -0x63

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
.end method

.method protected final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->b:J

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->c:Lcom/tencent/mm/network/IDispatcher;

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->c()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    const-string v0, "MicroMsg.NetSceneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initilized security limit count to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->c()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$1;->a:[I

    invoke-virtual {p0, p2}, Lcom/tencent/mm/modelbase/NetSceneBase;->a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "invalid security verification status"

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->h_()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.NetSceneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch failed, scene limited for security, current limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V

    iput v3, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    :goto_1
    return v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene security verification not passed, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/tencent/mm/network/IReqResp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CHECK NOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    const-string v0, "MicroMsg.NetSceneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scene security verification not passed, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/tencent/mm/network/IReqResp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V

    iput v3, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    instance-of v0, p2, Lcom/tencent/mm/modelbase/MMReqRespBase;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/tencent/mm/modelbase/MMReqRespBase;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)Lcom/tencent/mm/network/IReqResp;

    :cond_3
    new-instance v0, Lcom/tencent/mm/modelbase/RemoteReqResp;

    invoke-direct {v0, p2}, Lcom/tencent/mm/modelbase/RemoteReqResp;-><init>(Lcom/tencent/mm/network/IReqResp;)V

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-virtual {v1}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->a()V

    :cond_4
    new-instance v1, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-direct {v1, p2, p3}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;-><init>(Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)V

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-interface {p1, v0, v1}, Lcom/tencent/mm/network/IDispatcher;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->a()V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->c:Lcom/tencent/mm/network/IDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->c:Lcom/tencent/mm/network/IDispatcher;

    iget v1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/IDispatcher;->a(I)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/tencent/mm/modelbase/NetSceneBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()I
.end method

.method protected final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->d:I

    return-void
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected g_()J
    .locals 2

    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method protected h_()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->e:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k_()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->g:Ljava/util/List;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->a:I

    return v0
.end method

.method protected final m()Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneBase;->c:Lcom/tencent/mm/network/IDispatcher;

    return-object v0
.end method

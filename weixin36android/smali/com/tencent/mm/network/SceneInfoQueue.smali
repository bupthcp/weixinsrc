.class Lcom/tencent/mm/network/SceneInfoQueue;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    iput-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->b()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->g()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/network/SceneInfoQueue;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.AutoAuth.SceneInfoQueue"

    const-string v2, "already authing, re-enter failed"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->g()V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    const/16 v3, 0x64

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    const-string v1, "MicroMsg.AutoAuth.SceneInfoQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inQueue: netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    new-instance v2, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    invoke-direct {v2, p1, p2}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;-><init>(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)V

    aput-object v2, v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/tencent/mm/network/GYNetContext;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    iget-object v0, v0, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/tencent/mm/network/IAccInfo;->g()I

    move-result v0

    if-eqz v0, :cond_4

    div-int/lit8 v3, v0, 0xa

    rem-int/lit8 v3, v3, 0x64

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the context queue is full in autoAuth with uin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :cond_4
    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->g()V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/IReqResp_AIDL;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v1}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v3}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    const-string v0, "MicroMsg.AutoAuth.SceneInfoQueue"

    const-string v2, "already authing, re-enter failed"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "MicroMsg.AutoAuth.SceneInfoQueue"

    const-string v2, "[dumping queue]"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    const/16 v0, 0x64

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MicroMsg.AutoAuth.SceneInfoQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "si.threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v5}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", si.type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v5}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", si.auto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "MicroMsg.AutoAuth.SceneInfoQueue"

    const-string v1, "[dumping done]"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.AutoAuth.SceneInfoQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outQueue: netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v2}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue;->a:[Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v0}, Lcom/tencent/mm/network/INetContext;->d()V

    :cond_0
    return-void
.end method

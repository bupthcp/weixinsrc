.class public Lcom/tencent/mm/network/MMAutoAuth;
.super Lcom/tencent/mm/network/IDispatcher_AIDL$Stub;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEndNetwork;
.implements Lcom/tencent/mm/network/IOnGYNetNotify;


# instance fields
.field private a:Lcom/tencent/mm/network/AccInfo;

.field private final b:Lcom/tencent/mm/network/GYNet;

.field private final c:Lcom/tencent/mm/network/SceneInfoQueue;

.field private d:Lcom/tencent/mm/network/IOnGYNetNotify;

.field private e:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/network/IDispatcher_AIDL$Stub;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/network/GYNet;

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/network/GYNet;-><init>(Lcom/tencent/mm/network/IOnGYNetNotify;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    new-instance v0, Lcom/tencent/mm/network/AccInfo;

    invoke-direct {v0}, Lcom/tencent/mm/network/AccInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    new-instance v0, Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-direct {v0}, Lcom/tencent/mm/network/SceneInfoQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    new-instance v0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;-><init>(Lcom/tencent/mm/network/MMAutoAuth;)V

    iput-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->e:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I
    .locals 8

    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v4, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending remote request, network.active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-boolean v6, v6, Lcom/tencent/mm/network/GYNet;->a:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v4

    iget-boolean v4, v4, Lcom/tencent/mm/network/NetService;->a:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-boolean v4, v4, Lcom/tencent/mm/network/GYNet;->a:Z

    if-eqz v4, :cond_0

    const-string v0, "MicroMsg.AutoAuth"

    const-string v3, "network not available"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "send failed, network not available"

    const/4 v6, 0x0

    move-object v0, p2

    move v3, v1

    move-object v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v4

    if-eq v4, v2, :cond_9

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    if-eq v2, v3, :cond_a

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    move v0, v3

    :cond_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->a(I)V

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/network/AccInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/network/AccInfo;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->e()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v2, p1, p0, v3}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v1

    if-gez v1, :cond_b

    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "nonauth: net.send err"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/network/AccInfo;

    invoke-direct {v0}, Lcom/tencent/mm/network/AccInfo;-><init>()V

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/tencent/mm/network/IAccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v3, p1, p0, v0}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v1

    if-gez v1, :cond_5

    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "register: net.send err"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register: netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/network/AccInfo;

    invoke-direct {v1}, Lcom/tencent/mm/network/AccInfo;-><init>()V

    invoke-interface {v0}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/mm/network/IAccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v3, p1, p0, v1}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v1

    if-gez v1, :cond_6

    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "auth: net.send err"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth: netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    :goto_3
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v2, p1, p0, v3}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v1

    if-gez v1, :cond_8

    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "direct: net.send err"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v3, v0

    goto :goto_3

    :cond_8
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "direct: netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v2, v0

    goto/16 :goto_1

    :cond_a
    move v2, v0

    goto/16 :goto_2

    :cond_b
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nonauth: netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v4, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v2, p1, p0, v4}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v0

    if-gez v0, :cond_d

    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "nonauth: in queue err"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/network/SceneInfoQueue;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->e:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

    invoke-interface {p1, v1, v2, v7, v7}, Lcom/tencent/mm/network/IReqResp_AIDL;->a(Lcom/tencent/mm/network/IAccInfo_AIDL;Lcom/tencent/mm/network/IOnAutoAuth_AIDL;II)V

    :cond_e
    move v1, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0xa -> :sswitch_2
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/mm/network/MMAutoAuth;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 8

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "clear block queue err"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x64

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "clear blocked err: auto auth"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v0}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v0

    const-string v1, "MicroMsg.AutoAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear blocked err: retry netid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    iget-object v7, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/network/MMAutoAuth$5;

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/network/MMAutoAuth$5;-><init>(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;IIILjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/MMAutoAuth;I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: netid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/GYNet;->b(Lcom/tencent/mm/network/INetContext;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/IReqResp_AIDL;II)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account info updated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0, p1, p0, v1}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/tencent/mm/network/INetContext;->a(II)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "autoauth: net.send err"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/network/MMAutoAuth;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/network/MMAutoAuth;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v0}, Lcom/tencent/mm/network/GYNet;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0}, Lcom/tencent/mm/network/SceneInfoQueue;->a()V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 6

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "clear block queue ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/network/AccInfo;->h()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear blocked ok: auto auth, netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v2}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->c()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->c()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MicroMsg.AutoAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip different uin, acc.uin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", netid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rr.uin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rr.type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    iget-object v3, v1, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    new-instance v4, Lcom/tencent/mm/network/MMAutoAuth$4;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/tencent/mm/network/MMAutoAuth$4;-><init>(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;ILcom/tencent/mm/network/IReqResp_AIDL;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_2
    const-string v3, "MicroMsg.AutoAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear blocked ok: retry netid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->a(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/network/AccInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-object v3, v1, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;

    iget-object v1, v1, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v1}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "MicroMsg.AutoAuth"

    const-string v2, "post-auth net.send err"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    goto/16 :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/mm/network/MMAutoAuth$3;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/mm/network/MMAutoAuth$3;-><init>(Lcom/tencent/mm/network/MMAutoAuth;Ljava/lang/Integer;Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/SyncTask;->a(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic a()Lcom/tencent/mm/network/IAccInfo_AIDL;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/network/MMAutoAuth$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/network/MMAutoAuth$1;-><init>(Lcom/tencent/mm/network/MMAutoAuth;I)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/SyncTask;->a(Landroid/os/Handler;)Ljava/lang/Object;

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V
    .locals 8

    if-gez p1, :cond_1

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "send failed locally"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->c()Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;

    move-result-object v3

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    if-nez p3, :cond_2

    if-nez p2, :cond_2

    if-eqz p6, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0, p6}, Lcom/tencent/mm/network/AccInfo;->a([B)V

    :cond_2
    :goto_1
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, p5}, Lcom/tencent/mm/network/SceneInfoQueue;->a(Lcom/tencent/mm/network/IReqResp_AIDL;)I

    move-result v1

    if-gez v1, :cond_7

    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context has been dropped, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0}, Lcom/tencent/mm/network/SceneInfoQueue;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p6, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0, p6}, Lcom/tencent/mm/network/AccInfo;->a([B)V

    goto :goto_1

    :cond_3
    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid cookie, type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez p3, :cond_2

    if-nez p2, :cond_2

    if-eqz p6, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0, p6}, Lcom/tencent/mm/network/AccInfo;->a([B)V

    goto :goto_1

    :cond_5
    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid cookie, type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid cookie, type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->c(I)Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    move-result-object v2

    iget-object v4, v2, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v4}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v2

    if-eq v2, p1, :cond_8

    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incorrect rr and threadId: ctx.getThreadId()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CHECK NOW"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_9

    invoke-static {}, Lcom/tencent/mm/test/Test;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 p2, 0x4

    const/16 p3, -0xd

    :cond_9
    const/4 v2, 0x4

    if-ne p2, v2, :cond_10

    const/16 v2, -0xd

    if-ne p3, v2, :cond_10

    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.session timeout, netid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    const-string v5, ""

    iget-object v6, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/tencent/mm/network/SceneInfoQueue;->a(I)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->d(I)V

    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoauth: already authing, blocked netid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_0

    if-eqz p2, :cond_11

    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.end: notauth::err: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->b()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " NetId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ErrType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ErrCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ErrMsg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v3, p3

    move v2, p2

    :goto_4
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v5, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    invoke-interface {v4}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v5

    move-object v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "MicroMsg.AutoAuth"

    const-string v5, "net.end: auth done"

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->b()I

    move-result v2

    if-nez v2, :cond_a

    if-nez p2, :cond_a

    if-eqz p3, :cond_b

    :cond_a
    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.end: auth err: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " netid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errmsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p3, :sswitch_data_2

    :goto_5
    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/mm/network/MMAutoAuth;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->j()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v7, v2}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->e()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_4
    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v2}, Lcom/tencent/mm/network/GYNet;->a()V

    goto :goto_5

    :cond_b
    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.end: auth ok: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->j()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v7, v2}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->e()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;I)V

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {p5, v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->b(Lcom/tencent/mm/network/IAccInfo_AIDL;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-virtual {v0, p6}, Lcom/tencent/mm/network/AccInfo;->a([B)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->b(I)V

    invoke-direct {p0}, Lcom/tencent/mm/network/MMAutoAuth;->h()V

    goto/16 :goto_0

    :cond_c
    move v3, p3

    move v2, p2

    goto/16 :goto_4

    :sswitch_5
    const-string v2, "MicroMsg.AutoAuth"

    const-string v5, "net.end: register done"

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->b()I

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_d

    if-eqz p3, :cond_e

    :cond_d
    const-string v2, "MicroMsg.AutoAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net.end: reg err: type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " NetId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " err="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " errmsg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v3, p3

    move v2, p2

    goto/16 :goto_4

    :cond_e
    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.end: reg ok: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " netid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->j()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v7, v2}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->e()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/tencent/mm/network/AccInfo;->a(Ljava/lang/String;I)V

    move v3, p3

    move v2, p2

    goto/16 :goto_4

    :sswitch_6
    move v3, p3

    move v2, p2

    goto/16 :goto_4

    :cond_f
    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->c:Lcom/tencent/mm/network/SceneInfoQueue;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/network/SceneInfoQueue;->d(I)V

    const-string v2, "MicroMsg.AutoAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoauth: now authing, blocked netid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth;->e:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

    invoke-interface {v4}, Lcom/tencent/mm/network/INetContext;->f()I

    move-result v6

    invoke-interface {v4}, Lcom/tencent/mm/network/INetContext;->e()I

    move-result v7

    invoke-interface {p5, v2, v5, v6, v7}, Lcom/tencent/mm/network/IReqResp_AIDL;->a(Lcom/tencent/mm/network/IAccInfo_AIDL;Lcom/tencent/mm/network/IOnAutoAuth_AIDL;II)V

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const-string v2, "MicroMsg.AutoAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net.end: notauth::ok: type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " netid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move v3, p3

    move v2, p2

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_5
        0xa -> :sswitch_6
        0x17 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x64 -> :sswitch_4
        -0x11 -> :sswitch_3
        -0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/mm/network/IOnGYNetNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth;->d:Lcom/tencent/mm/network/IOnGYNetNotify;

    return-void
.end method

.method public final a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/NetService;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/network/GYNet;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/GYNet;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[I[III)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    invoke-static {p1}, Lcom/tencent/mm/protocal/MMBuiltInIP;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    invoke-static {p2}, Lcom/tencent/mm/protocal/MMBuiltInIP;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/network/GYNet;->a(Ljava/util/List;Ljava/util/List;[I[III)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "0,112.64.200.240,80|0,180.153.82.27,80|0,117.135.130.177,80"

    goto :goto_0

    :cond_2
    const-string p2, "0,112.64.200.218,80|0,180.153.82.30,80|0,117.135.130.187,80"

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/GYNet;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;I[B)Z
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    iget-boolean v2, v2, Lcom/tencent/mm/network/GYNet;->a:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/text/format/Time;->hour:I

    iget v1, v1, Landroid/text/format/Time;->minute:I

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/network/NetService;->a(IILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore notify during deactive time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->d:Lcom/tencent/mm/network/IOnGYNetNotify;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->d:Lcom/tencent/mm/network/IOnGYNetNotify;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore notify type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/tencent/mm/network/MMAutoAuth$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/MMAutoAuth$2;-><init>(Lcom/tencent/mm/network/MMAutoAuth;)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/SyncTask;->a(Landroid/os/Handler;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v0}, Lcom/tencent/mm/network/GYNet;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/GYNet;->c(Z)V

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->b:Lcom/tencent/mm/network/GYNet;

    invoke-virtual {v0}, Lcom/tencent/mm/network/GYNet;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/tencent/mm/network/INetworkEvent_AIDL;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/network/MMAutoAuth;->b()V

    invoke-super {p0}, Lcom/tencent/mm/network/IDispatcher_AIDL$Stub;->finalize()V

    return-void
.end method

.method public final g()Lcom/tencent/mm/network/AccInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth;->a:Lcom/tencent/mm/network/AccInfo;

    return-object v0
.end method

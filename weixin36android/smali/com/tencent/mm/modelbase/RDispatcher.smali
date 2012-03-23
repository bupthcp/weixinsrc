.class public Lcom/tencent/mm/modelbase/RDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/IDispatcher;


# instance fields
.field private a:Lcom/tencent/mm/network/IDispatcher_AIDL;

.field private b:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/IDispatcher_AIDL;Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    iput-object p2, p0, Lcom/tencent/mm/modelbase/RDispatcher;->b:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    instance-of v0, p1, Landroid/os/RemoteException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->b:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->b:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;

    invoke-interface {v0}, Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "remote dispatcher lost, send failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher_AIDL;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "query remote network server ip failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel remote rr failed, netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[I[III)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a(Ljava/lang/String;Ljava/lang/String;[I[III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "set built-in ip failed, core service down"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "change active status failed, core service down"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher_AIDL;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "clear dns cache failed, core service down"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher_AIDL;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "reset failed, core service down"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final d()Lcom/tencent/mm/modelbase/LocalAccInfo;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/mm/modelbase/LocalAccInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v1}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a()Lcom/tencent/mm/network/IAccInfo_AIDL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelbase/LocalAccInfo;-><init>(Lcom/tencent/mm/network/IAccInfo_AIDL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/tencent/mm/network/IAccInfo;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/mm/modelbase/RAccInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v1}, Lcom/tencent/mm/network/IDispatcher_AIDL;->a()Lcom/tencent/mm/network/IAccInfo_AIDL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelbase/RAccInfo;-><init>(Lcom/tencent/mm/network/IAccInfo_AIDL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher_AIDL;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.IDispatcher"

    const-string v2, "core service down, guess network stable"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g()Lcom/tencent/mm/network/INetworkEvent_AIDL;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RDispatcher;->a:Lcom/tencent/mm/network/IDispatcher_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher_AIDL;->f()Lcom/tencent/mm/network/INetworkEvent_AIDL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/RDispatcher;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

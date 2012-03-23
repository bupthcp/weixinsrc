.class public Lcom/tencent/mm/modelbase/RemoteReqResp;
.super Lcom/tencent/mm/network/IReqResp_AIDL$Stub;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

.field private d:Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/IReqResp;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    new-instance v0, Lcom/tencent/mm/modelbase/RemoteReq;

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/RemoteReq;-><init>(Lcom/tencent/mm/protocal/MMBase$Req;I)V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->c:Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    new-instance v0, Lcom/tencent/mm/modelbase/RemoteResp;

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/RemoteResp;-><init>(Lcom/tencent/mm/protocal/MMBase$Resp;I)V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->d:Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/network/IReqResp;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    new-instance v0, Lcom/tencent/mm/modelbase/RemoteReq;

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/RemoteReq;-><init>(Lcom/tencent/mm/protocal/MMBase$Req;I)V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->c:Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    new-instance v0, Lcom/tencent/mm/modelbase/RemoteResp;

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/RemoteResp;-><init>(Lcom/tencent/mm/protocal/MMBase$Resp;I)V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->d:Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;

    iput-object p2, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelbase/RemoteReqResp;)Lcom/tencent/mm/network/IReqResp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/tencent/mm/network/IAccInfo_AIDL;)Lcom/tencent/mm/network/IReqResp_AIDL;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    new-instance v1, Lcom/tencent/mm/modelbase/RAccInfo;

    invoke-direct {v1, p1}, Lcom/tencent/mm/modelbase/RAccInfo;-><init>(Lcom/tencent/mm/network/IAccInfo_AIDL;)V

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/IReqResp;->a(Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/IReqResp;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelbase/RemoteReqResp;

    iget-object v2, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->a:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/modelbase/RemoteReqResp;-><init>(Lcom/tencent/mm/network/IReqResp;Landroid/os/Handler;)V

    return-object v1
.end method

.method public final a(Lcom/tencent/mm/network/IAccInfo_AIDL;Lcom/tencent/mm/network/IOnAutoAuth_AIDL;II)V
    .locals 7

    iget-object v6, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelbase/RemoteReqResp$2;-><init>(Lcom/tencent/mm/modelbase/RemoteReqResp;Lcom/tencent/mm/network/IAccInfo_AIDL;Lcom/tencent/mm/network/IOnAutoAuth_AIDL;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/IReqResp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/tencent/mm/network/IAccInfo_AIDL;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/modelbase/RemoteReqResp$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelbase/RemoteReqResp$1;-><init>(Lcom/tencent/mm/modelbase/RemoteReqResp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->d:Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;

    return-object v0
.end method

.method public final d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->c:Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp;->b:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->e()I

    move-result v0

    return v0
.end method

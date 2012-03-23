.class public Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;
.super Lcom/tencent/mm/network/IOnGYNetEnd_AIDL$Stub;


# instance fields
.field private a:Lcom/tencent/mm/network/IReqResp;

.field private b:Lcom/tencent/mm/network/IOnGYNetEnd;

.field private c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/network/IOnGYNetEnd_AIDL$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->d:Z

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->a:Lcom/tencent/mm/network/IReqResp;

    iput-object p2, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->b:Lcom/tencent/mm/network/IOnGYNetEnd;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;)Lcom/tencent/mm/network/IReqResp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->a:Lcom/tencent/mm/network/IReqResp;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;)Lcom/tencent/mm/network/IOnGYNetEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->b:Lcom/tencent/mm/network/IOnGYNetEnd;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->d:Z

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V
    .locals 8

    iget-boolean v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->c:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;-><init>(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;IIILjava/lang/String;[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

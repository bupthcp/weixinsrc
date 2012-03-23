.class Lcom/tencent/mm/network/GYNetContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/INetContext;
.implements Lcom/tencent/mm/network/connpool/IRecord;


# instance fields
.field a:Lcom/tencent/mm/network/IAccInfo;

.field b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

.field c:Lcom/tencent/mm/network/IReqResp_AIDL;

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/network/GYNetContext;->d:Z

    iput v0, p0, Lcom/tencent/mm/network/GYNetContext;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/network/GYNetContext;->h:I

    iput p1, p0, Lcom/tencent/mm/network/GYNetContext;->f:I

    iput p2, p0, Lcom/tencent/mm/network/GYNetContext;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/GYNetContext;->h:I

    return v0
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/network/GYNetContext;->f:I

    iput p2, p0, Lcom/tencent/mm/network/GYNetContext;->g:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/IReqResp_AIDL;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/GYNetContext;->e:I

    return v0
.end method

.method public final c()Lcom/tencent/mm/network/IReqResp_AIDL;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/network/GYNetContext;->e:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/GYNetContext;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/GYNetContext;->f:I

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/network/GYNetContext;->d:Z

    return-void
.end method

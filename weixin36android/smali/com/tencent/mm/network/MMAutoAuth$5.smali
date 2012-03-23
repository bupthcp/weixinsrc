.class Lcom/tencent/mm/network/MMAutoAuth$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:I

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lcom/tencent/mm/network/MMAutoAuth;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->f:Lcom/tencent/mm/network/MMAutoAuth;

    iput-object p2, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    iput p3, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->b:I

    iput p4, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->c:I

    iput p5, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->d:I

    iput-object p6, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    iget-object v0, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    iget v1, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->b:I

    iget v2, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->c:I

    iget v3, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->d:I

    iget-object v4, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth$5;->a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    iget-object v5, v5, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v5}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

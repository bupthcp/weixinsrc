.class Lcom/tencent/mm/network/MMAutoAuth$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/mm/network/IReqResp_AIDL;

.field private synthetic d:Lcom/tencent/mm/network/MMAutoAuth;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;ILcom/tencent/mm/network/IReqResp_AIDL;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->d:Lcom/tencent/mm/network/MMAutoAuth;

    iput-object p2, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    iput p3, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->b:I

    iput-object p4, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->a:Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;

    iget-object v0, v0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    iget v1, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->b:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    const-string v4, ""

    iget-object v5, p0, Lcom/tencent/mm/network/MMAutoAuth$4;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

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

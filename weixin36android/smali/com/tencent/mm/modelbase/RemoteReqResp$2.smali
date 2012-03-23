.class Lcom/tencent/mm/modelbase/RemoteReqResp$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/IAccInfo_AIDL;

.field private synthetic b:Lcom/tencent/mm/network/IOnAutoAuth_AIDL;

.field private synthetic c:I

.field private synthetic d:I

.field private synthetic e:Lcom/tencent/mm/modelbase/RemoteReqResp;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/RemoteReqResp;Lcom/tencent/mm/network/IAccInfo_AIDL;Lcom/tencent/mm/network/IOnAutoAuth_AIDL;II)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->e:Lcom/tencent/mm/modelbase/RemoteReqResp;

    iput-object p2, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    iput-object p3, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->b:Lcom/tencent/mm/network/IOnAutoAuth_AIDL;

    iput p4, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->c:I

    iput p5, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->e:Lcom/tencent/mm/modelbase/RemoteReqResp;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/RemoteReqResp;->a(Lcom/tencent/mm/modelbase/RemoteReqResp;)Lcom/tencent/mm/network/IReqResp;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelbase/RAccInfo;

    iget-object v2, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelbase/RAccInfo;-><init>(Lcom/tencent/mm/network/IAccInfo_AIDL;)V

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/IReqResp;->a(Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/IReqResp;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelbase/RemoteReqResp;

    iget-object v2, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->e:Lcom/tencent/mm/modelbase/RemoteReqResp;

    iget-object v2, v2, Lcom/tencent/mm/modelbase/RemoteReqResp;->a:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/modelbase/RemoteReqResp;-><init>(Lcom/tencent/mm/network/IReqResp;Landroid/os/Handler;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->b:Lcom/tencent/mm/network/IOnAutoAuth_AIDL;

    iget v2, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->c:I

    iget v3, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$2;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/network/IOnAutoAuth_AIDL;->a(Lcom/tencent/mm/network/IReqResp_AIDL;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

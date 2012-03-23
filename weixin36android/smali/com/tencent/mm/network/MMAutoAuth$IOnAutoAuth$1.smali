.class Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;
.super Lcom/tencent/mm/platformtools/SyncTask;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/IReqResp_AIDL;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;Lcom/tencent/mm/network/IReqResp_AIDL;II)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->d:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

    iput-object p2, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->a:Lcom/tencent/mm/network/IReqResp_AIDL;

    iput p3, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->b:I

    iput p4, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->c:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/platformtools/SyncTask;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->d:Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;

    invoke-static {v0}, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;->a(Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;)Lcom/tencent/mm/network/MMAutoAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->a:Lcom/tencent/mm/network/IReqResp_AIDL;

    iget v2, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->b:I

    iget v3, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/network/MMAutoAuth;->a(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/IReqResp_AIDL;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/tencent/mm/network/MMAutoAuth$3;
.super Lcom/tencent/mm/platformtools/SyncTask;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/IReqResp_AIDL;

.field private synthetic b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

.field private synthetic c:Lcom/tencent/mm/network/MMAutoAuth;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/MMAutoAuth;Ljava/lang/Integer;Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->c:Lcom/tencent/mm/network/MMAutoAuth;

    iput-object p3, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->a:Lcom/tencent/mm/network/IReqResp_AIDL;

    iput-object p4, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/platformtools/SyncTask;-><init>(JLjava/lang/Object;)V

    return-void
.end method

.method private b()Ljava/lang/Integer;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->c:Lcom/tencent/mm/network/MMAutoAuth;

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->a:Lcom/tencent/mm/network/IReqResp_AIDL;

    iget-object v2, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/network/MMAutoAuth;->a(Lcom/tencent/mm/network/MMAutoAuth;Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$3;->c:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-static {v0}, Lcom/tencent/mm/network/MMAutoAuth;->b(Lcom/tencent/mm/network/MMAutoAuth;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/network/MMAutoAuth$3;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

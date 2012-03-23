.class Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;
.super Lcom/tencent/mm/network/IOnAutoAuth_AIDL$Stub;


# instance fields
.field private a:Lcom/tencent/mm/network/MMAutoAuth;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/MMAutoAuth;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/network/IOnAutoAuth_AIDL$Stub;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;->a:Lcom/tencent/mm/network/MMAutoAuth;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;)Lcom/tencent/mm/network/MMAutoAuth;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;->a:Lcom/tencent/mm/network/MMAutoAuth;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IReqResp_AIDL;II)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth$1;-><init>(Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;Lcom/tencent/mm/network/IReqResp_AIDL;II)V

    iget-object v1, p0, Lcom/tencent/mm/network/MMAutoAuth$IOnAutoAuth;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-static {v1}, Lcom/tencent/mm/network/MMAutoAuth;->a(Lcom/tencent/mm/network/MMAutoAuth;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/SyncTask;->a(Landroid/os/Handler;)Ljava/lang/Object;

    return-void
.end method

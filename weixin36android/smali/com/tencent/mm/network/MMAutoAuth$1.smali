.class Lcom/tencent/mm/network/MMAutoAuth$1;
.super Lcom/tencent/mm/platformtools/SyncTask;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/mm/network/MMAutoAuth;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/MMAutoAuth;I)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$1;->b:Lcom/tencent/mm/network/MMAutoAuth;

    iput p2, p0, Lcom/tencent/mm/network/MMAutoAuth$1;->a:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/platformtools/SyncTask;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$1;->b:Lcom/tencent/mm/network/MMAutoAuth;

    iget v1, p0, Lcom/tencent/mm/network/MMAutoAuth$1;->a:I

    invoke-static {v0, v1}, Lcom/tencent/mm/network/MMAutoAuth;->a(Lcom/tencent/mm/network/MMAutoAuth;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

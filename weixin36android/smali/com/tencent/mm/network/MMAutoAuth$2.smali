.class Lcom/tencent/mm/network/MMAutoAuth$2;
.super Lcom/tencent/mm/platformtools/SyncTask;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/MMAutoAuth;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/MMAutoAuth;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/mm/network/MMAutoAuth$2;->a:Lcom/tencent/mm/network/MMAutoAuth;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/platformtools/SyncTask;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/MMAutoAuth$2;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-static {v0}, Lcom/tencent/mm/network/MMAutoAuth;->b(Lcom/tencent/mm/network/MMAutoAuth;)V

    const/4 v0, 0x0

    return-object v0
.end method

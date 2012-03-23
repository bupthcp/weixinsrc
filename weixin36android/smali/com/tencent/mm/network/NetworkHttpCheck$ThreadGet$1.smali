.class Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/NetworkHttpCheck;

.field private synthetic b:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;Lcom/tencent/mm/network/NetworkHttpCheck;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;->b:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    iput-object p2, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;->b:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    iget-object v0, v0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->a(Lcom/tencent/mm/network/NetworkHttpCheck;)Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;->b:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    iget-object v0, v0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->a(Lcom/tencent/mm/network/NetworkHttpCheck;)Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;->b:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    invoke-static {v1}, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a(Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;->b:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    iget-object v0, v0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->b(Lcom/tencent/mm/network/NetworkHttpCheck;)Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    goto :goto_0
.end method

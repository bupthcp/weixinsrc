.class Lcom/tencent/mm/ui/MainUI$INetworkChange;
.super Lcom/tencent/mm/network/IOnNetworkChange_AIDL$Stub;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainUI$INetworkChange;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-direct {p0}, Lcom/tencent/mm/network/IOnNetworkChange_AIDL$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$INetworkChange;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/MainUI;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$INetworkChange;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/MainUI;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$INetworkChange;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/MainUI;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$INetworkChange;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/MainUI;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$INetworkChange;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/MainUI;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

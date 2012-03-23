.class Lcom/tencent/mm/network/NetworkEvent$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/NetworkEvent;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/NetworkEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/NetworkEvent$1;->a:Lcom/tencent/mm/network/NetworkEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent$1;->a:Lcom/tencent/mm/network/NetworkEvent;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkEvent;->a(Lcom/tencent/mm/network/NetworkEvent;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent$1;->a:Lcom/tencent/mm/network/NetworkEvent;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkEvent;->a(Lcom/tencent/mm/network/NetworkEvent;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/IOnNetworkChange_AIDL;

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/network/NetworkEvent$1;->a:Lcom/tencent/mm/network/NetworkEvent;

    invoke-static {v2}, Lcom/tencent/mm/network/NetworkEvent;->b(Lcom/tencent/mm/network/NetworkEvent;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/tencent/mm/network/IOnNetworkChange_AIDL;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent$1;->a:Lcom/tencent/mm/network/NetworkEvent;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkEvent;->a(Lcom/tencent/mm/network/NetworkEvent;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

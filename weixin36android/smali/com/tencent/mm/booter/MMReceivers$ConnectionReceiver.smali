.class public Lcom/tencent/mm/booter/MMReceivers$ConnectionReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "MicroMsg.ConnectionReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive threadID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->f()Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_4

    :cond_1
    const-string v0, "MicroMsg.ConnectionReceiver"

    const-string v1, "NetworkAvailable: false"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->f()Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string v0, "none"

    move-object v1, v0

    :goto_1
    if-nez v2, :cond_3

    const-string v0, "none"

    :goto_2
    invoke-interface {v3, v4, v1, v0}, Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "MicroMsg.ConnectionReceiver"

    const-string v1, "NetworkAvailable: true"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->f()Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

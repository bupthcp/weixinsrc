.class Lcom/tencent/mm/platformtools/MMWifiLock$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/platformtools/MMWifiLock;


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWifiLock$1;->a:Lcom/tencent/mm/platformtools/MMWifiLock;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMWifiLock;->a(Lcom/tencent/mm/platformtools/MMWifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/tencent/mm/platformtools/MMWifiLock;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static synthetic a(Lcom/tencent/mm/platformtools/MMWifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWifiLock;->a:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWifiLock;->a:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWifiLock;->a:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWifiLock;->a:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/MMWifiLock;->a:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_1
    return-void
.end method

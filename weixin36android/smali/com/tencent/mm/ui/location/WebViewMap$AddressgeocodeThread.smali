.class Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/tencent/mm/ui/location/WebViewMap;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/location/WebViewMap;DDLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->d:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide p2, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->a:D

    iput-wide p4, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->b:D

    iput-object p6, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->a:D

    iget-wide v2, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->b:D

    iget-object v4, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/location/MapUtil;->a(DDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->d:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->n(Lcom/tencent/mm/ui/location/WebViewMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->a:D

    iget-wide v2, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->b:D

    iget-object v4, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/location/MapUtil;->a(DDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->d:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->o(Lcom/tencent/mm/ui/location/WebViewMap;)Z

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;->d:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->p(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
